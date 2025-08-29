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
			jsr Move

			ldx ZP.SpriteID

		EndLoop:

			inx
			cpx #MAX_SPRITES + MAX_BULLETS
			bcc Loop

		rts
	}

	Move: {

		lda ZP.SpriteState, x
		and #%00000100
		beq GoRight


	GoLeft:






	GoRight:

		inc ZP.SpriteX, x
		inc ZP.SpriteDirty, x

		jsr SPRITE.RestoreSingleChar



		rts
	}
}