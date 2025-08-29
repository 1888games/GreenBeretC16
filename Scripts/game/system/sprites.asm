

.label STATE_IDLE = 0
.label STATE_WALK = 1
.label STATE_CLIMB = 2

.label NUM_CHARS_FACE = 44


.label FACE_RIGHT_OFFSET = 0
.label FACE_LEFT_OFFSET = NUM_CHARS_FACE

.var method = "Blue"


.namespace SPRITE {

	* = * "Sprite"

	#import "scripts/game/system/sprite_3x1.asm"
	#import "scripts/game/system/sprite_1x1.asm"

	RowStart_LSB: .fill 25, <i * 40
	RowStart_MSB: .fill 25, >i * 40

	SpriteStart:  			.fill MAX_SPRITES, PLAYER_CHAR_START + (i * 6)

	* = * "Sprite Char Addresses"

	SpriteCharAddress_LSB:	.fill MAX_SPRITES, <[CHARSET_ADDRESS + ([PLAYER_CHAR_START + (i * 6)] * 8)]
							.fill MAX_BULLETS, <[CHARSET_ADDRESS + ([PLAYER_CHAR_START + (MAX_SPRITES * 6)] * 8)] + (i * 8)

	SpriteCharAddress_MSB:	.fill MAX_SPRITES, >[CHARSET_ADDRESS + ([PLAYER_CHAR_START + (i * 6)] * 8)]
							.fill MAX_BULLETS, >[CHARSET_ADDRESS + ([PLAYER_CHAR_START + (MAX_SPRITES * 6)] * 8)] + (i * 8)



	Draw: {

		
		lda ZP.SpriteDirty, x
		beq DontDraw

		jsr CommonDraw

		jsr BackupChars
		jsr CopySpriteData

		ldx ZP.SpriteID

		jsr PlaceChars

	DontDraw: 


		rts
	}


	CommonDraw: {

		stx ZP.SpriteID

		lda ZP.SpriteColour, x
		sta ZP.Colour

		jsr CalculatePositionAddresses

		dec ZP.SpriteDirty, x

		rts


	}


	

	BackupChars: {

		lda ZP.SpriteMoved, x
		bne DoBackup

		rts

	DoBackup:

		ldy #0
		lda (ZP.ScreenAddress), y
		sta ZP.SpriteStoredChars + 0, x

		lda (ZP.ColourAddress), y
		sta ZP.SpriteStoredColours + 0, x

		iny 
		lda (ZP.ScreenAddress), y
		sta ZP.SpriteStoredChars + (MAX_SPRITES * 1), x 

		lda (ZP.ColourAddress), y
		sta ZP.SpriteStoredColours + (MAX_SPRITES * 1), x

		lda ZP.SpriteState, x
		and #%11101111
		cmp #STATE_CROUCH_RIGHT
		bcc TwoByThree

		jmp Backup3x1

	TwoByThree:

		ldy #40
		lda (ZP.ScreenAddress), y
		sta ZP.SpriteStoredChars + (MAX_SPRITES * 2), x 

		lda (ZP.ColourAddress), y
		sta ZP.SpriteStoredColours + (MAX_SPRITES * 2), x 

		iny 
		lda (ZP.ScreenAddress), y
		sta ZP.SpriteStoredChars + (MAX_SPRITES * 3), x 

		lda (ZP.ColourAddress), y
		sta ZP.SpriteStoredColours + (MAX_SPRITES * 3), x 

		ldy #80
		lda (ZP.ScreenAddress), y
		sta ZP.SpriteStoredChars + (MAX_SPRITES * 4), x 

		lda (ZP.ColourAddress), y
		sta ZP.SpriteStoredColours +(MAX_SPRITES * 4), x 

		iny 
		lda (ZP.ScreenAddress), y
		sta ZP.SpriteStoredChars + (MAX_SPRITES * 5), x 

		lda (ZP.ColourAddress), y
		sta ZP.SpriteStoredColours + (MAX_SPRITES * 5), x 

		lda #0
		sta ZP.SpriteMoved, x



		rts
	}

	RestoreChars: {


		ldy #0
		lda ZP.SpriteStoredChars + (MAX_SPRITES * 0), x
		sta (ZP.ScreenAddress), y
		lda ZP.SpriteStoredColours + (MAX_SPRITES * 0), x
		sta (ZP.ColourAddress), y

		iny 
		lda ZP.SpriteStoredChars + (MAX_SPRITES * 1), x
		sta (ZP.ScreenAddress), y
		lda ZP.SpriteStoredColours + (MAX_SPRITES * 1), x
		sta (ZP.ColourAddress), y

		lda ZP.SpriteState, x
		and #%11101111
		cmp #STATE_CROUCH_RIGHT
		bcc TwoByThree

		jmp Restore3x1

	TwoByThree:


		ldy #40
		lda ZP.SpriteStoredChars + (MAX_SPRITES * 2), x
		sta (ZP.ScreenAddress), y
		lda ZP.SpriteStoredColours + (MAX_SPRITES * 2), x
		sta (ZP.ColourAddress), y

		iny 
		lda ZP.SpriteStoredChars + (MAX_SPRITES * 3), x
		sta (ZP.ScreenAddress), y
		lda ZP.SpriteStoredColours + (MAX_SPRITES * 3), x
		sta (ZP.ColourAddress), y

		ldy #80
		lda ZP.SpriteStoredChars + (MAX_SPRITES * 4), x
		sta (ZP.ScreenAddress), y
		lda ZP.SpriteStoredColours + (MAX_SPRITES * 4), x
		sta (ZP.ColourAddress), y

		iny 
		lda ZP.SpriteStoredChars + (MAX_SPRITES * 5), x
		sta (ZP.ScreenAddress), y
		lda ZP.SpriteStoredColours + (MAX_SPRITES * 5), x
		sta (ZP.ColourAddress), y


		rts
	}


	PlaceChars: {

		lda ZP.SpriteState, x
		and #%11101111
		cmp #STATE_CROUCH_RIGHT
		bcc TwoByThree

		jmp Place3x1


	TwoByThree:

		ldy #0

		lda ZP.Colour
		sta (ZP.ColourAddress), y
	
		lda SpriteStart, x	
		sta (ZP.ScreenAddress), y

		clc
		adc #1
		iny

		sta (ZP.ScreenAddress), y

		adc #1
		ldy #40

		sta (ZP.ScreenAddress), y

		iny
		adc #1
		sta (ZP.ScreenAddress), y

		ldy #80
		adc #1
		sta (ZP.ScreenAddress), y

		iny
		adc #1
		sta (ZP.ScreenAddress), y

		lda ZP.Colour

		ldy #1
		sta (ZP.ColourAddress), y

		ldy #40
		sta (ZP.ColourAddress), y

		iny
		sta (ZP.ColourAddress), y

		ldy #80
		sta (ZP.ColourAddress), y

		iny
		sta (ZP.ColourAddress), y


		rts


		
	}





	GetBgCharAddress: {

		.if (method == "Blue") {

	

			//lda (ZP.ScreenAddress), y
			sta CopyCharBytes.Branch.Bg + 1

			lda #0
			sta CopyCharBytes.Branch.Bg + 2

			asl CopyCharBytes.Branch.Bg + 1      
			rol CopyCharBytes.Branch.Bg + 2
			asl CopyCharBytes.Branch.Bg + 1      
			rol CopyCharBytes.Branch.Bg + 2
			asl CopyCharBytes.Branch.Bg + 1      
			rol CopyCharBytes.Branch.Bg + 2

			lda CopyCharBytes.Branch.Bg + 2
			clc
			adc #$38
			sta CopyCharBytes.Branch.Bg + 2

		
		}


		rts
	}


	//DirOffset:	.byte 0, 16 - 1

	CopySpriteData: {

			lda SpriteCharAddress_LSB, x
			sta CopyCharBytes.Branch.Dest + 1

			lda SpriteCharAddress_MSB, x
			sta CopyCharBytes.Branch.Dest + 2

			lda #0
			sta ZP.Frame
		
			lda ZP.SpriteBullets, x
			beq NoGun

			lda #4
			sta ZP.Frame

		NoGun:

			
			lda ZP.SpriteState, x
			clc
			adc ZP.SpriteFrame, x
			clc
			adc ZP.Frame
			sta ZP.Frame

		.if (method == "Blue") {


		TopLeft:

			ldy #0

			lda ZP.SpriteStoredChars + (MAX_SPRITES * 0), x
			jsr GetBgCharAddress

			ldx ZP.Frame
			lda TopLeftCharsLSB, x
			sta CopyCharBytes.Branch.Source + 1

			lda TopLeftCharsMSB, x
			sta CopyCharBytes.Branch.Source + 2

			jsr CopyCharBytes

		TopRight:

			ldx ZP.SpriteID

			lda ZP.SpriteStoredChars + (MAX_SPRITES * 1), x
			jsr GetBgCharAddress

	
			ldx ZP.Frame
			lda TopRightCharsLSB, x
			sta CopyCharBytes.Branch.Source + 1

			lda TopRightCharsMSB, x
			sta CopyCharBytes.Branch.Source + 2

			jsr CopyCharBytes

		MiddleLeft:

			ldx ZP.SpriteID

	

			lda ZP.SpriteStoredChars + (MAX_SPRITES * 2), x
			jsr GetBgCharAddress


			ldx ZP.Frame
			lda MiddleLeftCharsLSB, x
			sta CopyCharBytes.Branch.Source + 1

			lda MiddleLeftCharsMSB, x
			sta CopyCharBytes.Branch.Source + 2

			jsr CopyCharBytes

		MiddleRight:


			ldx ZP.SpriteID

			lda ZP.SpriteState, x
			and #%11101111
			cmp #STATE_CROUCH_RIGHT
			bcc TwoByThree

			rts

		TwoByThree:

			//ldy #41

			lda ZP.SpriteStoredChars + (MAX_SPRITES * 3), x
			jsr GetBgCharAddress
//
			//ldy ZP.Y

			ldx ZP.Frame
			lda MiddleRightCharsLSB, x
			sta CopyCharBytes.Branch.Source + 1

			lda MiddleRightCharsMSB, x
			sta CopyCharBytes.Branch.Source + 2

			jsr CopyCharBytes

		BottomLeft:


			ldx ZP.SpriteID
			//ldy #80

			lda ZP.SpriteStoredChars + (MAX_SPRITES * 4), x
			jsr GetBgCharAddress

			//ldy ZP.Y

			ldx ZP.Frame
			lda BottomLeftCharsLSB, x
			sta CopyCharBytes.Branch.Source + 1

			lda BottomLeftCharsMSB, x
			sta CopyCharBytes.Branch.Source + 2

			jsr CopyCharBytes

		BottomRight:

			ldx ZP.SpriteID
			//ldy #81

			lda ZP.SpriteStoredChars + (MAX_SPRITES * 5), x
			jsr GetBgCharAddress

			//ldy ZP.Y
			ldx ZP.Frame
			lda BottomRightCharsLSB, x
			sta CopyCharBytes.Branch.Source + 1

			lda BottomRightCharsMSB, x
			sta CopyCharBytes.Branch.Source + 2

			jsr CopyCharBytes

		}


		else {

		
		TopLeft:

			lda TopLeftCharsLSB, x
			sta CopyCharBytes.Branch.Source + 1

			lda TopLeftCharsMSB, x
			sta CopyCharBytes.Branch.Source + 2

			jsr CopyCharBytes

		TopRight:

			ldx ZP.Frame
			
			lda TopRightCharsLSB, x
			sta CopyCharBytes.Branch.Source + 1

			lda TopRightCharsMSB, x
			sta CopyCharBytes.Branch.Source + 2

			jsr CopyCharBytes

		MiddleLeft:

			ldx ZP.Frame
			
			lda MiddleLeftCharsLSB, x
			sta CopyCharBytes.Branch.Source + 1

			lda MiddleLeftCharsMSB, x
			sta CopyCharBytes.Branch.Source + 2

			jsr CopyCharBytes

		MiddleRight:


			ldx ZP.Frame

			lda MiddleRightCharsLSB, x
			sta CopyCharBytes.Branch.Source + 1

			lda MiddleRightCharsMSB, x
			sta CopyCharBytes.Branch.Source + 2

			jsr CopyCharBytes

		BottomLeft:


			ldx ZP.Frame
			
			lda BottomLeftCharsLSB, x
			sta CopyCharBytes.Branch.Source + 1

			lda BottomLeftCharsMSB, x
			sta CopyCharBytes.Branch.Source + 2

			jsr CopyCharBytes

		BottomRight:

			ldx ZP.Frame
		
			lda BottomRightCharsLSB, x
			sta CopyCharBytes.Branch.Source + 1

			lda BottomRightCharsMSB, x
			sta CopyCharBytes.Branch.Source + 2

			jsr CopyCharBytes

		}



		rts
	}


	CopyCharBytes: {

		ldx #0

		Loop:

		Branch: .if (method == "Blue") {

			stx ZP.X

			Bg:		lda $BEEF, x
					sta ZP.Temp2

			Source: lda $BEEF, x
					sta ZP.Temp1

					tax

					lda ZP.Temp2
					and MaskTable, x
					ora ZP.Temp1

					ldx ZP.X

			Dest:   sta $BEEF, y


		}

		else {

			Source: lda $BEEF, x
			Dest:	sta $BEEF, y

		}



		inx
		iny
		cpx #8
		bcc Loop

		sty ZP.Y

		rts
	}



	
		// x = sprite ID

	CalculatePositionAddresses: {

		lda ZP.SpriteY, x
		tay

		lda RowStart_LSB, y
		clc
		adc ZP.SpriteX, x
		sta ZP.ScreenAddress
		sta ZP.ColourAddress

		lda RowStart_MSB, y
		adc #>SCREEN_RAM
		sta ZP.ScreenAddress + 1
		sec
		sbc #4
		sta ZP.ColourAddress + 1

		rts


	}
}