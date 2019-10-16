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
	.bss : { *(.bss) }
}
