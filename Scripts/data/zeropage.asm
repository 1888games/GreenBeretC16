*=$02 "Temp vars zero page" virtual



ZP: {

	ScreenAddress:			.word 0
	Counter:				.byte 0
	ColourAddress:			.word 0

	SourceAddress:			.byte 0

	Row:					.byte 0
	Column:					.byte 0
	RowOffset:				.byte 0
	CharID:					.byte 0
	Colour:					.byte 0
	StoredXReg:				.byte 0
	EndID:					.byte 0
	Amount:					.byte 0
	StoredYReg:				.byte 0
	CurrentID:				.byte 0
	X:						.byte 0
	Y:						.byte 0


	ScreenColumnsDrawn:		.byte 0
	CurrentSectorNumber:	.byte 0
	CurrentSectorID:		.byte 0
	SectorXOffset:			.byte 0
	CurrentSectorLength:	.byte 0
	CurrentSectorTruncate:	.byte 0
	CurrentSectorDrawn:		.byte 0
	RowsDrawn:				.byte 0
	FineScroll:				.byte 0

	ThisSectorXOffset:		.byte 0

	ScrollSectorNumber:		.byte 0
	ScrollSectorLength:		.byte 0

* = * "Data Address" virtual

	SectorDataAddress:		.word 0
	SectorMapAddress:		.word 0


    PerformFrameCodeFlag:	.byte 0
}


TextRow:	.byte 0
TextColumn:	.byte 0
