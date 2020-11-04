/*STACK_SIZE = 0x2000; */
/*	. += STACK_SIZE; */

SECTIONS
{
	. = 0x08000000; /* internal flash 1MiB */
	/* . = 0x20000000; */ /* internal SRAM 112KiB, flashing to there isnt so easy */
	.text : 
	{
		*(.vectortable)
		*(.text)
	}
	.data : { *(.data) }
	. = 0x20000000;
	.bss : { *(.bss) }
}
