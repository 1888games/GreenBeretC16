*=$02 "Temp vars zero page" virtual

.label MAX_ENEMIES = 9
.label MAX_SPRITES = MAX_ENEMIES + 1
.label MAX_BULLETS = 6

ZP: {

	ScreenAddress:			.word 0
	FrameSwitch:			.byte 0
	ColourAddress:			.word 0
	SourceAddress:			.byte 0
	BackgroundCharAddress:	.word 0

	CharID:					.byte 0
	Colour:					.byte 0
	Frame:					.byte 0
	SpriteID:				.byte 0
    Cooldown:               .byte 0
    Stabbing:               .byte 0
    PreviousFrame:          .byte 0

	Amount:					.byte 0
	X:						.byte 0
	Y:						.byte 0
	Temp1:					.byte 0
	Temp2:					.byte 0
	JustScrolled:			.byte 0


* = * "Fire Frames" virtual
	FireFrames:				.byte 0

* = * "Joystick" virtual

	JOY_READING:			.byte 0



* = * "ZP Map Data" virtual

	ScreenColumnsDrawn:		.byte 0
	CurrentSectorNumber:	.byte 0
	CurrentSectorID:		.byte 0
	SectorXOffset:			.byte 0
	CurrentSectorLength:	.byte 0
	CurrentSectorTruncate:	.byte 0
	CurrentSectorDrawn:		.byte 0
	RowsDrawn:				.byte 0

* = * "Fine Scroll" virtual

	FineScroll:				.byte 0

	ThisSectorXOffset:		.byte 0

	ScrollSectorNumber:		.byte 0
	ScrollSectorLength:		.byte 0


	SectorDataAddress:		.word 0
	SectorMapAddress:		.word 0
	SpriteCharAddress:		.word 0
	SpriteDataAddress:		.word 0



    PerformFrameCodeFlag:	.byte 0

   * = * "ZP Sprite Data" virtual

    SpriteX:				
    PlayerX:				.byte 0
    EnemyX:					.fill MAX_ENEMIES, 0
    BulletX:				.fill MAX_BULLETS, 0

    SpriteY:
    PlayerY:				.byte 0
    EnemyY:					.fill MAX_ENEMIES, 0
    BulletY:				.fill MAX_BULLETS, 0


    SpriteState:			
    PlayerState:			.byte 0
    EnemyState:				.fill MAX_ENEMIES, 0
    BulletState:			.fill MAX_BULLETS, 0


   * = * "SpriteStoredChars" virtual
    SpriteStoredChars:      .fill MAX_SPRITES * 6, 0
    SpriteStoredColours:    .fill MAX_SPRITES * 6, 0

   * = * "BulletChars" virtual
    BulletStoredChars:      .fill MAX_BULLETS, 0
    BulletStoredColours:    .fill MAX_BULLETS, 0


    * = * "SpriteFrame" virtual
    SpriteFrame:    
    PlayerFrame:            .byte 0
    EnemyFrame:             .fill MAX_ENEMIES, 0



    * = * "SpriteTimer" virtual
    SpriteTimer:			
    PlayerTimer:			.byte 0
    EnemyTimer:				.fill MAX_ENEMIES, 0
    BulletTimer:	   		.fill MAX_BULLETS, 0


    * = $100 "SpriteTime" virtual
    SpriteTime:				
    PlayerTime:				.byte 0
    EnemyTime:				.fill MAX_ENEMIES, 0


      * = * "SpriteColour" virtual
    SpriteColour:
    PlayerColour:			.byte 0
    EnemyColour:			.fill MAX_ENEMIES, 0

      * = * "SpriteOffset" virtual
    SpriteOffset:           
    PlayerOffset:           .byte 0
    EnemyOffset:            .fill MAX_ENEMIES, 0

    *  = * "SpriteMasterState" virtual
    SpriteMasterState:     
    PlayerMasterState:      .byte 0
    EnemyMasterState:       .fill MAX_ENEMIES, 0

  * = * "SpritePreviousState" virtual
    SpritePreviousState:    
    PlayerPreviousState:    .byte 0
    EnemyPreviousState:     .fill MAX_ENEMIES, 0


    EnemyType:              .fill MAX_ENEMIES, 0



  * = * "SpriteBullets" virtual
    SpriteBullets:			
    PlayerBullets:			.byte 0
    EnemyBullets:			.fill MAX_ENEMIES, 0

    SpriteWeapon:
    PlayerWeapon:			.byte 0
    EnemyWeapon:			.fill MAX_ENEMIES, 0

    SpriteDirty:
    PlayerDirty:			.byte 0
    EnemyDirty:				.fill MAX_ENEMIES, 0

    SpriteMoved:	
    PlayerMoved:			.byte 0
    EnemyMoved:				.fill MAX_ENEMIES, 0
    BulletMoved:            .fill MAX_BULLETS, 0
    


	* = * "End of ZP" virtual


}



