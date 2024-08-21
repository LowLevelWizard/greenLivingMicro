;---------------
; Assembly Code
;---------------
#define __SFR_OFFSET 0x00
#include "avr/io.h"

.global start
.global led

start:
    SBI DDRB, 4     ; [Set Bit Inail Register] DD (D12) as o/p (4)
    CBI DDRD, 2     ; [Clear Bit Inail Register] DD PD2 (D02) as i/p (2)
    RET             ; return to setup() function

led:
    ; Value passed in in R24
    CPI R24, 0x00   ; [Compare immediate] (Passed value) to 0
    BREQ ledOFF     ; [Branch on Equal] if equal to lefOFF
    SBI PORTB, 4    ; sets pin D12 to high
    RET             ; Returns to loop

ledOFF:
    CBI PORTB, 4    ; [Compare immediate] (Pin D12) to (4/High)
    RET             ; Returns to loop

   
  
