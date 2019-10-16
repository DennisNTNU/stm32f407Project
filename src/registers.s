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
GPIO_OTYPER = 0x04    // port output type register
GPIO_OSPEEDR = 0x08    // port output speed register
GPIO_PUPDR = 0x0C    // port pull-up/pull-down register
GPIO_IDR = 0x10    // port input data register
GPIO_ODR = 0x14    // port output datee register
GPIO_BSRR = 0x18    // port bit set/reset register
GPIO_LCKR = 0x1C    // port configuration lock register
GPIO_AFRL = 0x20    // alternate function low register
GPIO_AFRH = 0x24    // alternate function high register
