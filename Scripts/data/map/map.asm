
.namespace MAP {

	//.label GirderColour = LUMINANCE_4 + RED + 8
	//.label ForestColour = LUMINANCE_4 + GREEN + 8
	//.label TrucksColour = LUMINANCE_5 + GREEN + 8
	//.label MissilesColour = LUMINANCE_5 + WHITE + 8

	.label GirderColour = LUMINANCE_0 + RED + 8
	.label ForestColour = LUMINANCE_0 + GREEN + 8
	.label TrucksColour = LUMINANCE_0 + GREEN + 8
	.label MissilesColour = LUMINANCE_0 + WHITE + 8

	* = $3000
	
	//* = * "Sector 1"

	NumSectors2:		.byte 15
	SectorIDs:		.byte 0, 1, 1, 1, 1, 1, 2, 3, 4, 4, 4, 4, 5, 5, 5, 5

	//* = * "Sector 1 Data"

	SectorData:		.byte 23, GirderColour, <Sector1 - ($3000 - $0200), >Sector1- ($3000 - $0200)
					.byte 16, GirderColour, <Sector2 - ($3000 - $0200), >Sector2- ($3000 - $0200)
					.byte 24, GirderColour, <Sector3- ($3000 - $0200), >Sector3- ($3000 - $0200)
					.byte 32, ForestColour, <Sector4- ($3000 - $0200), >Sector4- ($3000 - $0200)
					.byte 24, TrucksColour, <Sector5- ($3000 - $0200), >Sector5- ($3000 - $0200)
					.byte 16, MissilesColour, <Sector6- ($3000 - $0200), >Sector6- ($3000 - $0200)
					.byte 0

	
	//* = * "Map Data 1"

	SectorMapData:	

		Sector1:	.import binary "assets/Level 1/level_1_sector_1.bin"   
		Sector2:	.import binary "assets/Level 1/level_1_sector_2.bin"   
		Sector3:	.import binary "assets/Level 1/level_1_sector_3.bin"   
		Sector4:	.import binary "assets/Level 1/level_1_sector_4.bin"   
		Sector5:	.import binary "assets/Level 1/level_1_sector_5.bin"   
		Sector6:	.import binary "assets/Level 1/level_1_sector_6.bin"   


	//* = * "End of Map Data 1"



}
