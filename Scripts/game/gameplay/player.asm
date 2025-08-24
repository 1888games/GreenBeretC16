
.label FLOOR_ROW = 23
.label PLAYER_SPRITE_ID = 0

.label PLAYER_CHAR_START = 183
.label SCROLL_THRESHOLD = 16

.namespace PLAYER {

	* = * "Player"

	Initialise: {

		lda #FLOOR_ROW - 2
		sta ZP.PlayerY

		lda #5
		sta ZP.PlayerX

		lda #0
		sta ZP.PlayerOffset
		sta ZP.PlayerFrame
		sta ZP.ScrollFlag


		lda #1
		sta ZP.PlayerDirty
		sta ZP.PlayerMoved

		lda #1
		sta ZP.PlayerTimer

		ldx #0

		jsr SPRITE.CalculatePositionAddresses

		jsr SPRITE.BackupChars

		lda #LUMINANCE_5 + GREEN + 8
		sta ZP.PlayerColour

		rts

	}


	FrameUpdate: {

			lda ZP.PlayerDirty
			beq CheckOddEven


			ldx #PLAYER_SPRITE_ID

			//jsr SPRITE.Draw

		CheckOddEven:

			lda ZP.FrameSwitch
			bne Ready

			rts

		Ready:	

			lda ZP.PlayerTimer
			beq CanMove

			dec ZP.PlayerTimer
			rts

		CanMove:	

			ldx #PLAYER_SPRITE_ID

			jsr SPRITE.CalculatePositionAddresses
			jsr Control
		
			ldx #PLAYER_SPRITE_ID

			lda ZP.ScrollFlag
			bne NoDraw

			jsr SPRITE.Draw

		NoDraw:



		rts
	}



	GoRight: {

		lda #STATE_WALK_RIGHT
		sta ZP.PlayerState


		lda ZP.PlayerFrame
		clc
		adc #1
		and #%00000011
		sta ZP.PlayerFrame

		and #%00000001
		bne NotMoved

		ldx #0
		stx ZP.PlayerBullets
		

		inc ZP.PlayerMoved
	
		lda ZP.PlayerX
		cmp #SCROLL_THRESHOLD
		bcc NoScroll

		lda #1
		sta ZP.ScrollFlag

		jmp Restore

	NoScroll:

		inc ZP.PlayerX

	Restore:

		jsr SPRITE.RestoreChars

	NotMoved:

		inc ZP.PlayerDirty
		
		lda #1
		sta ZP.PlayerTimer


		rts
	}


	GoLeft: {

		lda #STATE_WALK_LEFT
		sta ZP.PlayerState


		lda ZP.PlayerFrame
		clc
		adc #1
		and #%00000011
		sta ZP.PlayerFrame

		and #%00000001
		bne NotMoved

		dec ZP.PlayerX

		ldx #0
		stx ZP.PlayerBullets
		jsr SPRITE.RestoreChars

		inc ZP.PlayerMoved
		

	NotMoved:

		inc ZP.PlayerDirty
		
		lda #1
		sta ZP.PlayerTimer


		rts
	}

	

	Control: {

		lda ZP.JOY_READING
		and #INPUT.joyRightMask
		bne NotRight

		jsr GoRight
		jmp NotLeft

	NotRight:

		lda ZP.JOY_READING
		and #INPUT.joyLeftMask
		bne NotLeft

		jsr GoLeft
		jmp NotLeft

	NotLeft:

		lda ZP.JOY_READING
		and #INPUT.joyFireMask
		bne NotFire

		lda #1
		sta ZP.PlayerBullets
		rts

	NotFire:

		


		rts
	}



	Move: {






		rts
	}

}