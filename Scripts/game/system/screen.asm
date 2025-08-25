.namespace SCREEN {

	* = * "Screen"


	SetColoursAndMode: {

		lda #%10010000
        sta TED.SCREEN_CONTROL_2

		lda #%11000000   
		sta TED.SND_1_CHAR_ROM_RAM     // Bit 2 = 0 (RAM)

		lda #LUMINANCE_1 + WHITE
		sta TED.BORDER_COLOR

		lda #LUMINANCE_5 + 13
		sta TED.BACKGROUND_COLOR

		lda #%00111000      // $38
		sta TED.CHARSET_ADDRESS 

		lda #LUMINANCE_1 + BLACK 
		sta TED.EXTENDED_BG_COLOR_1

		lda #LUMINANCE_7 + RED
		sta TED.EXTENDED_BG_COLOR_2

		lda #%00110000
		sta $FF14
	 
		rts

	}




	DrawFloor: {

		ldx #0

	FloorLoop:

		lda #37
		sta SCREEN_RAM + (40 * 24), x

		lda #LUMINANCE_7 + WHITE + 8
		sta TED.COLOR_RAM + (40 * 24), x

		inx
		cpx #40
		bcc FloorLoop

		rts
	}


	CheckScrollAdjust: {

		lda ZP.FineScroll
		cmp #7
		beq Okay

		clc
		adc #2
		sta ZP.FineScroll

		jsr SetFineScroll


	Okay:

		
		rts
	}

	SetFineScroll: {

		lda $FF07
		and #%11111000
		ora ZP.FineScroll
		sta $FF07

		rts

	}

	Scroll: {

		lda ZP.PlayerX
		cmp #SCROLL_THRESHOLD
		bcs DoScroll

		lda #0
		rts

	DoScroll:


		lda ZP.FineScroll
		sec
		sbc #2
		bpl NoWrap

		lda ZP.SectorXOffset
		clc
		adc #1
		sta ZP.SectorXOffset

		cmp ZP.ScrollSectorLength
		bcc NotNextSector

		inc ZP.ScrollSectorNumber

		lda #0
		sta ZP.SectorXOffset

	NotNextSector:

		lda #7

	NoWrap:

		sta ZP.FineScroll

		jsr SetFineScroll
		
		lda ZP.FineScroll
		cmp #7
		beq Scroll

		lda #1
		rts

	Scroll:

		jsr MAP.FillScreen

		lda #$FF
		rts

	}
	


	Clear: {

		ldx #250
		lda #0

		Loop:

			sta SCREEN_RAM - 1, x
			sta SCREEN_RAM + 249, x
			sta SCREEN_RAM + 499, x
			sta SCREEN_RAM + 749, x

			dex
			bne Loop


		rts	


	}


}