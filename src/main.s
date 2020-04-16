.include "registers.s"
.include "vectortable.s"

.section .text

dummy_handler:
	bx lr

start:
	nop
	nop
	ldr r0, =GPIOC_BASE
	ldr r1, =0x05
	str r1, [r0, #GPIO_MODER]
	ldr r1, =0x0A
	str r1, [r0, #GPIO_PUPDR]
	ldr r1, =0x03
	str r1, [r0, #GPIO_BSRR]
	movw r1, #0xDEAD
	b start

.short 0x1111
.word 0x40020888
.word 0xf64d61ad
