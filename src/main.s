.include "registers.s"
.include "vectortable.s"

.section .text

dummy_handler:
	bx lr

start:
.include "clock_config.s"
	nop
	nop
	ldr r0, =GPIOC_BASE // this value is actually stored right at the end of this program
	// '=': literal value
	ldr r1, =0x05
	str r1, [r0, #GPIO_MODER]
	ldr r1, =0x0A // load literal 0x0A into register R1
	str r1, [r0, #GPIO_PUPDR] // store value in R1 at address stored in R0 + offset GPIO_PUPDR
	ldr r1, =0x03
	str r1, [r0, #GPIO_BSRR]
	movw r1, #0xDEAD
	b start

.short 0x1111
.word 0x40020888
.word 0xf64d61ad
