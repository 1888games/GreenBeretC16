TED: {

	.label COLOR_ADDRESS = ZP.ColourAddress
	.label SCREEN_ADDRESS = ZP.ScreenAddress

	.label BANK_SELECT = $dd00


	.label MEMORY_SETUP = $d018

	.label INTERRUPT_VECTOR = $FFFE
	.label INTERRUPT_MASK_REGISTER = $FF0A
	
	.label EXTENDED_BG_COLOR_1 = $ff16
	.label EXTENDED_BG_COLOR_2 = $ff17
	.label BORDER_COLOR = $ff19
	.label BACKGROUND_COLOR = $ff15
	.label COLOR_RAM = $0800 + VIDEO_OFFSET
	.label SCREEN_CONTROL_2 = $ff07
	.label SCREEN_CONTROL = $ff06
	.label RASTER_Y = $FF0B
	.label VERTICAL_CONTROL = $FF06

	.label SND_1_CHAR_ROM_RAM = $FF12
	.label CHARSET_ADDRESS = $FF13
	.label VIDEO_ADDRESS = $FF14


}