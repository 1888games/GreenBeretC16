.namespace GAME {


	* = * "Game"


	Show: {


		
		jsr SCREEN.SetColoursAndMode
		jsr MAP.CopyMapTo200
		jsr SCREEN.Clear
		
		jsr NewLevel
		
		jsr SCREEN.DrawFloor

		jsr MAP.FillScreen
		
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

		jsr SCREEN.Scroll

		jmp Loop
	}





}