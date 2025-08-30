.namespace GAME {


	* = * "Game"


	Show: {


		SetColoursAndMode:
		
			lda #%10010000
	        sta TED.SCREEN_CONTROL_2

			lda #LUMINANCE_1 + WHITE
			sta TED.BORDER_COLOR

			lda #LUMINANCE_1 + BLACK 
			sta TED.EXTENDED_BG_COLOR_1

			lda #LUMINANCE_7 + RED
			sta TED.EXTENDED_BG_COLOR_2

			lda #%00110000
			sta TED.VIDEO_ADDRESS


		jsr MAP.CopyMapTo200
		jsr SCREEN.Clear
		
		jsr NewLevel
		
		jsr SCREEN.DrawFloor

		jsr MAP.FillScreen

		jsr PLAYER.Initialise
		jsr BULLET.Initialise

		jsr DrawHud

		lda #1
		sta ZP.FrameSwitch
		
		jmp Loop
	}


    .encoding "screencode_upper"
	Hud1:	.text "LIVES 3   SCORE   HI-SCORE   STAGE 1"
	Hud2:	.text "00000     00000"

	DrawHud: {


		ldx #0
		
		Loop:

			lda Hud1, x
			sta SCREEN_RAM + 82, x

			lda #LUMINANCE_5 + RED
			sta TED.COLOR_RAM + 82, x

			cpx #15
			bcs NoScore


			lda Hud2, x
			sta SCREEN_RAM + 132, x

			lda #LUMINANCE_7 + WHITE
			sta TED.COLOR_RAM + 132, x


		NoScore:
	
			inx
			cpx #36
			bcc Loop

	

		rts

	}



	NewLevel: {

		jsr MAP.CalculateMapAddresses

		jsr ResetFineScroll
		
		lda #0
		sta ZP.ScrollSectorNumber
		sta ZP.SectorXOffset

		


		rts
	}

	ResetFineScroll: {

		lda #7
		sta ZP.FineScroll

		lda $FF07
		and #%11111000
		ora ZP.FineScroll
		sta $FF07

		rts
	}

	Loop: {

	
		jsr MAIN.WaitForIRQ

		jsr PLAYER.FrameUpdate

		lda ZP.FrameSwitch
		bne OddFrame

	EvenFrame:

		jsr PLAYER.EvenFrameUpdate 
		jmp Loop

	OddFrame:

		inc TED.BORDER_COLOR


		jsr BULLET.OddFrameUpdate

		dec TED.BORDER_COLOR
		jmp Loop
	}





}