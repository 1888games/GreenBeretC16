.namespace BULLET {

	* = * "Bullet"

	Initialise: {

		ldx #MAX_SPRITES

		lda #$FF

		Loop:

			sta ZP.SpriteTimer, x

			inx
			cpx #MAX_SPRITES + MAX_BULLETS
			bcc Loop


		rts

	}

	FrameUpdate: {

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