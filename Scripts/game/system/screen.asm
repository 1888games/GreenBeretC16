.namespace SCREEN {

	* = * "Screen"




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

	Exit:

		rts
	}


	CheckScrollAdjust: {

		lda ZP.FineScroll
		cmp #7
		beq DrawFloor.Exit

		clc
		adc #2
		sta ZP.FineScroll

		jmp SetFineScroll

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

		inc ZP.SectorXOffset
		lda ZP.SectorXOffset

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
		lda #32

		Loop:

	
			sta SCREEN_RAM - 1, x
			sta SCREEN_RAM + 239, x
			sta SCREEN_RAM + 499, x
			sta SCREEN_RAM + 749, x

			dex
			bne Loop


		rts	


	}


}