subtitle "Microchip MPLAB XC8 C Compiler v2.45 (Free license) build 20230818022343 Og1 "

pagewidth 120

	opt flic

	processor	16F877A
include "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\16f877a.cgen.inc"
getbyte	macro	val,pos
	(((val) >> (8 * pos)) and 0xff)
endm
byte0	macro	val
	(getbyte(val,0))
endm
byte1	macro	val
	(getbyte(val,1))
endm
byte2	macro	val
	(getbyte(val,2))
endm
byte3	macro	val
	(getbyte(val,3))
endm
byte4	macro	val
	(getbyte(val,4))
endm
byte5	macro	val
	(getbyte(val,5))
endm
byte6	macro	val
	(getbyte(val,6))
endm
byte7	macro	val
	(getbyte(val,7))
endm
getword	macro	val,pos
	(((val) >> (8 * pos)) and 0xffff)
endm
word0	macro	val
	(getword(val,0))
endm
word1	macro	val
	(getword(val,2))
endm
word2	macro	val
	(getword(val,4))
endm
word3	macro	val
	(getword(val,6))
endm
gettword	macro	val,pos
	(((val) >> (8 * pos)) and 0xffffff)
endm
tword0	macro	val
	(gettword(val,0))
endm
tword1	macro	val
	(gettword(val,3))
endm
tword2	macro	val
	(gettword(val,6))
endm
getdword	macro	val,pos
	(((val) >> (8 * pos)) and 0xffffffff)
endm
dword0	macro	val
	(getdword(val,0))
endm
dword1	macro	val
	(getdword(val,4))
endm
clrc	macro
	bcf	3,0
	endm
clrz	macro
	bcf	3,2
	endm
setc	macro
	bsf	3,0
	endm
setz	macro
	bsf	3,2
	endm
skipc	macro
	btfss	3,0
	endm
skipz	macro
	btfss	3,2
	endm
skipnc	macro
	btfsc	3,0
	endm
skipnz	macro
	btfsc	3,2
	endm
# 54 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic16f877a.h"
INDF equ 00h ;# 
# 61 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic16f877a.h"
TMR0 equ 01h ;# 
# 68 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic16f877a.h"
PCL equ 02h ;# 
# 75 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic16f877a.h"
STATUS equ 03h ;# 
# 161 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic16f877a.h"
FSR equ 04h ;# 
# 168 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic16f877a.h"
PORTA equ 05h ;# 
# 218 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic16f877a.h"
PORTB equ 06h ;# 
# 280 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic16f877a.h"
PORTC equ 07h ;# 
# 342 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic16f877a.h"
PORTD equ 08h ;# 
# 404 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic16f877a.h"
PORTE equ 09h ;# 
# 436 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic16f877a.h"
PCLATH equ 0Ah ;# 
# 456 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic16f877a.h"
INTCON equ 0Bh ;# 
# 534 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic16f877a.h"
PIR1 equ 0Ch ;# 
# 596 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic16f877a.h"
PIR2 equ 0Dh ;# 
# 636 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic16f877a.h"
TMR1 equ 0Eh ;# 
# 643 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic16f877a.h"
TMR1L equ 0Eh ;# 
# 650 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic16f877a.h"
TMR1H equ 0Fh ;# 
# 657 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic16f877a.h"
T1CON equ 010h ;# 
# 732 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic16f877a.h"
TMR2 equ 011h ;# 
# 739 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic16f877a.h"
T2CON equ 012h ;# 
# 810 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic16f877a.h"
SSPBUF equ 013h ;# 
# 817 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic16f877a.h"
SSPCON equ 014h ;# 
# 887 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic16f877a.h"
CCPR1 equ 015h ;# 
# 894 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic16f877a.h"
CCPR1L equ 015h ;# 
# 901 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic16f877a.h"
CCPR1H equ 016h ;# 
# 908 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic16f877a.h"
CCP1CON equ 017h ;# 
# 966 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic16f877a.h"
RCSTA equ 018h ;# 
# 1061 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic16f877a.h"
TXREG equ 019h ;# 
# 1068 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic16f877a.h"
RCREG equ 01Ah ;# 
# 1075 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic16f877a.h"
CCPR2 equ 01Bh ;# 
# 1082 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic16f877a.h"
CCPR2L equ 01Bh ;# 
# 1089 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic16f877a.h"
CCPR2H equ 01Ch ;# 
# 1096 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic16f877a.h"
CCP2CON equ 01Dh ;# 
# 1154 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic16f877a.h"
ADRESH equ 01Eh ;# 
# 1161 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic16f877a.h"
ADCON0 equ 01Fh ;# 
# 1257 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic16f877a.h"
OPTION_REG equ 081h ;# 
# 1327 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic16f877a.h"
TRISA equ 085h ;# 
# 1377 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic16f877a.h"
TRISB equ 086h ;# 
# 1439 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic16f877a.h"
TRISC equ 087h ;# 
# 1501 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic16f877a.h"
TRISD equ 088h ;# 
# 1563 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic16f877a.h"
TRISE equ 089h ;# 
# 1620 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic16f877a.h"
PIE1 equ 08Ch ;# 
# 1682 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic16f877a.h"
PIE2 equ 08Dh ;# 
# 1722 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic16f877a.h"
PCON equ 08Eh ;# 
# 1756 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic16f877a.h"
SSPCON2 equ 091h ;# 
# 1818 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic16f877a.h"
PR2 equ 092h ;# 
# 1825 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic16f877a.h"
SSPADD equ 093h ;# 
# 1832 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic16f877a.h"
SSPSTAT equ 094h ;# 
# 2001 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic16f877a.h"
TXSTA equ 098h ;# 
# 2082 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic16f877a.h"
SPBRG equ 099h ;# 
# 2089 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic16f877a.h"
CMCON equ 09Ch ;# 
# 2159 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic16f877a.h"
CVRCON equ 09Dh ;# 
# 2224 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic16f877a.h"
ADRESL equ 09Eh ;# 
# 2231 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic16f877a.h"
ADCON1 equ 09Fh ;# 
# 2290 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic16f877a.h"
EEDATA equ 010Ch ;# 
# 2297 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic16f877a.h"
EEADR equ 010Dh ;# 
# 2304 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic16f877a.h"
EEDATH equ 010Eh ;# 
# 2311 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic16f877a.h"
EEADRH equ 010Fh ;# 
# 2318 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic16f877a.h"
EECON1 equ 018Ch ;# 
# 2363 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic16f877a.h"
EECON2 equ 018Dh ;# 
# 54 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic16f877a.h"
INDF equ 00h ;# 
# 61 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic16f877a.h"
TMR0 equ 01h ;# 
# 68 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic16f877a.h"
PCL equ 02h ;# 
# 75 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic16f877a.h"
STATUS equ 03h ;# 
# 161 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic16f877a.h"
FSR equ 04h ;# 
# 168 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic16f877a.h"
PORTA equ 05h ;# 
# 218 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic16f877a.h"
PORTB equ 06h ;# 
# 280 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic16f877a.h"
PORTC equ 07h ;# 
# 342 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic16f877a.h"
PORTD equ 08h ;# 
# 404 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic16f877a.h"
PORTE equ 09h ;# 
# 436 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic16f877a.h"
PCLATH equ 0Ah ;# 
# 456 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic16f877a.h"
INTCON equ 0Bh ;# 
# 534 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic16f877a.h"
PIR1 equ 0Ch ;# 
# 596 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic16f877a.h"
PIR2 equ 0Dh ;# 
# 636 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic16f877a.h"
TMR1 equ 0Eh ;# 
# 643 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic16f877a.h"
TMR1L equ 0Eh ;# 
# 650 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic16f877a.h"
TMR1H equ 0Fh ;# 
# 657 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic16f877a.h"
T1CON equ 010h ;# 
# 732 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic16f877a.h"
TMR2 equ 011h ;# 
# 739 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic16f877a.h"
T2CON equ 012h ;# 
# 810 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic16f877a.h"
SSPBUF equ 013h ;# 
# 817 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic16f877a.h"
SSPCON equ 014h ;# 
# 887 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic16f877a.h"
CCPR1 equ 015h ;# 
# 894 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic16f877a.h"
CCPR1L equ 015h ;# 
# 901 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic16f877a.h"
CCPR1H equ 016h ;# 
# 908 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic16f877a.h"
CCP1CON equ 017h ;# 
# 966 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic16f877a.h"
RCSTA equ 018h ;# 
# 1061 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic16f877a.h"
TXREG equ 019h ;# 
# 1068 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic16f877a.h"
RCREG equ 01Ah ;# 
# 1075 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic16f877a.h"
CCPR2 equ 01Bh ;# 
# 1082 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic16f877a.h"
CCPR2L equ 01Bh ;# 
# 1089 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic16f877a.h"
CCPR2H equ 01Ch ;# 
# 1096 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic16f877a.h"
CCP2CON equ 01Dh ;# 
# 1154 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic16f877a.h"
ADRESH equ 01Eh ;# 
# 1161 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic16f877a.h"
ADCON0 equ 01Fh ;# 
# 1257 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic16f877a.h"
OPTION_REG equ 081h ;# 
# 1327 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic16f877a.h"
TRISA equ 085h ;# 
# 1377 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic16f877a.h"
TRISB equ 086h ;# 
# 1439 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic16f877a.h"
TRISC equ 087h ;# 
# 1501 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic16f877a.h"
TRISD equ 088h ;# 
# 1563 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic16f877a.h"
TRISE equ 089h ;# 
# 1620 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic16f877a.h"
PIE1 equ 08Ch ;# 
# 1682 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic16f877a.h"
PIE2 equ 08Dh ;# 
# 1722 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic16f877a.h"
PCON equ 08Eh ;# 
# 1756 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic16f877a.h"
SSPCON2 equ 091h ;# 
# 1818 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic16f877a.h"
PR2 equ 092h ;# 
# 1825 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic16f877a.h"
SSPADD equ 093h ;# 
# 1832 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic16f877a.h"
SSPSTAT equ 094h ;# 
# 2001 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic16f877a.h"
TXSTA equ 098h ;# 
# 2082 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic16f877a.h"
SPBRG equ 099h ;# 
# 2089 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic16f877a.h"
CMCON equ 09Ch ;# 
# 2159 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic16f877a.h"
CVRCON equ 09Dh ;# 
# 2224 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic16f877a.h"
ADRESL equ 09Eh ;# 
# 2231 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic16f877a.h"
ADCON1 equ 09Fh ;# 
# 2290 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic16f877a.h"
EEDATA equ 010Ch ;# 
# 2297 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic16f877a.h"
EEADR equ 010Dh ;# 
# 2304 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic16f877a.h"
EEDATH equ 010Eh ;# 
# 2311 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic16f877a.h"
EEADRH equ 010Fh ;# 
# 2318 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic16f877a.h"
EECON1 equ 018Ch ;# 
# 2363 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic16f877a.h"
EECON2 equ 018Dh ;# 
	debug_source C
	FNROOT	_main
	global	_RB1
_RB1	set	0x31
	global	_RA0
_RA0	set	0x28
	global	_TRISB1
_TRISB1	set	0x431
	global	_TRISA0
_TRISA0	set	0x428
; #config settings
	config pad_punits      = on
	config apply_mask      = off
	config ignore_cmsgs    = off
	config default_configs = off
	config default_idlocs  = off
	config FOSC = "HS"
	config WDTE = "OFF"
	config PWRTE = "OFF"
	config BOREN = "ON"
	config LVP = "ON"
	config CPD = "OFF"
	config WRT = "OFF"
	config CP = "OFF"
	file	"main.as"
	line	#
psect cinit,class=CODE,delta=2
global start_initialization
start_initialization:

global __initialization
__initialization:
psect cinit,class=CODE,delta=2,merge=1
global end_of_initialization,__end_of__initialization

;End of C runtime variable initialization code

end_of_initialization:
__end_of__initialization:
clrf status
ljmp _main	;jump to C main() function
psect	cstackCOMMON,class=COMMON,space=1,noexec
global __pcstackCOMMON
__pcstackCOMMON:
??_main:	; 1 bytes @ 0x0
?_main:	; 2 bytes @ 0x0
;!
;!Data Sizes:
;!    Strings     0
;!    Constant    0
;!    Data        0
;!    BSS         0
;!    Persistent  0
;!    Stack       0
;!
;!Auto Spaces:
;!    Space          Size  Autos    Used
;!    COMMON           14      0       0
;!    BANK0            80      0       0
;!    BANK1            80      0       0
;!    BANK3            96      0       0
;!    BANK2            96      0       0

;!
;!Pointer List with Targets:
;!
;!    None.


;!
;!Critical Paths under _main in COMMON
;!
;!    None.
;!
;!Critical Paths under _main in BANK0
;!
;!    None.
;!
;!Critical Paths under _main in BANK1
;!
;!    None.
;!
;!Critical Paths under _main in BANK3
;!
;!    None.
;!
;!Critical Paths under _main in BANK2
;!
;!    None.

;;
;;Main: autosize = 0, tempsize = 0, incstack = 0, save=0
;;

;!
;!Call Graph Tables:
;!
;! ---------------------------------------------------------------------------------
;! (Depth) Function   	        Calls       Base Space   Used Autos Params    Refs
;! ---------------------------------------------------------------------------------
;! (0) _main                                                 0     0      0       0
;! ---------------------------------------------------------------------------------
;! Estimated maximum stack depth 0
;! ---------------------------------------------------------------------------------
;!
;! Call Graph Graphs:
;!
;! _main (ROOT)
;!

;! Address spaces:

;!Name               Size   Autos  Total    Cost      Usage
;!BITCOMMON            E      0       0       0        0.0%
;!EEDATA             100      0       0       0        0.0%
;!NULL                 0      0       0       0        0.0%
;!CODE                 0      0       0       0        0.0%
;!COMMON               E      0       0       1        0.0%
;!BITSFR0              0      0       0       1        0.0%
;!SFR0                 0      0       0       1        0.0%
;!BITSFR1              0      0       0       2        0.0%
;!SFR1                 0      0       0       2        0.0%
;!STACK                0      0       0       2        0.0%
;!ABS                  0      0       0       3        0.0%
;!BITBANK0            50      0       0       4        0.0%
;!BITSFR3              0      0       0       4        0.0%
;!SFR3                 0      0       0       4        0.0%
;!BANK0               50      0       0       5        0.0%
;!BITSFR2              0      0       0       5        0.0%
;!SFR2                 0      0       0       5        0.0%
;!BITBANK1            50      0       0       6        0.0%
;!BANK1               50      0       0       7        0.0%
;!BITBANK3            60      0       0       8        0.0%
;!BANK3               60      0       0       9        0.0%
;!BITBANK2            60      0       0      10        0.0%
;!BANK2               60      0       0      11        0.0%
;!DATA                 0      0       0      12        0.0%

	global	_main

;; *************** function _main *****************
;; Defined at:
;;		line 14 in file "main.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  2   12[None  ] int 
;; Registers used:
;;		None
;; Tracked objects:
;;		On entry : B00/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         0       0       0       0       0
;;Total ram usage:        0 bytes
;; This function calls:
;;		Nothing
;; This function is called by:
;;		Startup code after reset
;; This function uses a non-reentrant model
;;
psect	maintext,global,class=CODE,delta=2,split=1,group=0
	file	"main.c"
	line	14
global __pmaintext
__pmaintext:	;psect for function _main
psect	maintext
	file	"main.c"
	line	14
	
_main:	
;incstack = 0
	callstack 8
; Regs used in _main: []
	line	17
	
l562:	
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	bcf	(1064/8)^080h,(1064)&7	;volatile
	line	18
	bsf	(1073/8)^080h,(1073)&7	;volatile
	line	20
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(40/8),(40)&7	;volatile
	line	21
	bcf	(49/8),(49)&7	;volatile
	line	23
	
l13:	
	line	25
	btfsc	(49/8),(49)&7	;volatile
	goto	u11
	goto	u10
u11:
	goto	l14
u10:
	line	26
	
l564:	
	bsf	(40/8),(40)&7	;volatile
	line	27
	goto	l13
	line	28
	
l14:	
	line	29
	bcf	(40/8),(40)&7	;volatile
	goto	l13
	global	start
	ljmp	start
	callstack 0
	line	34
GLOBAL	__end_of_main
	__end_of_main:
	signat	_main,90
global	___latbits
___latbits	equ	2
	global	btemp
	btemp set 07Eh

	DABS	1,126,2	;btemp
	global	wtemp0
	wtemp0 set btemp+0
	end
