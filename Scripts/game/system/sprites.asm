

.label STATE_IDLE = 0
.label STATE_WALK = 1
.label STATE_CLIMB = 2

.label NUM_CHARS_FACE = 44


.label FACE_RIGHT_OFFSET = 0
.label FACE_LEFT_OFFSET = NUM_CHARS_FACE

.var method = "Blue"


.namespace SPRITE {

	* = * "Sprite"

	RowStart_LSB: .fill 25, <i * 40
	RowStart_MSB: .fill 25, >i * 40

	SpriteStart:  			.fill MAX_SPRITES, PLAYER_CHAR_START + (i * 6)
	SpriteCharAddress_LSB:	.fill MAX_SPRITES, <[CHARSET_ADDRESS + ([PLAYER_CHAR_START + (i * 6)] * 8)]
	SpriteCharAddress_MSB:	.fill MAX_SPRITES, >[CHARSET_ADDRESS + ([PLAYER_CHAR_START + (i * 6)] * 8)]



	Draw: {

		//inc TED.BORDER_COLOR

		stx ZP.SpriteID

		lda ZP.SpriteColour, x
		sta ZP.Colour

		lda ZP.SpriteDirty, x
		beq DontDraw

		jsr CalculatePositionAddresses

		dec ZP.SpriteDirty, x

		jsr BackupChars
		jsr CopySpriteData

		ldx ZP.SpriteID

		jsr PlaceChars

		DontDraw: 


		rts
	}


	

	BackupChars: {



		lda ZP.SpriteMoved, x
		bne DoBackup

		rts

	DoBackup:

		ldy #0
		lda (ZP.ScreenAddress), y
		sta ZP.SpriteStoredChars

		lda (ZP.ColourAddress), y
		sta ZP.SpriteStoredColours

		iny 
		lda (ZP.ScreenAddress), y
		sta ZP.SpriteStoredChars + 1

		lda (ZP.ColourAddress), y
		sta ZP.SpriteStoredColours + 1

		ldy #40
		lda (ZP.ScreenAddress), y
		sta ZP.SpriteStoredChars + 2

		lda (ZP.ColourAddress), y
		sta ZP.SpriteStoredColours + 2

		iny 
		lda (ZP.ScreenAddress), y
		sta ZP.SpriteStoredChars + 3

		lda (ZP.ColourAddress), y
		sta ZP.SpriteStoredColours + 3

		ldy #80
		lda (ZP.ScreenAddress), y
		sta ZP.SpriteStoredChars + 4

		lda (ZP.ColourAddress), y
		sta ZP.SpriteStoredColours + 4

		iny 
		lda (ZP.ScreenAddress), y
		sta ZP.SpriteStoredChars + 5

		lda (ZP.ColourAddress), y
		sta ZP.SpriteStoredColours + 5

		lda #0
		sta ZP.SpriteMoved, x



		rts
	}

	RestoreChars: {


		ldy #0
		lda ZP.SpriteStoredChars
		sta (ZP.ScreenAddress), y
		lda ZP.SpriteStoredColours
		sta (ZP.ColourAddress), y

		iny 
		lda ZP.SpriteStoredChars + 1
		sta (ZP.ScreenAddress), y
		lda ZP.SpriteStoredColours + 1
		sta (ZP.ColourAddress), y

		ldy #40
		lda ZP.SpriteStoredChars + 2
		sta (ZP.ScreenAddress), y
		lda ZP.SpriteStoredColours + 2
		sta (ZP.ColourAddress), y

		iny 
		lda ZP.SpriteStoredChars + 3
		sta (ZP.ScreenAddress), y
		lda ZP.SpriteStoredColours + 3
		sta (ZP.ColourAddress), y

		ldy #80
		lda ZP.SpriteStoredChars + 4
		sta (ZP.ScreenAddress), y
		lda ZP.SpriteStoredColours + 4
		sta (ZP.ColourAddress), y

		iny 
		lda ZP.SpriteStoredChars + 5
		sta (ZP.ScreenAddress), y
		lda ZP.SpriteStoredColours + 5
		sta (ZP.ColourAddress), y


		rts
	}


	PlaceChars: {

		ldy #0
		ldx #0

		lda ZP.Colour
		sta (ZP.ColourAddress), y
	
		lda SpriteStart, x	
		sta (ZP.ScreenAddress), y

		clc
		adc #1
		iny

		sta (ZP.ScreenAddress), y

		clc
		adc #1

		ldy #40

		sta (ZP.ScreenAddress), y

		iny

		clc
		adc #1
		sta (ZP.ScreenAddress), y

		ldy #80

		clc
		adc #1
		sta (ZP.ScreenAddress), y

		iny

		clc
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


	DirOffset:	.byte 0, 19

	CopySpriteData: {

		
			lda SpriteCharAddress_LSB, x
			sta CopyCharBytes.Branch.Dest + 1

			lda SpriteCharAddress_MSB, x
			sta CopyCharBytes.Branch.Dest + 2

			lda ZP.SpriteState, x
			and #%00000001
			tay
			lda DirOffset, y
			sta ZP.Frame

			lda ZP.SpriteBullets, x
			beq NoGun

			lda ZP.Frame
			clc
			adc #4
			sta ZP.Frame

		NoGun:

			lda ZP.SpriteFrame, x
			clc
			adc ZP.Frame
			sta ZP.Frame

			tax

		.if (method == "Blue") {


		TopLeft:

			ldy #0



			lda ZP.SpriteStoredChars
			jsr GetBgCharAddress

			lda TopLeftCharsLSB, x
			sta CopyCharBytes.Branch.Source + 1

			lda TopLeftCharsMSB, x
			sta CopyCharBytes.Branch.Source + 2

			jsr CopyCharBytes

		TopRight:

			ldx ZP.Frame
			//ldy #1

			lda ZP.SpriteStoredChars + 1
			jsr GetBgCharAddress

			//ldy ZP.Y

			lda TopRightCharsLSB, x
			sta CopyCharBytes.Branch.Source + 1

			lda TopRightCharsMSB, x
			sta CopyCharBytes.Branch.Source + 2

			jsr CopyCharBytes

		MiddleLeft:

			ldx ZP.Frame
			//ldy #40

			lda ZP.SpriteStoredChars + 2
			jsr GetBgCharAddress

			//ldy ZP.Y

			lda MiddleLeftCharsLSB, x
			sta CopyCharBytes.Branch.Source + 1

			lda MiddleLeftCharsMSB, x
			sta CopyCharBytes.Branch.Source + 2

			jsr CopyCharBytes

		MiddleRight:


			ldx ZP.Frame
			//ldy #41

			lda ZP.SpriteStoredChars + 3
			jsr GetBgCharAddress
//
			//ldy ZP.Y


			lda MiddleRightCharsLSB, x
			sta CopyCharBytes.Branch.Source + 1

			lda MiddleRightCharsMSB, x
			sta CopyCharBytes.Branch.Source + 2

			jsr CopyCharBytes

		BottomLeft:


			ldx ZP.Frame
			//ldy #80

			lda ZP.SpriteStoredChars + 4
			jsr GetBgCharAddress

			//ldy ZP.Y


			lda BottomLeftCharsLSB, x
			sta CopyCharBytes.Branch.Source + 1

			lda BottomLeftCharsMSB, x
			sta CopyCharBytes.Branch.Source + 2

			jsr CopyCharBytes

		BottomRight:

			ldx ZP.Frame
			//ldy #81

			lda ZP.SpriteStoredChars + 5
			jsr GetBgCharAddress

			//ldy ZP.Y

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

		lda SpriteStart, x

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