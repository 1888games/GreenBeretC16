
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
		sta ZP.PlayerBullets

		lda #0
		sta ZP.PlayerState


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

			//lda ZP.PlayerDirty
			//beq CheckOddEven


			//ldx #PLAYER_SPRITE_ID

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



	Lookup:	.byte 7, 5, 3, 1

	GoRight: {

		
		lda ZP.PlayerState
		cmp #STATE_WALK_RIGHT
		beq AlreadyWalking

		lda #0
		sta ZP.PlayerFrame

		lda ZP.FineScroll
		cmp #7
		beq AlreadyWalking

		jsr GAME.ResetFineScroll


	AlreadyWalking:

		lda #STATE_WALK_RIGHT
		sta ZP.PlayerState

		lda ZP.PlayerFrame
		clc
		adc #1
		and #%00000011
		sta ZP.PlayerFrame
		bne NotMoved

		inc ZP.PlayerMoved

		jsr SCREEN.Scroll
		bmi Done

		inc ZP.PlayerX

		ldx #0
		stx ZP.PlayerBullets
		jsr SPRITE.RestoreChars

	Done:

		jmp SetWalkTime

	NotMoved:

		jsr SCREEN.Scroll



	}






	SetWalkTime: {

		inc ZP.PlayerDirty

		lda ZP.PlayerTime
		eor #%00000001
		sta ZP.PlayerTime
		sta ZP.PlayerTimer


		rts

	}



	GoLeft: {

		jsr SCREEN.CheckScrollAdjust

		lda #STATE_WALK_LEFT
		sta ZP.PlayerState

		lda ZP.PlayerFrame
		clc
		adc #1
		and #%00000011
		sta ZP.PlayerFrame
		bne NotMoved


		dec ZP.PlayerX

		ldx #0
		stx ZP.PlayerBullets
		jsr SPRITE.RestoreChars

		inc ZP.PlayerMoved

	NotMoved:

		jmp SetWalkTime

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



	

}