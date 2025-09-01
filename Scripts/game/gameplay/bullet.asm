.namespace BULLET {

	* = * "Bullet"

	BulletCharColour:	.byte WHITE + LUMINANCE_7 + 8
						.byte WHITE + LUMINANCE_7 + 8
						.byte YELLOW + LUMINANCE_6 + 8
						.byte WHITE + LUMINANCE_7 + 8
						.byte RED + LUMINANCE_4 + 8


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

			lda ZP.SpriteTimer, x
			bmi EndLoop 

	
			jsr SPRITE.Draw1x1

			ldx ZP.SpriteID

		EndLoop:

			inx
			cpx #MAX_SPRITES + MAX_BULLETS
			bcc Loop

			lda #0
			sta ZP.JustScrolled

		rts
	}



	Move: {


		CheckType:

			lda ZP.SpriteState, x
			and #%00001110
			bne NotKnife


		IsKnife:

			rts

		NotKnife:

			cmp #WEAPON_GRENADE
			bne NotGrenade


		IsGrenade:

			rts

		NotGrenade:

			inc ZP.SpriteMoved, x

			lda ZP.JustScrolled
			bmi NoRestore

			jsr SPRITE.Restore1x1

		NoRestore:

			lda ZP.SpriteState, x
			and #%00000001
			beq GoRight

		GoLeft:

	
			lda ZP.SpriteX, x
			sec
			sbc #1
			bpl NoWrapRight

			lda #$FF
			sta ZP.SpriteTimer, x
			rts

		GoRight:

			lda ZP.SpriteX, x
			clc
			adc #1
			cmp #40
			bcc NoWrapRight

			lda #$FF
			sta ZP.SpriteTimer, x


		NoWrapRight:

			sta ZP.SpriteX, x
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
			lsr
			tay
			lda BulletCharColour, y
			sta ZP.SpriteColour, x

			lda #1
			sta ZP.SpriteTimer, x

			lda #255
			sta ZP.BulletStoredChars - MAX_SPRITES, x


			// caller to set direction and position?


		rts
	}

}