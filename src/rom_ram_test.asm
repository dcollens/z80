; Calling convention used in this file
; ------------------------------------
;
; Unless otherwise noted, the first parameter, and the return value are stored as follows:
; 8 bits: L
; 16 bits: HL
; 32 bits: DEHL
;
; Additional parameters are passed on the stack, left-to-right.
; Parameters and return values larger than 32 bits are passed on the stack (return value
; space set up by caller as a hidden first argument).
; Callee saves/restores any modified registers.
; Caller pops arguments after call returns.
; AF registers are scratch (caller preserves, if needed).

; same as 'bin', except that the default fill byte for 'defs' etc. is 0xff
#target rom

#include "7segdisp.inc"
#include "z84c20.inc"

; 128KB Static RAM - AS6C1008-55PCN
; The first 16KB is shadowed by the EPROM.
; The next 48KB is mapped from 0x4000-0xFFFF.
; The top 64KB is not addressable (A16 tied low).
#data RAM, 0x4000, 0xC000
; define static variables here
Seg0_data:: defs 1	; current value of first 7-segment display byte
Seg1_data:: defs 1	; current value of second 7-segment display byte

; 128KB Flash ROM - SST39SF010A
; The first 16KB is mapped from 0-0x3FFF.
#code ROM, 0, 0x4000

; reset vector
RST0::
    di
    ld	    sp, RAM_end-1
    jp	    init
    defs    0x08-$

RST1::
    reti
    defs    0x10-$

RST2::
    reti
    defs    0x18-$

RST3::
    reti
    defs    0x20-$

RST4::
    reti
    defs    0x28-$

RST5::
    reti
    defs    0x30-$

RST6::
    reti
    defs    0x38-$

; maskable interrupt handler in interrupt mode 1:
RST7::
    reti

; non maskable interrupt:
; e.g. call debugger and on exit resume.
    defs    0x66-$
NMI::
    retn

; void init()
init::
    ld	    l, 0
    call    seg0_write
    call    seg1_write
    call    pio_test
    jr	    $		; loop forever

; void countup()
#local
countup::
    push    hl
    ld	    h, 0	; counter in h
; increment count every 500ms and toggle DP
forever:
    ld	    l, h
    call    seg_writehex    ; display counter
    ld	    l, SEG_DP
    call    seg0_toggle	    ; toggle DP
    ld	    l, 250
    call    delay_ms	    ; delay 250ms
    call    delay_ms	    ; delay 250ms
    inc	    h
    jr	    forever
    pop	    hl
    ret
#endlocal

; void figure8()
#local
figure8::
    push    hl
    push    bc
; step fig8 every 125ms; toggle DP every 1s
forever:
    ld	    b, 7
fig8_loop:
    ld	    l, b
    call    seg0_fig8
    ld	    l, 125
    call    delay_ms
    dec	    b
    jp	    p, fig8_loop
    ld	    l, SEG_DP
    call    seg0_toggle
    jr	    forever
    pop	    bc
    pop	    hl
    ret
#endlocal

; void pio_test()
#local
pio_test::
    push    hl
    push    bc
    ; configure PIO ports A and B
    ld	    bc, 0x0400 | PORT_PIOACTL
    ld	    hl, portA_cfg
    otir
    ld	    bc, 0x0300 | PORT_PIOBCTL
    ; HL already points to portB_cfg
    otir
    call    pio_srclr		; clear shift register at startup
forever:
    ld	    l, SEG_DP
    call    seg1_toggle
    in	    a, (PORT_PIOADAT)	; read PIO port A
    cpl				; invert SRPRTY and SRSTRT signals
    bit	    5, a		; if SRSTRT is high, keep polling
    jr	    nz, forever
    ; put SRPRTY onto segment 0's DP
    and	    0x10		; mask off other bits
    add	    a, a
    add	    a, a
    add	    a, a		; shift SRPRTY left 3 bits to bit 7 (SEG_DP)
    ld	    l, a
    call    seg0_write
    ; read port B, displaying hex value after inverting
    in	    a, (PORT_PIOBDAT)
    cpl
    ld	    l, a
    call    pio_srclr		; clear shift register to prepare for next byte
    call    seg_writehex
    jr	    forever
    pop	    bc
    pop	    hl
    ret
portA_cfg:
    .byte PIOC_MODE | PIOMODE_CONTROL
    .byte 0xF7	    ; A3 is an output (~SRCLR), everything else is an input
    .byte PIOC_ICTL | PIOICTL_INTDIS | PIOICTL_OR | PIOICTL_HIGH | PIOICTL_MASKNXT
    .byte 0xDF	    ; interrupt on A5 only (SRSTRT)
portB_cfg:
    .byte PIOC_MODE | PIOMODE_CONTROL
    .byte 0xFF	    ; everything is an input
    .byte PIOC_ICTL | PIOICTL_INTDIS | PIOICTL_OR | PIOICTL_HIGH
#endlocal

; void pio_srclr()
; - clear shift register by toggling ~SRCLR line, leaving it HIGH
#local
pio_srclr::
    xor	    a
    out	    (PORT_PIOADAT), a
    ld	    a, 0x08	; bit 3
    out	    (PORT_PIOADAT), a
    ret
#endlocal

; Library routines
; ----------------

; void seg_writehex(uint8_t val)
; - write the two hex digits of "val" to the 7-segment displays
seg_writehex::
    push    hl
    call    seg1_writehex
    ld	    a, l
    rlca
    rlca
    rlca
    rlca
    ld	    l, a
    call    seg0_writehex
    pop	    hl
    ret

; void seg0_writehex(uint8_t val)
; - write hex digit in lower nybble of "val" to 7-segment display
seg0_writehex::
    push    hl
    push    bc
    ld	    bc, HEX_table
    ld	    a, l
    and	    0xF	    ; mask off upper nybble of l
    ld	    l, a
    ld	    h, 0
    add	    hl, bc  ; hl = HEX_table + (val & 0xF)
    ld	    a, (Seg0_data)
    and	    SEG_DP
    or	    (hl)
    ld	    l, a    ; l = (*Seg0_data & SEG_DP) | HEX_table[val & 0xF]
    call    seg0_write
    pop	    bc
    pop	    hl
    ret

; void seg1_writehex(uint8_t val)
; - write hex digit in lower nybble of "val" to 7-segment display
seg1_writehex::
    push    hl
    push    bc
    ld	    bc, HEX_table
    ld	    a, l
    and	    0xF	    ; mask off upper nybble of l
    ld	    l, a
    ld	    h, 0
    add	    hl, bc  ; hl = HEX_table + (val & 0xF)
    ld	    a, (Seg1_data)
    and	    SEG_DP
    or	    (hl)
    ld	    l, a    ; l = (*Seg1_data & SEG_DP) | HEX_table[val & 0xF]
    call    seg1_write
    pop	    bc
    pop	    hl
    ret

HEX_table::
    ; 0
    .byte SEG_A | SEG_B | SEG_C | SEG_D | SEG_E | SEG_F
    ; 1
    .byte SEG_B | SEG_C
    ; 2
    .byte SEG_A | SEG_B | SEG_G | SEG_E | SEG_D
    ; 3
    .byte SEG_A | SEG_B | SEG_G | SEG_C | SEG_D
    ; 4
    .byte SEG_F | SEG_G | SEG_B | SEG_C
    ; 5
    .byte SEG_A | SEG_F | SEG_G | SEG_C | SEG_D
    ; 6
    .byte SEG_A | SEG_F | SEG_G | SEG_C | SEG_D | SEG_E
    ; 7
    .byte SEG_A | SEG_B | SEG_C
    ; 8
    .byte SEG_A | SEG_B | SEG_C | SEG_D | SEG_E | SEG_F | SEG_G
    ; 9
    .byte SEG_A | SEG_B | SEG_C | SEG_D | SEG_F | SEG_G
    ; A
    .byte SEG_A | SEG_B | SEG_C | SEG_E | SEG_F | SEG_G
    ; b
    .byte SEG_F | SEG_G | SEG_C | SEG_D | SEG_E
    ; C
    .byte SEG_A | SEG_D | SEG_E | SEG_F
    ; d
    .byte SEG_B | SEG_C | SEG_D | SEG_E | SEG_G
    ; E
    .byte SEG_A | SEG_D | SEG_E | SEG_F | SEG_G
    ; F
    .byte SEG_A | SEG_E | SEG_F | SEG_G

; void seg0_fig8(uint8_t step)
; - advance first 7-segment display to specified figure-8 step (0-7)
seg0_fig8::
    push    hl
    push    bc
    ld	    bc, FIG8_table
    ld	    h, 0
    add	    hl, bc	; hl = FIG8_table + step
    ld	    a, (Seg0_data)
    and	    SEG_DP
    or	    (hl)
    ld	    l, a	; l = (*Seg0_data & SEG_DP) | FIG8_table[step]
    call    seg0_write
    pop	    bc
    pop	    hl
    ret

FIG8_table::
    .byte SEG_A, SEG_B, SEG_G, SEG_E, SEG_D, SEG_C, SEG_G, SEG_F

; void seg0_toggle(uint8_t bits)
; - toggle specified bits of first 7-segment display register
seg0_toggle::
    push    hl
    ld	    a, (Seg0_data)
    xor	    l
    ld	    l, a
    call    seg0_write
    pop	    hl
    ret

; void seg1_toggle(uint8_t bits)
; - toggle specified bits of second 7-segment display register
seg1_toggle::
    push    hl
    ld	    a, (Seg1_data)
    xor	    l
    ld	    l, a
    call    seg1_write
    pop	    hl
    ret

; void seg0_write(uint8_t bits)
; - write raw bits to first 7-segment display register
seg0_write::
    ld	    a, l
    ld	    (Seg0_data), a
    out	    (PORT_SEG0), a
    ret

; void seg1_write(uint8_t bits)
; - write raw bits to second 7-segment display register
seg1_write::
    ld	    a, l
    ld	    (Seg1_data), a
    out	    (PORT_SEG1), a
    ret

; void delay_ms(uint8_t ms)
; - delay for at least the specified number of milliseconds
#local
delay_ms::
    inc	    l
    dec	    l
    ret	    z		; delay of 0 returns immediately
    push    bc
    ld	    b, l
loop:
    call    delay_1ms
    djnz    loop
    pop	    bc
    ret
#endlocal

; void delay_1ms()
; - delay for 1ms (technically, 0.9999ms)
#local
delay_1ms::
    push    bc		; 11 T-states
; To delay 1ms, we want to wait 10,000 T-states (@10MHz)
; The loop is (38*b + 13*(b-1) + 8) T-states long
; Rearranging: 51*b - 5
; Solve for b: b = (10000 + 5 / 51) = 196.17
    ld	    b, 195	; 7 T-states
loop:
    ex	    (sp), hl	; 19 T-states
    ex	    (sp), hl	; 19 T-states
    djnz    loop	; (b-1)*13+8 T-states
    pop	    bc		; 10 T-states
    nop			; 4 T-states
    ret			; 10 T-states
; We also assume the routine is CALLed, for 17 T-states.
; Total delay is therefore:
;   17 + 11 + 7 + 51*195 - 5 + 10 + 4 + 10 = 9,999
#endlocal

; Remaining 48KB and 64KB segments to fill up ROM image
#code FILLER1, 0, 0xC000
#code FILLER2, 0, 0x10000