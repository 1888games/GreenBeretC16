.namespace GAME {


	* = * "Game"


	Show: {


		
		jsr SCREEN.SetColoursAndMode
		jsr MAP.CopyMapTo200
		jsr SCREEN.Clear
		
		jsr NewLevel
		
		jsr SCREEN.DrawFloor

		jsr MAP.FillScreen

		jsr PLAYER.Initialise
		
		jmp Loop
	}



	NewLevel: {

		jsr MAP.CalculateMapAddresses

		lda #7
		sta ZP.FineScroll

		lda #0
		sta ZP.ScrollSectorNumber
		sta ZP.SectorXOffset

		


		rts
	}


	Loop: {

	
		jsr MAIN.WaitForIRQ

		inc TED.BORDER_COLOR

		//jsr SCREEN.Scroll

		jsr PLAYER.FrameUpdate 
		jsr SCREEN.Scroll

		dec TED.BORDER_COLOR

		jmp Loop
	}





}