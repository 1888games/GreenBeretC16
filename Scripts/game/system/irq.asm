
IRQ: {

	*= * "IRQ"

	.label HudIRQLine = 0
	.label HudEndLine = 48
	.label MainIRQLine =200

	.label ResetBorderIRQLine = 0
	.label MultiplexerIRQLine = 20
	
	


	HudBeginIRQ: {

		:StoreState()

		lda #BLACK
		sta TED.BACKGROUND_COLOR

		lda #<HudEndIRQ
		sta TED.INTERRUPT_VECTOR

		lda #>HudEndIRQ
		sta TED.INTERRUPT_VECTOR + 1

		lda #HudEndLine
		sta TED.RASTER_Y

		lda #%11000100   
		sta TED.SND_1_CHAR_ROM_RAM     // Bit 2 = 0 (RAM)

		lda #%11010001   
		sta TED.CHARSET_ADDRESS 

		lda #%10010000
    	sta $FF07

		asl $ff09	

		:RestoreState()

		rti

	}

	SetMainIRQ: {

		lda #<MainIRQ
		sta TED.INTERRUPT_VECTOR

		lda #>MainIRQ
		sta TED.INTERRUPT_VECTOR + 1

		lda #MainIRQLine
		sta TED.RASTER_Y

		rts


	}

	HudEndIRQ: {


		:StoreState()
		
		jsr SetMainIRQ


		lda #%11000000   
		sta TED.SND_1_CHAR_ROM_RAM     // Bit 2 = 0 (RAM)

		lda #%00111000      // $38
		sta TED.CHARSET_ADDRESS 


		lda #LUMINANCE_5 + 13
		sta TED.BACKGROUND_COLOR

		lda $FF07
   		ora ZP.FineScroll
    	sta $FF07
		
		asl $ff09

		:RestoreState()

		rti

	}

	MainIRQ: {

		:StoreState()

			inc ZP.PerformFrameCodeFlag
			
			lda ZP.FrameSwitch
			eor #%00000001
			sta ZP.FrameSwitch

			jsr INPUT.ReadJoystick

		DoneIRQ:

			lda #<HudBeginIRQ
			sta TED.INTERRUPT_VECTOR

			lda #>HudBeginIRQ
			sta TED.INTERRUPT_VECTOR + 1

			lda #HudIRQLine
			sta TED.RASTER_Y

			lda #%11000100   
			sta TED.SND_1_CHAR_ROM_RAM     // Bit 2 = 0 (RAM)

			asl $ff09

			:RestoreState()

		rti

	}

	





}