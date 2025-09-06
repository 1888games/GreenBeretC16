.namespace SPRITE {


	BackupChars: {

		lda ZP.SpriteMoved, x
		bne DoBackup

		rts

	DoBackup:

		ldy #0
		lda (ZP.ScreenAddress), y
		sta ZP.SpriteStoredChars + 0, x

		lda (ZP.ColourAddress), y
		sta ZP.SpriteStoredColours + 0, x

		iny 
		lda (ZP.ScreenAddress), y
		sta ZP.SpriteStoredChars + (MAX_SPRITES * 1), x 

		lda (ZP.ColourAddress), y
		sta ZP.SpriteStoredColours + (MAX_SPRITES * 1), x

		lda ZP.SpriteState, x
		and #%11101111
		cmp #STATE_CROUCH_RIGHT
		bcc TwoByThree

		jmp Backup3x1

	TwoByThree:

		ldy #40
		lda (ZP.ScreenAddress), y
		sta ZP.SpriteStoredChars + (MAX_SPRITES * 2), x 

		lda (ZP.ColourAddress), y
		sta ZP.SpriteStoredColours + (MAX_SPRITES * 2), x 

		iny 
		lda (ZP.ScreenAddress), y
		sta ZP.SpriteStoredChars + (MAX_SPRITES * 3), x 

		lda (ZP.ColourAddress), y
		sta ZP.SpriteStoredColours + (MAX_SPRITES * 3), x 

		ldy #80
		lda (ZP.ScreenAddress), y
		sta ZP.SpriteStoredChars + (MAX_SPRITES * 4), x 

		lda (ZP.ColourAddress), y
		sta ZP.SpriteStoredColours +(MAX_SPRITES * 4), x 

		iny 
		lda (ZP.ScreenAddress), y
		sta ZP.SpriteStoredChars + (MAX_SPRITES * 5), x 

		lda (ZP.ColourAddress), y
		sta ZP.SpriteStoredColours + (MAX_SPRITES * 5), x 

		lda #0
		sta ZP.SpriteMoved, x



		rts
	}

	RestoreChars: {


		ldy #0
		lda ZP.SpriteStoredChars + (MAX_SPRITES * 0), x
		cmp #PLAYER_CHAR_START
		bcs Skip1
		sta (ZP.ScreenAddress), y
		lda ZP.SpriteStoredColours + (MAX_SPRITES * 0), x
		sta (ZP.ColourAddress), y

	Skip1:

		iny 
		lda ZP.SpriteStoredChars + (MAX_SPRITES * 1), x
		sta (ZP.ScreenAddress), y
		lda ZP.SpriteStoredColours + (MAX_SPRITES * 1), x
		sta (ZP.ColourAddress), y

		lda ZP.SpriteState, x
		and #%11101111
		cmp #STATE_CROUCH_RIGHT
		bcc TwoByThree

		jmp Restore3x1

	TwoByThree:


		ldy #40
		lda ZP.SpriteStoredChars + (MAX_SPRITES * 2), x
		sta (ZP.ScreenAddress), y
		lda ZP.SpriteStoredColours + (MAX_SPRITES * 2), x
		sta (ZP.ColourAddress), y

		iny 
		lda ZP.SpriteStoredChars + (MAX_SPRITES * 3), x
		sta (ZP.ScreenAddress), y
		lda ZP.SpriteStoredColours + (MAX_SPRITES * 3), x
		sta (ZP.ColourAddress), y

		ldy #80
		lda ZP.SpriteStoredChars + (MAX_SPRITES * 4), x
		sta (ZP.ScreenAddress), y
		lda ZP.SpriteStoredColours + (MAX_SPRITES * 4), x
		sta (ZP.ColourAddress), y

		iny 
		lda ZP.SpriteStoredChars + (MAX_SPRITES * 5), x
		sta (ZP.ScreenAddress), y
		lda ZP.SpriteStoredColours + (MAX_SPRITES * 5), x
		sta (ZP.ColourAddress), y


		rts
	}

	PlaceChars: {

		lda ZP.SpriteState, x
		and #%11101111
		cmp #STATE_CROUCH_RIGHT
		bcc TwoByThree

		jmp Place3x1


	TwoByThree:

		ldy #0

		lda ZP.Colour
		sta (ZP.ColourAddress), y
	
		lda SpriteStart, x	
		sta (ZP.ScreenAddress), y

		clc
		adc #1
		iny

		sta (ZP.ScreenAddress), y

		adc #1
		ldy #40

		sta (ZP.ScreenAddress), y

		iny
		adc #1
		sta (ZP.ScreenAddress), y

		ldy #80
		adc #1
		sta (ZP.ScreenAddress), y

		iny
		adc #1
		sta (ZP.ScreenAddress), y

		lda ZP.Colour

		ldy #1
		sta (ZP.ColourAddress), y

		ldy #40
		sta (ZP.ColourAddress), y

		iny
		sta (ZP.ColourAddress), y

		ldy #80
		sta (ZP.ColourAddress), y

		iny
		sta (ZP.ColourAddress), y


		rts


		
	}







}