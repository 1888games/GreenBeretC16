.namespace SPRITE {



	Draw1x1: {



		lda ZP.SpriteDirty, x
		beq DontDraw

		jsr CommonDraw


		

	DontDraw:




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