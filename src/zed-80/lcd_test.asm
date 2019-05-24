; Calling convention used in this program
; ---------------------------------------
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

; same as 'rom', except that the default fill byte for 'defs' etc. is 0x00
#target bin

#include "z80.inc"
#include "lcd.inc"
#include "7segdisp.inc"
#include "joystick.inc"
#include "z84c20.inc"
#include "z84c30.inc"
#include "z84c40.inc"
#include "keyboard.inc"
#include "ascii.inc"

DCR0_DRAWLINE	equ LCDDCR0_DRWLIN | LCDDCR0_RUN
DCR0_DRAWTRI	equ LCDDCR0_DRWTRI | LCDDCR0_RUN
DCR0_FILLTRI	equ LCDDCR0_DRWTRI | LCDDCR0_FILL | LCDDCR0_RUN

DCR1_DRAWRECT	equ LCDDCR1_DRWRCT | LCDDCR1_RUN
DCR1_FILLRECT	equ LCDDCR1_DRWRCT | LCDDCR1_FILL | LCDDCR1_RUN
DCR1_DRAWELL	equ LCDDCR1_DRWELL | LCDDCR1_RUN
DCR1_FILLELL	equ LCDDCR1_DRWELL | LCDDCR1_FILL | LCDDCR1_RUN
DCR1_DRAWRR	equ LCDDCR1_DRWRR | LCDDCR1_RUN
DCR1_FILLRR	equ LCDDCR1_DRWRR | LCDDCR1_FILL | LCDDCR1_RUN

M_lcd_rand_line	macro
    call    lcd_rand_line_coords
    M_lcdwrite LCDREG_DCR0, DCR0_DRAWLINE
    call    lcd_wait_idle	    ; wait for graphics operation to complete
    endm

M_lcd_rand_triangle macro
    call    lcd_rand_triangle_coords
    M_lcdwrite LCDREG_DCR0, DCR0_DRAWTRI
    call    lcd_wait_idle	    ; wait for graphics operation to complete
    endm

M_lcd_rand_triangle_fill macro
    call    lcd_rand_triangle_coords
    M_lcdwrite LCDREG_DCR0, DCR0_FILLTRI
    call    lcd_wait_idle	    ; wait for graphics operation to complete
    endm

M_lcd_rand_rect macro
    call    lcd_rand_line_coords
    M_lcdwrite LCDREG_DCR1, DCR1_DRAWRECT
    call    lcd_wait_idle	    ; wait for graphics operation to complete
    endm

M_lcd_rand_rect_fill macro
    call    lcd_rand_line_coords
    M_lcdwrite LCDREG_DCR1, DCR1_FILLRECT
    call    lcd_wait_idle	    ; wait for graphics operation to complete
    endm

M_lcd_rand_ellipse macro
    call    lcd_rand_ellipse_coords
    M_lcdwrite LCDREG_DCR1, DCR1_DRAWELL
    call    lcd_wait_idle	    ; wait for graphics operation to complete
    endm

M_lcd_rand_ellipse_fill macro
    call    lcd_rand_ellipse_coords
    M_lcdwrite LCDREG_DCR1, DCR1_FILLELL
    call    lcd_wait_idle	    ; wait for graphics operation to complete
    endm

M_sio_puts  macro str
    ; Destroys A
    push    hl
    ld	    hl, &str
    call    sio_puts
    pop	    hl
    endm

M_sio_putc  macro ch
    ; Destroys A
    push    hl
    ld	    l, &ch
    call    sio_putc
    pop	    hl
    endm

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
; our code will load immediately above the ROM
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
#code TEXT,0x4000

init::
    ; zero the DATA segment
    ld	    hl, DATA
    ld	    bc, DATA_size
    call    bzero
    call    seg_init
    call    rand_init
    call    kbd_init
    call    lcd_init		    ; initialize LCD subsystem
    call    lcd_test_text
;    ld	    b, 250
;    call    delay_ms
;    call    delay_ms
;    call    delay_ms
;    call    delay_ms
;    call    lcd_test_drawing
    ret

hello_message::
    .text   "ZED-80 Personal Computer", NUL
copyright_message::
    .text   0xA9, "1976 HeadCode", NUL
crlf::
    .text   CR, LF, NUL

; void lcd_test_drawing()
; - exercise the LCD panel drawing primitives
#local
lcd_test_drawing::
loop:
    call    lcd_rand_fgcolor	    ; randomize FG color
    M_lcd_rand_line
    call    lcd_rand_fgcolor	    ; randomize FG color
    M_lcd_rand_triangle
    call    lcd_rand_fgcolor	    ; randomize FG color
    M_lcd_rand_triangle_fill
    call    lcd_rand_fgcolor	    ; randomize FG color
    M_lcd_rand_rect
    call    lcd_rand_fgcolor	    ; randomize FG color
    M_lcd_rand_rect_fill
    call    lcd_rand_fgcolor	    ; randomize FG color
    M_lcd_rand_ellipse
    call    lcd_rand_fgcolor	    ; randomize FG color
    M_lcd_rand_ellipse_fill
    jr	    loop
    ret
#endlocal

; void lcd_test_text()
; - exercise the LCD panel text primitives
#local
lcd_test_text::
    push    de
    push    hl
    M_lcdwrite0 LCDREG_CCR0
    M_lcdwrite LCDREG_CCR1, 0x40
    M_lcdwrite LCDREG_FLDR, 0	    ; vertical gap between lines, in pixels
    M_lcdwrite LCDREG_F2FSSR, 0	    ; horizontal gap between characters, in pixels
    ld	    de, 0xFFFF
    ld	    hl, 0xFFFF
    call    lcd_set_fgcolor	    ; set FG color to white
    call    lcd_wait_idle	    ; must be idle before switching to text mode
    M_lcdwrite LCDREG_ICR, 0x04	    ; set text mode
    ld	    hl, hello_message
    call    lcd_puts
    ld	    de, 0
    ld	    hl, 15
    call    lcd_text_xy
    ld	    hl, copyright_message
    call    lcd_puts
    ld	    de, 0
    ld	    hl, 30
    call    lcd_text_xy
loop:
    call    kbd_get_keycode	    ; get next key
    bit	    KEY_RELEASED_BIT, l	    ; test (keycode & KEY_RELEASED) == 0?
    call    z, lcd_putc		    ; print the key to the screen if it's a key-down code
    jr	    loop
    pop	    hl
    pop	    de
    ret
#endlocal

; void lcd_init()
; - set up the LCD panel by programming the RA8876 registers
#local
lcd_init::
    push    de
    push    hl
    in	    a, (PORT_LCDCMD)	    ; read status byte
    ld	    l, a
    call    seg_writehex
    ; RA8876_initial()
    ;	RA8876_SW_Reset();
    M_out   (PORT_LCDCMD), LCDREG_SRR
    in	    a, (PORT_LCDDAT)
    or	    0x01
    out	    (PORT_LCDDAT), a
wait_reset:
    in	    a, (PORT_LCDDAT)
    and	    0x01
    jr	    nz, wait_reset
    ;	RA8876_PLL_Initial(); 
    M_lcdwrite LCDREG_PPLLC1, 2
    M_lcdwrite LCDREG_MPLLC1, 2
    M_lcdwrite LCDREG_SPLLC1, 2
    M_lcdwrite LCDREG_PPLLC2, 7
    M_lcdwrite LCDREG_MPLLC2, 19
    M_lcdwrite LCDREG_SPLLC2, 19
    M_out   (PORT_LCDCMD), LCDREG_CCR
    M_out0  (PORT_LCDDAT)
    call    delay_1ms
    M_out   (PORT_LCDDAT), 0x80
    call    delay_1ms
    ;	RA8876_SDRAM_initail();
    M_lcdwrite LCDREG_SDRAR, 0x29
    M_lcdwrite LCDREG_SDRMD, 0x03
    M_lcdwrite LCDREG_SDR_REF_ITVL0, 0x0B
    M_lcdwrite LCDREG_SDR_REF_ITVL1, 0x03
    M_lcdwrite LCDREG_SDRCR, 0x01
wait_sdram:
    in	    a, (PORT_LCDCMD)
    and	    LCDSTAT_RAMRDY
    jr	    z, wait_sdram
    call delay_1ms
    ;	TFT_24bit();
    ;	Host_Bus_8bit();
    M_out   (PORT_LCDCMD), LCDREG_CCR
    in	    a, (PORT_LCDDAT)
    and	    ~0x19
    out	    (PORT_LCDDAT), a
    ;	RGB_8b_16bpp();
    ;	MemWrite_Left_Right_Top_Down();
    M_lcdwrite0 LCDREG_MACR
    ;	Graphic_Mode();
    ;	Memory_Select_SDRAM();   
    M_out   (PORT_LCDCMD), LCDREG_ICR
    in	    a, (PORT_LCDDAT)
    and	    ~0x07
    out	    (PORT_LCDDAT), a
    ;	HSCAN_L_to_R();
    ;	VSCAN_T_to_B();
    ;	PDATA_Set_RGB();
    ;	PCLK_Falling();
    M_out   (PORT_LCDCMD), LCDREG_DPCR
    in	    a, (PORT_LCDDAT)
    and	    ~0x1F
    or	    0x80
    out	    (PORT_LCDDAT), a
    ;	DE_High_Active();
    ;	HSYNC_High_Active();
    ;	VSYNC_High_Active(); 
    M_out   (PORT_LCDCMD), LCDREG_PCSR
    in	    a, (PORT_LCDDAT)
    and	    ~0x20
    or	    0xC0
    out	    (PORT_LCDDAT), a
    ;	LCD_HorizontalWidth_VerticalHeight(1024,600);
    M_lcdwrite LCDREG_HDWR, 127
    M_lcdwrite0 LCDREG_HDWFTR
    M_lcdwrite LCDREG_VDHR0, 0x57
    M_lcdwrite LCDREG_VDHR1, 0x02
    ;	LCD_Horizontal_Non_Display(160);		   //30
    M_lcdwrite LCDREG_HNDR, 19
    M_lcdwrite0 LCDREG_HNDFTR
    ;	LCD_HSYNC_Start_Position(160);
    M_lcdwrite LCDREG_HSTR, 19
    ;	LCD_HSYNC_Pulse_Width(70);
    M_lcdwrite LCDREG_HPWR, 7
    ;	LCD_Vertical_Non_Display(23);		   //16
    M_lcdwrite LCDREG_VNDR0, 22
    M_lcdwrite0 LCDREG_VNDR1
    ;	LCD_VSYNC_Start_Position(12);
    M_lcdwrite LCDREG_VSTR, 11
    ;	LCD_VSYNC_Pulse_Width(10);
    M_lcdwrite LCDREG_VPWR, 9
    ;	Select_Main_Window_16bpp();
    ; This is the default, so we don't really need to do this.
    M_out   (PORT_LCDCMD), LCDREG_MPWCTR
    in	    a, (PORT_LCDDAT)
    and	    ~0x08
    or	    0x04
    out	    (PORT_LCDDAT), a
    ;	Main_Image_Start_Address(0);				
    ; The default is start address 0, so we don't really need to do this.
    M_lcdwrite0 LCDREG_MISA0
    M_lcdwrite0 LCDREG_MISA1
    M_lcdwrite0 LCDREG_MISA2
    M_lcdwrite0 LCDREG_MISA3
    ;	Main_Image_Width(1024);							
    M_lcdwrite0 LCDREG_MIW0
    M_lcdwrite LCDREG_MIW1, 4
    ;	Main_Window_Start_XY(0,0);	
    ; The default is (0,0), so we don't really need to do this.
    M_lcdwrite0 LCDREG_MWULX0
    M_lcdwrite0 LCDREG_MWULX1
    M_lcdwrite0 LCDREG_MWULY0
    M_lcdwrite0 LCDREG_MWULY1
    ;	Canvas_Image_Start_address(0);
    ; The default is start address 0, so we don't really need to do this.
    M_lcdwrite0 LCDREG_CVSSA0
    M_lcdwrite0 LCDREG_CVSSA1
    M_lcdwrite0 LCDREG_CVSSA2
    M_lcdwrite0 LCDREG_CVSSA3
    ;	Canvas_image_width(1024);
    M_lcdwrite0 LCDREG_CVS_IMWTH0
    M_lcdwrite LCDREG_CVS_IMWTH1, 4
    ;	Active_Window_XY(0,0);
    ; The default is (0,0), so we don't really need to do this.
    M_lcdwrite0 LCDREG_AWUL_X0
    M_lcdwrite0 LCDREG_AWUL_X1
    M_lcdwrite0 LCDREG_AWUL_Y0
    M_lcdwrite0 LCDREG_AWUL_Y1
    ;	Active_Window_WH(1024,600);
    M_lcdwrite0 LCDREG_AW_WTH0
    M_lcdwrite LCDREG_AW_WTH1, 4
    M_lcdwrite LCDREG_AW_HT0, 88
    M_lcdwrite LCDREG_AW_HT1, 2
    ;	Memory_XY_Mode();
    ;	Memory_16bpp_Mode();
    M_lcdwrite LCDREG_AW_COLOR, 0x01
    ;	Select_Main_Window_16bpp();
    ; Unaccountably, the sample code calls this again, even though it was done earlier, and is
    ; the default, so we skip it.
    ; Display_ON();
    M_out   (PORT_LCDCMD), LCDREG_DPCR
    in	    a, (PORT_LCDDAT)
    or	    0x40
    out	    (PORT_LCDDAT), a
    ; delay_ms(20);
    ld	    l, 20
    call    delay_ms
    ; Clear the screen
    ld	    de, 0
    ld	    hl, 0
    call    lcd_set_fgcolor	    ; set FG color to black
    call    lcd_line_start_xy	    ; set start to 0,0
    ld	    de, LCD_WIDTH-1
    ld	    hl, LCD_HEIGHT-1
    call    lcd_line_end_xy	    ; set end to maxX,maxY
    M_lcdwrite LCDREG_DCR1, DCR1_FILLRECT ; draw filled rectangle to clear screen
    call    lcd_wait_idle
    call    lcd_bl_on		    ; turn on backlight
    pop	    hl
    pop	    de
    ret
#endlocal

; void lcd_bl_on()
; - turn on LCD backlight
lcd_bl_on::
    ld	    a, SIOWR0_CMD_NOP | SIOWR0_PTR_R5
    out	    (PORT_SIOACTL), a
    ld	    a, SIOWR5_RTS | SIOWR5_TXENA | SIOWR5_TX_8_BITS
    out	    (PORT_SIOACTL), a
    ret

; void lcd_bl_off()
; - turn off LCD backlight
lcd_bl_off::
    ld	    a, SIOWR0_CMD_NOP | SIOWR0_PTR_R5
    out	    (PORT_SIOACTL), a
    ld	    a, SIOWR5_RTS | SIOWR5_TXENA | SIOWR5_TX_8_BITS | SIOWR5_DTR
    out	    (PORT_SIOACTL), a
    ret

; void lcd_set_fgcolor(uint8_t r, uint8_t g, uint8_t b)
; - sets foreground drawing color to (r,g,b)
; - "r" in D, "g" in E, "b" in H
; - R,G,B uses upper 5,6,5 bits of precision only (i.e. 16bpp color)
lcd_set_fgcolor::
    M_lcdwrite LCDREG_FGCR, d
    M_lcdwrite LCDREG_FGCG, e
    M_lcdwrite LCDREG_FGCB, h
    ret

; void lcd_rand_fgcolor()
; - randomizes foreground drawing color
lcd_rand_fgcolor::
    push    hl
    call    rand16
    M_lcdwrite LCDREG_FGCR, h
    M_lcdwrite LCDREG_FGCG, l
    call    rand16
    M_lcdwrite LCDREG_FGCB, h
    pop	    hl
    ret

; void lcd_line_start_xy(uint16_t x, uint16_t y)
; - "x" in DE, "y" in HL
lcd_line_start_xy::
    M_lcdwrite LCDREG_DLHSR0, e
    M_lcdwrite LCDREG_DLHSR1, d
    M_lcdwrite LCDREG_DLVSR0, l
    M_lcdwrite LCDREG_DLVSR1, h
    ret

; void lcd_line_end_xy(uint16_t x, uint16_t y)
; - "x" in DE, "y" in HL
lcd_line_end_xy::
    M_lcdwrite LCDREG_DLHER0, e
    M_lcdwrite LCDREG_DLHER1, d
    M_lcdwrite LCDREG_DLVER0, l
    M_lcdwrite LCDREG_DLVER1, h
    ret

; void lcd_triangle_xy(uint16_t x, uint16_t y)
; - "x" in DE, "y" in HL
; - this sets the third point for a triangle (first two are the "line start" and "line end" points)
lcd_triangle_xy::
    M_lcdwrite LCDREG_DTPH0, e
    M_lcdwrite LCDREG_DTPH1, d
    M_lcdwrite LCDREG_DTPV0, l
    M_lcdwrite LCDREG_DTPV1, h
    ret

; void lcd_text_xy(uint16_t x, uint16_t y)
; - "x" in DE, "y" in HL
lcd_text_xy::
    M_lcdwrite LCDREG_F_CURX0, e
    M_lcdwrite LCDREG_F_CURX1, d
    M_lcdwrite LCDREG_F_CURY0, l
    M_lcdwrite LCDREG_F_CURY1, h
    ret

; void lcd_ellipse_xy(uint16_t x, uint16_t y)
; - "x" in DE, "y" in HL
lcd_ellipse_xy::
    M_lcdwrite LCDREG_DEHR0, e
    M_lcdwrite LCDREG_DEHR1, d
    M_lcdwrite LCDREG_DEVR0, l
    M_lcdwrite LCDREG_DEVR1, h
    ret

; void lcd_ellipse_radii(uint16_t rx, uint16_t ry)
; - "rx" in DE, "ry" in HL
lcd_ellipse_radii::
    M_lcdwrite LCDREG_ELL_A0, e
    M_lcdwrite LCDREG_ELL_A1, d
    M_lcdwrite LCDREG_ELL_B0, l
    M_lcdwrite LCDREG_ELL_B1, h
    ret

; void lcd_puts(uint8_t *text)
; - write the NUL-terminated string at "text" to LCD
#local
lcd_puts::
    push    hl
    push    bc
    M_out   (PORT_LCDCMD), LCDREG_MRWDP
next_byte:
    ld	    a, (hl)
    inc	    hl
    or	    a		; fast test a==0
    jr	    z, done
    ld	    b, a
wait_fifo_room:
    ; wait until memory FIFO is non-full
    in	    a, (PORT_LCDCMD)
    and	    LCDSTAT_WRFULL
    jr	    nz, wait_fifo_room
    ; write output character
    ld	    a, b
    out	    (PORT_LCDDAT), a	; send byte to LCD panel
    jr	    next_byte
done:
    call    lcd_wait_idle
    pop	    bc
    pop	    hl
    ret
#endlocal

; void lcd_putc(uint8_t ch)
; - write the single character in "ch" to LCD
#local
lcd_putc::
    M_out   (PORT_LCDCMD), LCDREG_MRWDP
wait_fifo_room:
    ; wait until memory FIFO is non-full
    in	    a, (PORT_LCDCMD)
    and	    LCDSTAT_WRFULL
    jr	    nz, wait_fifo_room
    ; write output character
    ld	    a, l
    out	    (PORT_LCDDAT), a	; send byte to LCD panel
    ; call lcd_wait_idle
; FALLING THROUGH!!!

; void lcd_wait_idle()
; - waits until geometry engine, BTE, text/graphic write complete
lcd_wait_idle::
    in	    a, (PORT_LCDCMD)
    and	    LCDSTAT_BUSY
    jr	    nz, lcd_wait_idle
    ret
#endlocal

; void lcd_rand_line_coords()
; - set up random coordinates for line start & line end
#local
lcd_rand_line_coords::
    push    bc
    push    de
    push    hl
do_line_coords:
    ld	    bc, LCD_WIDTH
    call    rand16_modn
    ex	    de, hl
    ld	    bc, LCD_HEIGHT
    call    rand16_modn
    call    lcd_line_start_xy	    ; random start X,Y
    ld	    bc, LCD_WIDTH
    call    rand16_modn
    ex	    de, hl
    ld	    bc, LCD_HEIGHT
    call    rand16_modn
    call    lcd_line_end_xy	    ; random end X,Y
    pop	    hl
    pop	    de
    pop	    bc
    ret

; void lcd_rand_triangle_coords()
; - set up random coordinates for the three triangle vertices
lcd_rand_triangle_coords::
    push    bc
    push    de
    push    hl
    ld	    bc, LCD_WIDTH
    call    rand16_modn
    ex	    de, hl
    ld	    bc, LCD_HEIGHT
    call    rand16_modn
    call    lcd_triangle_xy	    ; random triangle 3rd vertex X,Y
    jr	    do_line_coords	    ; random triangle 1st & 2nd vertices
#endlocal

; void lcd_rand_ellipse_coords()
; - set up random coordinates and size for ellipse/circle
lcd_rand_ellipse_coords::
    push    bc
    push    de
    push    hl
    ld	    bc, LCD_WIDTH
    call    rand16_modn
    ex	    de, hl
    ld	    bc, LCD_HEIGHT
    call    rand16_modn
    call    lcd_ellipse_xy	    ; random center X,Y
    ld	    bc, LCD_WIDTH/2
    call    rand16_modn
    ex	    de, hl
    ld	    bc, LCD_HEIGHT/2
    call    rand16_modn
    call    lcd_ellipse_radii	    ; random radii
    pop	    hl
    pop	    de
    pop	    bc
    ret

; void bzero(uint8_t *ptr, uint16_t len)
; NOTE: ptr in HL, len in BC
; - zero "len" bytes starting at address "ptr"
#local
bzero::
    push    de
    ld	    a, b
    or	    c
    jr	    z, done		; len is 0
    ld	    (hl), 0		; zero first byte of DATA seg
    dec	    bc
    ld	    a, b
    or	    c
    jr	    z, done		; len is 1
    ld	    e, l
    ld	    d, h
    inc	    de			; de = hl + 1
    ldir			; zero last len-1 bytes
done:
    pop	    de
    ret
#endlocal

rand_init::
    push    hl
    ld	    hl, 0x2019
    ld	    (Rand16_seed1), hl
    ld	    hl, 0xA05F
    ld	    (Rand16_seed2), hl
    pop	    hl
    ret

; uint16_t rand16()
; Inputs:
;   (Rand16_seed1) contains a 16-bit seed value
;   (Rand16_seed2) contains a NON-ZERO 16-bit seed value
; Outputs:
;   HL is the result
;   BC, DE is preserved
; Destroys:
;   AF
; cycle: 4,294,901,760 (almost 4.3 billion)
; 160cc
; 26 bytes
rand16:
    push bc
    ld hl,(Rand16_seed1)
    ld b,h
    ld c,l
    add hl,hl
    add hl,hl
    inc l
    add hl,bc
    ld (Rand16_seed1),hl
    ld hl,(Rand16_seed2)
    add hl,hl
    sbc a,a
    and %00101101
    xor l
    ld l,a
    ld (Rand16_seed2),hl
    add hl,bc
    pop bc
    ret

; uint16_t rand16_modn(uint16_t n)
; - pass "n" in BC
; - returns a 16-bit pseudo-random number on the interval [0, n) in HL
rand16_modn::
    push    de
    ld	    d, b
    ld	    e, c	; DE = BC
    call    rand16	; HL = rand16()
    ld	    a, h
    ld	    c, l	; AC = HL
    call    div_ac_de	; (AC, HL) = divmod16(AC, DE)
    pop	    de		; we don't want the quotient, only the remainder in HL
    ret

; (uint16_t, uint16_t) divmod16(uint16_t n, uint16_t d)
; - divides "n" by "d", returning n / d and n % d
; - pass "n" in DE, "d" in BC
; - returns quotient (n/d) in DE, remainder (n%d) in HL
#local
divmod16_me::
    ld	    a, 16	; max 16 iterations
    ld	    hl, 0
    jr	    start
loop:
    add	    hl, bc	; HL += "d"
loop2:
    dec	    a		; decrement loop counter
    ret	    z		; return if done
start:
    sla	    e
    rl	    d		; shift DE left 1, high bit to carry flag
    adc	    hl, hl	; HL = (HL << 1) + carry, with carry flag receiving shifted-out bit
    sbc	    hl, bc	; HL = HL - "d" - carry
    jr	    nc, loop	; jump if carry == 0
    inc	    e		; set low bit of DE
    jr	    loop2
#endlocal

#local
divmod16_z80heaven::
     ld a,16        ;7
     ld hl,0        ;10
     jp $+5         ;10
DivLoop:
       add hl,bc    ;--
       dec a        ;64
       ret z        ;86

       sla e        ;128
       rl d         ;128
       adc hl,hl    ;240
       sbc hl,bc    ;240
       jr nc,DivLoop ;23|21
       inc e        ;--
       jp DivLoop+1
#endlocal

; The following routine divides AC by DE and places the quotient in AC and the remainder in HL.
#local
div_ac_de::
    ld	    hl, 0
    ld	    b, 16

loop:
    sll	    c
    rla
    adc	    hl, hl
    sbc	    hl, de
    jr	    nc, $+4
    add	    hl, de
    dec	    c
    
    djnz    loop
    
    ret
#endlocal

; void kbd_init()
#local
kbd_init::
    push    hl
    push    bc
    ; configure PIO port A
    ld	    bc, 0x0400 | PORT_PIOACTL
    ld	    hl, pioA_cfg
    otir
    call    pio_srclr		; clear shift register at startup
    pop	    bc
    pop	    hl
    ret
pioA_cfg:
    .byte PIOC_MODE | PIOMODE_CONTROL
    .byte 0xF7	    ; A3 is an output (~SRCLR), everything else is an input
    .byte PIOC_ICTL | PIOICTL_INTDIS | PIOICTL_OR | PIOICTL_HIGH | PIOICTL_MASKNXT
    .byte 0xDF	    ; interrupt on A5 only (SRSTRT)
#endlocal

; uint8_t kbd_get_byte()
; - read and return the next input byte from the PS/2 keyboard port
; - blocks until a byte is available
#local
kbd_get_byte::
poll:
    in	    a, (PORT_PIOADAT)	; read PIO port A
    and	    0x20		; if SRSTRT is low, keep polling
    jr	    z, poll
    in	    a, (PORT_KBD)	; read keyboard latch
    cpl				; invert signal (shift register is fed from ~KDAT)
    ld	    l, a
    ; clear shift register to prepare for next byte
; FALLING THROUGH!!!

; void pio_srclr()
; - clear shift register by toggling ~SRCLR line, leaving it HIGH
pio_srclr::
    xor	    a
    out	    (PORT_PIOADAT), a
    ld	    a, 0x08	; bit 3
    out	    (PORT_PIOADAT), a
    ret
#endlocal

; uint8_t kbd_get_keycode()
; - reads one or more bytes from the PS/2 keyboard port, parses them and returns a KEY_xxx code
;   indicating which key was pressed/released
; - blocks until a valid key event is received
#local
kbd_get_keycode::
    push    bc
    push    de
    push    hl
start:
    ld	    c, KBD_SCNST_IDL	; C = scan_state (initially idle, i.e. 0)
nextByte:
    call    kbd_get_byte	; L = next scan code byte
    ld	    a, l		; test for key-up byte
    cp	    0xF0		; test A == 0xF0?
    jr	    nz, notKeyUp
    set	    KBD_SCNST_RLSBIT, c	; scan_state |= KBD_SCANST_RLS
    jr	    nextByte
notKeyUp:			; input_byte in A&L was not 0xF0
    cp	    Kbd_scan_tbl_sz	; test input_byte < Kbd_scan_tbl_sz?
    jr	    nc, start		; input_byte out of range: ignore this byte sequence and start over
    ld	    h, 0		; HL = input_byte
    ld	    de, Kbd_scan_tbl
    add	    hl, de		; HL = &Kbd_scan_tbl[input_byte]
    ld	    a, (hl)		; A = keycode = Kbd_scan_tbl[input_byte]
    or	    a			; test keycode == KEY_NONE?
    jr	    z, start		; KEY_NONE: ignore this byte sequence and start over
    bit	    KBD_SCNST_RLSBIT, c	; test (scan_state & KBD_SCANST_RLS) == 0?
    jr	    z, return		; bit clear, return keycode
    or	    KEY_RELEASED	; keycode |= KEY_RELEASED
return:				; return keycode
    pop	    hl
    pop	    de
    pop	    bc
    ld	    l, a
    ret
Kbd_scan_tbl:
    .byte KEY_NONE, KEY_NONE, KEY_NONE, KEY_NONE, KEY_NONE, KEY_NONE, KEY_NONE, KEY_NONE    ;00-07
    .byte KEY_NONE, KEY_NONE, KEY_NONE, KEY_NONE, KEY_NONE, KEY_TAB, KEY_TICK, KEY_NONE	    ;08-0F
    .byte KEY_NONE, KEY_NONE, KEY_NONE, KEY_NONE, KEY_NONE, KEY_Q, KEY_1, KEY_NONE	    ;10-17
    .byte KEY_NONE, KEY_NONE, KEY_Z, KEY_S, KEY_A, KEY_W, KEY_2, KEY_NONE		    ;18-1F
    .byte KEY_NONE, KEY_C, KEY_X, KEY_D, KEY_E, KEY_4, KEY_3, KEY_NONE			    ;20-27
    .byte KEY_NONE, KEY_SPACE, KEY_V, KEY_F, KEY_T, KEY_R, KEY_5, KEY_NONE		    ;28-2F
    .byte KEY_NONE, KEY_N, KEY_B, KEY_H, KEY_G, KEY_Y, KEY_6, KEY_NONE			    ;30-37
    .byte KEY_NONE, KEY_NONE, KEY_M, KEY_J, KEY_U, KEY_7, KEY_8, KEY_NONE		    ;38-3F
    .byte KEY_NONE, KEY_COMMA, KEY_K, KEY_I, KEY_O, KEY_0, KEY_9, KEY_NONE		    ;40-47
    .byte KEY_NONE, KEY_DOT, KEY_SLASH, KEY_L, KEY_SEMI, KEY_P, KEY_DASH, KEY_NONE	    ;48-4F
    .byte KEY_NONE, KEY_NONE, KEY_APOST, KEY_NONE, KEY_LSQB, KEY_EQUAL, KEY_NONE, KEY_NONE  ;50-57
    .byte KEY_NONE, KEY_NONE, KEY_ENTER, KEY_RSQB, KEY_NONE, KEY_BKSL, KEY_NONE, KEY_NONE   ;58-5F
    .byte KEY_NONE, KEY_NONE, KEY_NONE, KEY_NONE, KEY_NONE, KEY_NONE, KEY_BS, KEY_NONE	    ;60-67
    .byte KEY_NONE, KEY_NONE, KEY_NONE, KEY_NONE, KEY_NONE, KEY_NONE, KEY_NONE, KEY_NONE    ;68-6F
    .byte KEY_NONE, KEY_NONE, KEY_NONE, KEY_NONE, KEY_NONE, KEY_NONE, KEY_ESC, KEY_NONE	    ;70-77
    .byte KEY_NONE, KEY_NONE, KEY_NONE, KEY_NONE, KEY_NONE, KEY_NONE, KEY_NONE, KEY_NONE    ;78-7F
    .byte KEY_NONE, KEY_NONE, KEY_NONE, KEY_NONE					    ;80-83
Kbd_scan_tbl_sz equ $-Kbd_scan_tbl
#endlocal

; uint8_t bin2hex(uint8_t val)
; - converts the lower 4 bits of the 8-bit value "val" to hexadecimal (0-9,A-F)
#local
bin2hex::
    ld	    a, l
    and	    0xF
    cp	    0xA
    jr	    c, decimal
    add	    'A'-10
    ld	    l, a
    ret
decimal:
    add	    '0'
    ld	    l, a
    ret
#endlocal

; void sio_putc(uint8_t ch)
; - write the specified character "ch" to port A
#local
sio_putc::
waitTX:
    ; wait until transmitter is idle
    in	    a, (PORT_SIOACTL)
    bit	    SIORR0_IDX_TBE, a
    jr	    z, waitTX
    ; write output character
    ld	    a, l
    out	    (PORT_SIOADAT), a	; send byte out serial port
    ret
#endlocal

; void sio_puts(uint8_t *text)
; - write the NUL-terminated string at "text" to port A
#local
sio_puts::
    push    hl
    push    bc
nextByte:
    ld	    a, (hl)
    inc	    hl
    or	    a		; fast test a==0
    jr	    z, done
    ld	    b, a
waitTX:
    ; wait until transmitter is idle
    in	    a, (PORT_SIOACTL)
    bit	    SIORR0_IDX_TBE, a
    jr	    z, waitTX
    ; write output character
    ld	    a, b
    out	    (PORT_SIOADAT), a	; send byte out serial port
    jr	    nextByte
done:
    pop	    bc
    pop	    hl
    ret
#endlocal

; void sio_puthex8(uint8_t val)
; - writes the specified 8-bit value "val" as a pair of hex digits to port A
sio_puthex8::
    push    hl
    ld	    h, l
    srl	    l
    srl	    l
    srl	    l
    srl	    l
    call    bin2hex
    call    sio_putc
    ld	    l, h
    call    bin2hex
    call    sio_putc
    pop	    hl
    ret

; void sio_puthex16(uint16_t val)
; - writes the specified 16-bit value "val" as a quad of hex digits to port A
sio_puthex16::
    push    hl
    ld	    l, h
    call    sio_puthex8
    pop	    hl
    jr	    sio_puthex8

; void seg_init()
seg_init::
    xor	    a
    call    seg0_write
    call    seg1_write
    ret

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

#local
; void seg0_writehex(uint8_t val)
; - write hex digit in lower nybble of "val" to 7-segment display
seg0_writehex::
    push    hl
    push    bc
    ld	    bc, hex2seg_table
    ld	    a, l
    and	    0xF	    ; mask off upper nybble of l
    ld	    l, a
    ld	    h, 0
    add	    hl, bc  ; hl = hex2seg_table + (val & 0xF)
    ld	    a, (Seg0_data)
    and	    SEG_DP
    or	    (hl)    ; a = (*Seg0_data & SEG_DP) | hex2seg_table[val & 0xF]
    call    seg0_write
    pop	    bc
    pop	    hl
    ret

; void seg1_writehex(uint8_t val)
; - write hex digit in lower nybble of "val" to 7-segment display
seg1_writehex::
    push    hl
    push    bc
    ld	    bc, hex2seg_table
    ld	    a, l
    and	    0xF	    ; mask off upper nybble of l
    ld	    l, a
    ld	    h, 0
    add	    hl, bc  ; hl = hex2seg_table + (val & 0xF)
    ld	    a, (Seg1_data)
    and	    SEG_DP
    or	    (hl)    ; a = (*Seg1_data & SEG_DP) | hex2seg_table[val & 0xF]
    call    seg1_write
    pop	    bc
    pop	    hl
    ret

hex2seg_table:
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
#endlocal

; void seg0_write(uint8_t bits)
; - parameter passed in A
; - write raw bits to first 7-segment display register
seg0_write::
    ld	    (Seg0_data), a
    out	    (PORT_SEG0), a
    ret

; void seg1_write(uint8_t bits)
; - parameter passed in A
; - write raw bits to second 7-segment display register
seg1_write::
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
    ld	    a, (ix+1)	; 19 T-states
    ld	    a, (ix+1)	; 19 T-states
    djnz    loop	; (b-1)*13+8 T-states
    pop	    bc		; 10 T-states
    nop			; 4 T-states
    ret			; 10 T-states
; We also assume the routine is CALLed, for 17 T-states.
; Total delay is therefore:
;   17 + 11 + 7 + 51*195 - 5 + 10 + 4 + 10 = 9,999
#endlocal

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
; data segment immediately follows code
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
#data DATA,TEXT_end
; define static variables here
Seg0_data:: defs 1	; current value of first 7-segment display byte
Seg1_data:: defs 1	; current value of second 7-segment display byte
Rand16_seed1:: defs 2	; seed value for rand16() routine
Rand16_seed2:: defs 2	; seed value for rand16() routine
