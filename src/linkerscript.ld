//STACK_SIZE = 0x2000;

SECTIONS
{
	. = 0x08000000;
	.text : 
	{
		*(.vectortable)
		*(.text)
	}
	.data : { *(.data) }
	. = 0x20000000;
//	. += STACK_SIZE;
	.bss : { *(.bss) }
}
