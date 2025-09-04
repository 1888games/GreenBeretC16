
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

		ldx #0
		stx ZP.PlayerOffset
		stx ZP.PlayerFrame
		stx ZP.JustScrolled
		stx ZP.PlayerBullets
		stx ZP.PlayerState
		stx ZP.FireFrames
		sta ZP.Cooldown
		sta ZP.Stabbing
		//sta ZP.PlayerWeapon

		lda #1
		sta ZP.PlayerDirty
		sta ZP.PlayerMoved
		sta ZP.PlayerTimer
		sta ZP.PlayerBullets

		lda #WEAPON_FLAME
		sta ZP.PlayerWeapon

		
		jsr SPRITE.CalculatePositionAddresses

		jsr SPRITE.BackupChars

		lda #LUMINANCE_5 + GREEN + 8
		sta ZP.PlayerColour


		rts

	}


	FrameUpdate: {

			lda ZP.JOY_READING
			and #INPUT.joyFireMask
			bne NotFire

			inc ZP.FireFrames
		Exit:
			rts
			
		NotFire:

			lda ZP.FireFrames
			beq Exit

			clc
			ora #%10000000
			sta ZP.FireFrames

		rts
	}


	
	EvenFrameUpdate: {


		CheckTimer:

			ldx ZP.PlayerTimer
			beq CanMove

			dec ZP.PlayerTimer
			rts

		CanMove:	

			jsr SPRITE.CalculatePositionAddresses
			jsr Control
		
			ldx #PLAYER_SPRITE_ID

			jsr SPRITE.Draw

		NoDraw:



		rts
	}


	CheckReleaseDown: {


		lda ZP.PlayerState
		and #%11101111
		cmp #STATE_CROUCH_RIGHT
		bne NotCrouching

		lda ZP.PlayerOffset
		sta ZP.PlayerFrame

		dec ZP.PlayerY
		dec ZP.PlayerY
		inc ZP.PlayerX

		ldx #0
		//stx ZP.PlayerBullets
		jsr SPRITE.RestoreChars

		lda ZP.PlayerState
		sec
		sbc #STATE_CROUCH_RIGHT
		sta ZP.PlayerState

		inc ZP.PlayerMoved
		inc ZP.PlayerDirty

	NotCrouching:


		rts
	}
	




	GoDown: {

		lda ZP.PlayerState
		and #%11101111
		cmp #STATE_CROUCH_RIGHT
		beq AlreadyCrouching

		
		lda ZP.PlayerFrame
		sta ZP.PlayerOffset 

		inc ZP.PlayerY
		inc ZP.PlayerY
		dec ZP.PlayerX

		ldx #0
		stx ZP.PlayerFrame

		jsr SPRITE.RestoreChars

		lda ZP.PlayerState
		clc
		adc #STATE_CROUCH_RIGHT
		sta ZP.PlayerState


		inc ZP.PlayerMoved
		inc ZP.PlayerDirty

	AlreadyCrouching:



		rts
	}



	// a = player bullets

	FireWeapon: {
		
		jsr BULLET.Fire

		// x = bullet sprite ID

		lda ZP.PlayerState
		and #%00010000
		lsr
		lsr
		lsr
		lsr
		pha
		sta ZP.Temp1



		lda ZP.SpriteState, x
		ora ZP.Temp1
		sta ZP.SpriteState, x

		pla
		beq FireRight


	FireLeft:

		lda ZP.PlayerX
		sta ZP.SpriteX, x
		dec ZP.SpriteX, x
		jmp Exit

	FireRight:

		lda ZP.PlayerX
		clc
		adc #2
		sta ZP.SpriteX, x

	Exit:

		lda ZP.PlayerY
		sta ZP.SpriteY, x

		lda ZP.PlayerState
		cmp #STATE_CROUCH_RIGHT
		bne IsNotCrouchingRight

		inc ZP.SpriteX, x
		jmp IsCrouching

	IsNotCrouchingRight:

		cmp #STATE_CROUCH_LEFT
		beq IsCrouching
		
		inc ZP.SpriteY, x 

	IsCrouching:


		lda #0
		sta ZP.FireFrames

		rts
	}



	Control: {

		lda ZP.Cooldown
		beq Ready

		dec ZP.Cooldown
		rts

	Ready:
	
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

		lda ZP.FireFrames
		bpl NotFire

		cmp #$87
		bcc Stab


	Fire:

		lda ZP.PlayerWeapon
		beq Stab

		jmp FireWeapon
		
	Stab:

		jmp StabWeapon
		
	NotFire:

		lda ZP.JOY_READING
		and #INPUT.joyDownMask
		bne NotDown

		jmp GoDown

	NotDown:
			
		jsr CheckReleaseDown

	NotCrouching:


		rts
	}


	StabWeapon: {

		lda ZP.PlayerState
		sta ZP.PlayerPreviousState
		cmp #STATE_WALK_RIGHT
		beq StabWalk

		cmp #STATE_WALK_LEFT
		beq StabWalk

		cmp #STATE_CROUCH_RIGHT
		beq StabCrouch

		cmp #STATE_CROUCH_LEFT
		beq StabCrouch

		rts


	StabCrouch:

		clc
		adc #STATE_CROUCH_STAB_RIGHT - STATE_CROUCH_RIGHT
		jmp DoStab

	StabWalk:

		clc
		adc #%00001000

	DoStab:

		pha

		lda ZP.PlayerFrame
		cmp #3
		bne NoAdjust

		jsr SCREEN.CheckScrollAdjust

		lda #2
		sta ZP.PlayerFrame

	NoAdjust:


		inc ZP.PlayerDirty
		inc ZP.Stabbing

		lda ZP.PlayerFrame
		sta ZP.PreviousFrame

		lda #0
		sta ZP.PlayerFrame
		jsr FireWeapon

		pla
		sta ZP.PlayerState

		stx ZP.SpriteID

		lda #2
		sta ZP.SpriteTimer, x
		
		lda #5
		sta ZP.Cooldown



		rts
	

	}


	GoLeft: {

		lda ZP.PlayerState
		cmp #STATE_CROUCH_LEFT
		bne NotCrouching

		rts

	NotCrouching:

		cmp #STATE_CROUCH_RIGHT
		bne NotCrouchRight

		lda #STATE_CROUCH_LEFT
		sta ZP.PlayerState
		inc ZP.PlayerDirty

		rts

	NotCrouchRight:

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
	//	stx ZP.PlayerBullets
		jsr SPRITE.RestoreChars

		inc ZP.PlayerMoved

	NotMoved:

		jmp SetWalkTime

	}




	GoRight: {


		
		lda ZP.PlayerState
		cmp #STATE_WALK_RIGHT
		beq AlreadyWalking

		cmp #STATE_CROUCH_RIGHT
		bne NotCrouching

		rts

	NotCrouching:

		cmp #STATE_CROUCH_LEFT
		bne NotCrouchingLeft

		lda #STATE_CROUCH_RIGHT
		sta ZP.PlayerState
		inc ZP.PlayerDirty

		rts

	NotCrouchingLeft:

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
		//stx ZP.PlayerBullets
		jsr SPRITE.RestoreChars

	Done:

		jmp SetWalkTime

	NotMoved:

		jsr SCREEN.Scroll



	}

	// don't move this away from after goRight!

	SetWalkTime: {

		inc ZP.PlayerDirty

		lda ZP.PlayerTime
		eor #%00000001
		sta ZP.PlayerTime
		sta ZP.PlayerTimer


		rts

	}









	

}