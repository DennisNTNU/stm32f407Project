RCC_BASE = 0x40023800

// RCC; Reset Clock Control register descriptions section 7.3
RCC_CR = 0x00          // RCC clock control register
/* check whether PLLs are locked, enable PLLs, clock security system,
   HSE clock bypass, HSE clock ready flag, HSE clock enable, 
   HSI clock calibration values, HSI trimming,  */
RCC_PLLCFGR = 0x04     // RCC PLL configuration register
RCC_CFGR = 0x08        // RCC clock configuration register
RCC_CIR = 0x0C         // RCC clock interrupt register
RCC_AHB1RSTR = 0x10    // RCC AHB1 peripheral reset register
RCC_AHB2RSTR = 0x14    // RCC AHB2 peripheral reset register
RCC_AHB3RSTR = 0x18    // RCC AHB3 peripheral reset register
//Reserved = 0x1C
RCC_APB1RSTR = 0x20    // RCC APB1 peripheral reset register
RCC_APB2RSTR = 0x24    // RCC APB2 peripheral reset register
//Reserved = 0x28
//Reserved = 0x2C
RCC_AHB1ENR = 0x30     // RCC AHB1 peripheral clock enable register
RCC_AHB2ENR = 0x34     // RCC AHB2 peripheral clock enable register
RCC_AHB3ENR = 0x38     // RCC AHB3 peripheral clock enable register
//Reserved = 0x3C
RCC_APB1ENR = 0x40     // RCC APB1 peripheral clock enable register
RCC_APB2ENR = 0x44     // RCC APB2 peripheral clock enable register
//Reserved = 0x48
//Reserved = 0x4C
RCC_AHB1LPENR = 0x50   // RCC AHB1 peripheral clock enable in low power mode register
RCC_AHB2LPENR = 0x54   // RCC AHB2 peripheral clock enable in low power mode register
RCC_AHB3LPENR = 0x58   // RCC AHB3 peripheral clock enable in low power mode register
//Reserved = 0x5C
RCC_APB1LPENR = 0x60   // RCC APB1 peripheral clock enable in low power mode register
RCC_APB2LPENR = 0x64   // RCC APB2 peripheral clock enable in low power mode register
//Reserved = 0x68
//Reserved = 0x6C
RCC_BDCR = 0x70        // RCC Backup domain control register
RCC_CSR = 0x74         // RCC clock control & status register
//Reserved = 0x78
//Reserved = 0x7C
RCC_SSCGR = 0x80       // RCC spread spectrum clock generation register
RCC_PLLI2SCFGR = 0x84  // RCC PLLI2C configuration register

/**

Three clock sources can drive SYSCLK: HSI clock, HSE clock or Main PLL clock.

There is also a low speed internal RC oscillator ~32KHz, LSI RC.
and a low speed externak 32.768KHz crystal oscillator, LSE crystal.

Each clock source can be individually switched off to optimize power use.



*/


GPIOA_BASE = 0x40020000
GPIOB_BASE = 0x40020400
GPIOC_BASE = 0x40020800
GPIOD_BASE = 0x40020C00
GPIOE_BASE = 0x40021000
GPIOF_BASE = 0x40021400
GPIOG_BASE = 0x40021800
GPIOH_BASE = 0x40021C00
GPIOI_BASE = 0x40022000

// GPIO register descriptions section 8.4
GPIO_MODER = 0x00    // port mode register
GPIO_OTYPER = 0x04   // port output type register
GPIO_OSPEEDR = 0x08  // port output speed register
GPIO_PUPDR = 0x0C    // port pull-up/pull-down register
GPIO_IDR = 0x10      // port input data register
GPIO_ODR = 0x14      // port output datee register
GPIO_BSRR = 0x18     // port bit set/reset register
GPIO_LCKR = 0x1C     // port configuration lock register
GPIO_AFRL = 0x20     // alternate function low register
GPIO_AFRH = 0x24     // alternate function high register

