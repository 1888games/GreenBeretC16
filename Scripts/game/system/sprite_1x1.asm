.namespace SPRITE {

	BulletCharLSB:		.fill 10, <[$0FA8 + (i * 8)]

	.label BULLET_CHAR_START = 243
	
	Draw1x1: {

		stx ZP.SpriteID

		lda ZP.SpriteColour, x
		sta ZP.Colour

		jsr CalculatePositionAddresses

	BackupChars:

		ldy #0
		lda (ZP.ScreenAddress), y
		sta ZP.BulletStoredChars - MAX_SPRITES, x

		lda (ZP.ColourAddress), y
		sta ZP.BulletStoredColours - MAX_SPRITES, x


	CreateMaskedChars:

		jsr Copy1x1

	PlaceChars:

		ldy #0

		lda ZP.Colour
		sta (ZP.ColourAddress), y
	
		lda ZP.SpriteID
		clc
		adc #BULLET_CHAR_START - MAX_SPRITES
		sta (ZP.ScreenAddress), y



		rts
	}


	Copy1x1: {

		// x = spriteID

		.break

		lda SpriteCharAddress_LSB, x
		sta CopyCharBytes.Branch.Dest + 1

		lda SpriteCharAddress_MSB, x
		sta CopyCharBytes.Branch.Dest + 2


		lda ZP.BulletStoredChars - MAX_SPRITES, x
		jsr GetBgCharAddress

		lda ZP.SpriteState, x
		tay

		lda BulletCharLSB, y
		sta CopyCharBytes.Branch.Source + 1

		lda #$0F
		sta CopyCharBytes.Branch.Source + 2

		ldy #0

		jsr CopyCharBytes


		rts

	}



}