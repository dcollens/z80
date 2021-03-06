; void lcd_putc(uint8_t ch)
; - write the single character in "ch" to LCD
#local
; For debugging:
VT100_DUMP_TO_SERIAL    equ 0

; For state machine:
VT100_STATE_NORMAL      equ 0 ; not parsing VT100 sequence
VT100_STATE_EXP_BRACKET equ 1 ; got ESC, waiting for [
VT100_STATE_EXP_START   equ 2 ; start of a parameter (digit) or command (letter) or semicolon
VT100_STATE_EXP_REST    equ 3 ; rest of a parameter (digit) or command (letter) or semicolon

lcd_putc::
    ld	    a, l		; A := ch
    cp	    CR			; Carriage return?
    jp	    z, lcd_cr
    cp	    LF			; Line feed?
    jp	    z, lcd_lf
    cp	    ASC_BS		; Backspace?
    jp	    z, lcd_bs
    cp	    ESC     		; Escape?
    jr	    nz, notESC
    ld      a, VT100_STATE_EXP_BRACKET
    ld      (vt100_state), a
    ret
notESC:
    ; See if we're doing VT100 parsing.
    ld      a, (vt100_state)
    cp      VT100_STATE_EXP_BRACKET
    jr      z, expecting_bracket
    cp      VT100_STATE_EXP_START
    jr      z, expecting_start_of_parameter
    cp      VT100_STATE_EXP_REST
    jr      z, expecting_rest_of_parameter

    ; Normal write; character is in L.
    M_out   (PORT_LCDCMD), LCDREG_MRWDP
wait_fifo_room:
    ; wait until memory FIFO is non-full
    in	    a, (PORT_LCDCMD)
    and	    LCDSTAT_WRFULL
    jr	    nz, wait_fifo_room
    ; write output character
    ld	    a, l
    out	    (PORT_LCDDAT), a	; send byte to LCD panel
    call    lcd_wait_idle
    ; check if text has wrapped, and text_y is now too big, and scroll up if so
    push    hl
    push    de
    call    lcd_get_text_y	; HL = text_y
    push    hl			; save text_y
    ld	    de, LCD_HEIGHT - 2 * LCD_TXT_HEIGHT
    ex	    de, hl		; DE = text_y, HL = LCD_HEIGHT - 2 * LCD_TXT_HEIGHT
    or	    a			; clear carry flag
    sbc	    hl, de		; test LCD_HEIGHT - 2 * LCD_TXT_HEIGHT < text_y
    pop	    hl			; HL = text_y
    jr	    nc, scrollDone	; if text_y <= LCD_HEIGHT - 2 * LCD_TXT_HEIGHT, no need to scroll
    ld	    de, LCD_TXT_HEIGHT
    or	    a			; clear carry flag
    sbc	    hl, de		; HL = text_y - LCD_TXT_HEIGHT
    call    lcd_set_text_y	; move text_y up one row
    call    lcd_lf		; scroll text area up
scrollDone:
    pop	    de
    pop	    hl
    ret

; The rest of this file is the VT100 parser. Most of the information
; is from: https://vt100.net/emu/dec_ansi_parser

    ; Character is in L.
expecting_bracket:
#if VT100_DUMP_TO_SERIAL
    call    sioA_putc
#endif
    ld      a, l
    cp      '['
    jr      z, is_bracket
    jp      back_to_normal
is_bracket:
    xor     a
    ld      (vt100_param_count), a
    ld      (vt100_current_param), a
    ld      a, VT100_STATE_EXP_START
    ld      (vt100_state), a
    ret

    ; Character is in L.
expecting_start_of_parameter:
#if VT100_DUMP_TO_SERIAL
    call    sioA_putc
#endif
    ld      a, l
    cp      ';'
    jr      nz, not_semicolon_start
    push    hl
    call    make_new_param
    pop     hl
    ret
not_semicolon_start:
    cp      '0'
    jr      c, execute
    cp      '9'+1
    jr      nc, execute
    ; Digit.
    push    af
    call    make_new_param
    pop     af
    sub     '0'
    ld      (hl), a
    ld      a, VT100_STATE_EXP_REST
    ld      (vt100_state), a
    ret

    ; Character is in L.
expecting_rest_of_parameter:
#if VT100_DUMP_TO_SERIAL
    call    sioA_putc
#endif
    ld      a, l
    cp      ';'
    jr      nz, not_semicolon_rest
    ld      a, VT100_STATE_EXP_START
    ld      (vt100_state), a
    ret
not_semicolon_rest:
    cp      '0'
    jr      c, execute
    cp      '9'+1
    jr      nc, execute
    ; Digit.
    sub     '0'
    push    de
    push    hl
    push    bc
    ld      d, a
    ld      a, (vt100_param_count)
    dec     a
    ld      hl, vt100_params
    ld      b, 0
    ld      c, a
    add     hl, bc
    ; Get current parameter value.
    ld      a, (hl)
    ; Multiply by 10.
    sla     a
    ld      b, a
    sla     a
    sla     a
    add     b
    ; Add new value.
    add     d
    ld      (hl), a
    pop     bc
    pop     hl
    pop     de
    ret

    ; Command is in A.
execute:
    cp      'H'
    jr      z, csi_H
    cp      'K'
    jr      z, csi_K
    cp      'm'
    jr      z, csi_m
    jp      unknown_command

csi_H:
    ; Set cursor position: ESC [ row ; col H, with defaults of "1".
    push    hl
    push    de
    ld      a, 1
    call    get_parameter
    cp      1
    jr      c, row_not_zero
    dec     a
row_not_zero:
    ; Sync with LCD_TXT_HEIGHT:
    sla     a
    sla     a
    sla     a
    sla     a
    ld      l, a
    ld      h, 0
    ld      a, 1
    call    get_parameter
    cp      1
    jr      c, col_not_zero
    dec     a
col_not_zero:
    ; Sync with LCD_TXT_WIDTH:
    sla     a
    sla     a
    sla     a
    ld      e, a
    ld      d, 0
    call    lcd_set_text_xy
    pop     de
    pop     hl
    jr      back_to_normal

csi_K:
    ; Clear to end of line: ESC [ K (there are parameters but WordStar doesn't use them).
    push    hl
    push    de
    call    lcd_get_text_x	; HL = text_x
    ex      de, hl              ; DE = text_x
    call    lcd_get_text_y	; HL = text_y
    call    lcd_dest_xy		; set destination to (text_x, text_y)
    ld	    hl, LCD_WIDTH       ; Want LCD_WIDTH - text_x for rectangle width
    or      a                   ; Clear carry
    sbc     hl, de              ; HL -= DE
    ex      de, hl              ; DE = rectangle width
    ld	    hl, LCD_TXT_HEIGHT  ; HL = rectangle height
    call    lcd_bte_wh		; set rectangle width and height
    M_lcdwrite LCDREG_BTE_CTRL1, 0x02 ; memory copy with ROP = Blackness
    M_lcdwrite LCDREG_BTE_CTRL0, 0x10 ; BTE run
    call    lcd_wait_idle
    pop     de
    pop     hl
    jr      back_to_normal

csi_m:
    ; Set text attribute. WordStar only needs "7" (reverse video) and missing (normal).
    push    hl
    push    de
    ld      a, 0
    call    get_parameter
    cp      7
    jr      z, csi_m_reverse
    cp      0
    jr      z, csi_m_reset
    ; Ignore unknown values.
    jr      csi_m_done

csi_m_reverse:
    ld      de, 0xFFFF              ; yellow foreground
    ld      hl, 0x0000
    call    lcd_set_fgcolor
    jr      csi_m_done

csi_m_reset:
    ld      de, 0xFFFF              ; white foreground
    ld      hl, 0xFFFF
    call    lcd_set_fgcolor
    ; Fallthrough.

csi_m_done:
    pop     de
    pop     hl
    jr      back_to_normal

unknown_command:
#if VT100_DUMP_TO_SERIAL
    ; Highlight the missing item in the serial output.
    ld      l, '<'
    call    sioA_putc
    call    sioA_putc
    call    sioA_putc
#endif
back_to_normal:
    ld      a, VT100_STATE_NORMAL
    ld      (vt100_state), a
    ret

; Adds a new parameter, set its value to zero. Does not check for parameter
; list overflow. Returns a pointer to the new parameter in HL.
make_new_param:
    push    bc
    ld      a, (vt100_param_count)
    ld      hl, vt100_params
    ld      b, 0
    ld      c, a
    add     hl, bc
    ld      (hl), 0
    inc     a
    ld      (vt100_param_count), a
    pop     bc
    ret

; Get the next parameter. Returns the value in A.
; If the parameter wasn't specified, then A is untouched.
get_parameter:
    push    hl
    push    bc
    push    af
    ld      a, (vt100_param_count)
    ld      l, a
    ld      a, (vt100_current_param)
    cp      l
    jr      nc, missing_parameter
    ld      hl, vt100_params
    ld      b, 0
    ld      c, a
    add     hl, bc
    inc     a
    ld      (vt100_current_param), a
    ld      a, (hl)
    pop     bc  ; Bogus pop of AF.
    jr      get_parameter_done

missing_parameter:
    ; Use value of A that was passed in.
    pop     af
get_parameter_done:
    pop     bc
    pop     hl
    ret

#endlocal
