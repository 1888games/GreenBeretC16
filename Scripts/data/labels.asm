
.label ZERO= 					0
.label FALSE = 					0	
.label ALL_ON = 				255
.label TRUE = 					1


.label PAL = 					0
.label NTSC =	 				1


.label INTERRUPT_VECTOR = 		$fffe

.label JOY_PORT_2 = 			$dc00

.label SCREEN_RAM = 			$0C00 + VIDEO_OFFSET
.label VIDEO_OFFSET = $2800

.label IRQControlRegister1 = 	$0304

.label BANK_IN_RAM = $FF3F

.label CHARSET_ADDRESS = $3800

.label LUMINANCE_0 = $00    // Black/Off
.label LUMINANCE_1 = $10    // Very Dark
.label LUMINANCE_2 = $20    //Dark  
.label LUMINANCE_3 = $30    //Medium Dark
.label LUMINANCE_4 = $40    //Medium
.label LUMINANCE_5 = $50    //Medium Bright
.label LUMINANCE_6 = $60    //Bright
.label LUMINANCE_7 = $70


.label PAL_NTSC_Flag = $02A6

.label MAP_LOCATION = $0200
.label MAP_TEMP_LOCATION = $3000



.label WHITE_MULT = 9
.label RED_MULT = 10
.label CYAN_MULT = 11
.label PURPLE_MULT = 12
.label GREEN_MULT = 13
.label BLUE_MULT = 14
.label YELLOW_MULT = 15

.label LEFT_MASK = 1
.label RIGHT_MASK = 2
.label DOWN_MASK = 4
.label UP_MASK= 8





.label NIL = 0
.label ONE = 1


.label GAME_MODE_TITLE = 0
.label GAME_MODE_DEAD = 1
.label GAME_MODE_PLAY = 2
.label GAME_MODE_OVER = 3


.label SFX_BUTTON = 1
.label SFX_CATCH = 2
.label SFX_THROW = 3
.label SFX_CRASH = 4 
.label SFX_WRONG = 5
.label SFX_CONVEYOR = 6
.label SFX_CORRECT = 7
.label SFX_ALARM = 8


.label SFX_CHANNEL_1 = 680
.label SFX_CHANNEL_2 = 681


.label DIR_OFFSET = 16

.label STATE_WALK_RIGHT = 0
.label STATE_WALK_LEFT = STATE_WALK_RIGHT + DIR_OFFSET

.label STATE_CROUCH_RIGHT = 10
.label STATE_CROUCH_LEFT = STATE_CROUCH_RIGHT + DIR_OFFSET

.label STATE_STAB_RIGHT = 8
.label STATE_CROUCH_STAB_RIGHT = 12

.label STATE_STAB_LEFT = STATE_STAB_RIGHT + DIR_OFFSET
.label STATE_CROUCH_STAB_LEFT = STATE_CROUCH_STAB_RIGHT + DIR_OFFSET

.label WEAPON_KNIFE = 0
.label WEAPON_GUN = 2
.label WEAPON_FLAME= 4
.label WEAPON_ROCKET = 6
.label WEAPON_GRENADE = 8









