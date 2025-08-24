
IRQ: {

	*= * "IRQ"

	.label OpenBorderIRQLine = 249
	.label MainIRQLine =240

	.label ResetBorderIRQLine = 0
	.label MultiplexerIRQLine = 20
	
	

	SetupInterrupts: {

		sei
		lda #<MainIRQ
		sta BANK_IN_RAM
		sta TED.INTERRUPT_VECTOR

		lda #>MainIRQ
		sta TED.INTERRUPT_VECTOR + 1

		lda #MainIRQLine
		sta TED.RASTER_Y

		cli

		rts

	}



	

	MainIRQ: {

		:StoreState()


		//SetDebugBorder(3)

			lda #TRUE
			sta ZP.PerformFrameCodeFlag
			
			lda ZP.Counter
			clc
			adc #1
			sta ZP.Counter
			and #%00000001
			sta ZP.FrameSwitch

			jsr INPUT.ReadJoystick

		DoneIRQ:

			
			lda $ff09
			sta $ff09

			//SetDebugBorder(0)

			:RestoreState()

		rti

	}

	





}