;---------------
; Assembly Code
;---------------
#define __SFR_OFFSET 0x00
#include "avr/io.h"

.global start
.global led

start:
    SBI   DDRB, 4             ;set PB4 (D12) as o/p
    RET                       ;return to setup() function
