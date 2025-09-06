

.namespace ENEMY {

	* = * "Enemy"

	EnemyColours:		.byte LUMINANCE_4 + BLUE + 8


	Spawn: {

		// y = EnemyType

		lda EnemyColours, y
		pha

		ldx #1

		Loop:

			lda ZP.SpriteTimer, x
			bmi Found

			inx
			cpx #MAX_SPRITES
			bcc Loop

			pla
			rts

		Found:

			pla 
			sta ZP.SpriteColour, x

			tya
			sta ZP.EnemyType - 1, x

			lda #38
			sta ZP.SpriteX, x

			lda #FLOOR_ROW - 2
			sta ZP.SpriteY, x

			lda #0
			sta ZP.SpriteFrame, x
			sta ZP.SpriteBullets, x
			sta ZP.SpriteTimer, x

			lda #1
			sta ZP.SpriteDirty, x
			sta ZP.SpriteMoved, x
			sta ZP.SpriteTime, x

			lda #STATE_WALK_LEFT
			sta ZP.SpriteState, x


			jsr SPRITE.CalculatePositionAddresses
			jsr SPRITE.BackupChars




		rts
	}




	FrameUpdate: {

		ldx #1

		Loop:

			stx ZP.SpriteID

			lda ZP.SpriteTimer, x
			bmi EndLoop
			pha

			lda ZP.JustScrolled
			bpl NoScroll

			dec ZP.SpriteX, x
			inc ZP.SpriteDirty, x
			
		NoScroll:

			pla
			beq Ready

			dec ZP.SpriteTimer, x
			jmp EndLoop

		Ready:	

			jsr SPRITE.CalculatePositionAddresses

			jsr Move

		IsFirstFrame:

			lda ZP.SpriteTimer, x
			bmi EndLoop 

		NowDraw:

			lda ZP.SpriteX, x
			bmi Delete
			cmp #30
			bne Okay

			lda ZP.SpriteFrame, x
			bne Okay

			ldy #0
			jsr Spawn

			ldx ZP.SpriteID
			jmp Okay

		Delete:

			lda #$FF
			sta ZP.SpriteTimer, x
			jmp EndLoop

		Okay:


			jsr SPRITE.Draw

			ldx ZP.SpriteID

		EndLoop:

			inx
			cpx #MAX_SPRITES
			bcc Loop


		rts
	}



	GoLeft: {

		
		lda ZP.SpriteFrame, x 
		clc
		adc #1
		and #%00000011
		sta ZP.SpriteFrame, x
		bne NotMoved

		dec ZP.SpriteX, x


		lda ZP.JustScrolled
		bmi NoRestore

		jsr SPRITE.RestoreChars

	NoRestore:

		inc ZP.SpriteMoved, x

	NotMoved:

		lda #0
		sta ZP.SpriteTimer, x

		inc ZP.SpriteDirty, x



		rts
	}


	Move: {

		lda ZP.SpriteState, x
		cmp #STATE_WALK_LEFT
		bne NotLeft


		jmp GoLeft


	NotLeft:

		rts
	}







}