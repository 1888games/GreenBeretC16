


INPUT: {

	* = * "Input"

	.label joyUpMask =  %00000001
	.label joyDownMask = %00000010
	.label joyLeftMask = %00000100
	.label joyRightMask = %00001000
	.label joyFireMask = %01000000


	ReadJoystick: {
		
		lda #$FF
		sta $fd30
		lda #%00000010
		sta $ff08
		lda $ff08
		sta ZP.JOY_READING


		rts


	}


}



