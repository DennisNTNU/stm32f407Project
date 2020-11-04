.include "registers.s"

	nop
	nop
	ldr r0, =RCC_BASE      // load reset and clock control base address into R0
	ldr r1, [r0, #RCC_CR]  // load value of register RCC_CR into r1
