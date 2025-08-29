.namespace BULLET {

	* = * "Bullet"

	Initialise: {

		ldx #0

		lda #$FF

		Loop:

			sta ZP.BulletTimer, x

			inx
			cpx #MAX_BULLETS
			bcc Loop


		rts

	}


	// a = bullet type?

	Fire: {

		pha


		ldx #MAX_SPRITES

		Loop:

			lda ZP.SpriteTimer, x
			bmi Found

			inx
			cpx #MAX_BULLETS + MAX_SPRITES
			bcc Loop

			ldx #MAX_SPRITES

		Found:

			pla
			sta ZP.SpriteState, x

			lda #1
			sta ZP.SpriteTimer, x

			lda #255
			sta ZP.BulletStoredChars - MAX_SPRITES, x


			// caller to set direction and position?


		rts
	}

	OddFrameUpdate: {

		ldx #MAX_SPRITES

		Loop:

			stx ZP.SpriteID

			lda ZP.SpriteTimer, x
			bmi EndLoop
			beq Ready

			dec ZP.SpriteTimer, x
			jmp EndLoop

		Ready:

			jsr SPRITE.CalculatePositionAddresses

			lda ZP.BulletStoredChars - MAX_SPRITES, x
			cmp #255
			beq IsFirstFrame

		NotFirstFrame:

			jsr Move

		IsFirstFrame:

			jsr Draw

			ldx ZP.SpriteID

		EndLoop:

			inx
			cpx #MAX_SPRITES + MAX_BULLETS
			bcc Loop

		rts
	}


	Draw: {



		BackupFirst:

			ldy #0
			lda (ZP.ScreenAddress), y
			sta ZP.BulletStoredChars - MAX_SPRITES, x

			lda (ZP.ColourAddress), y
			sta ZP.BulletStoredColours - MAX_SPRITES, x
			
		NowDraw:	

			




		rts
	}


	Move: {


		rts

		lda ZP.SpriteState, x
		and #%00010000
		beq GoRight


	GoLeft:






	GoRight:

		inc ZP.SpriteX, x
		inc ZP.SpriteDirty, x

		jsr SPRITE.RestoreSingleChar



		rts
	}
}