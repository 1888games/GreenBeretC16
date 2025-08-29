.namespace SPRITE {

	BulletChar_LSB:		.fill 10, <[$0FA8 + (i * 8)]


	Draw1x1: {



		lda ZP.SpriteDirty, x
		beq DontDraw

		jsr CommonDraw


		

	DontDraw:




		rts
	}


	Copy1x1: {

		// x = spriteID

		lda SpriteCharAddress_LSB, x
		sta CopyCharBytes.Branch.Dest + 1

		lda SpriteCharAddress_MSB, x
		sta CopyCharBytes.Branch.Dest + 2


		ldy #0

		lda ZP.BulletStoredChars - MAX_SPRITES, x
		jsr GetBgCharAddress

		ldx ZP.Frame
		lda BulletCharLSB - MAX_SPRITES, x
		sta CopyCharBytes.Branch.Source + 1

		lda TopLeftCharsMSB, x
		sta CopyCharBytes.Branch.Source + 2



			rts

	}


	BackupSingleChar: {

	
		ldy #0
		lda (ZP.ScreenAddress), y
		sta ZP.SpriteStoredChars + 0, x

		lda (ZP.ColourAddress), y
		sta ZP.SpriteStoredColours + 0, x


		rts
	}


	RestoreSingleChar: {


		ldy #0
		lda ZP.SpriteStoredChars + 0, x
		sta (ZP.ScreenAddress), y

		lda ZP.SpriteStoredColours + 0, x
		sta (ZP.ColourAddress), y



		rts
	}

}