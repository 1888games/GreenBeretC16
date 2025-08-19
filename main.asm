	
	//.segmentdef Map [start=$3400]
	//.segmentdef Main

	.var target = "264"

MAIN: {

	//.segment Main

	#import "scripts/data/zeropage.asm"
	#import "scripts/data/labels.asm"
	#import "scripts/data/ted.asm"
	#import "scripts/common/macros.asm"


	.pc = $1001 "Basic Upstart"

	// BASIC line: 10 SYS 4109 (SYS $100D)
	.word upstart_end    // Link to next line
	.word 10             // Line number 10
	.byte $9e            // SYS token
	.text " 4110"        // Address 4110 ($100E) 
	.byte 0              // End of line

	upstart_end:
	.word 0              // End of BASIC program

	* = * "Main"

	Entry: {

		jsr IRQ.SetupInterrupts



		jmp GAME.Show

	}



	WaitForIRQ: {

		lda ZP.PerformFrameCodeFlag
		beq WaitForIRQ

		lda #0
		sta ZP.PerformFrameCodeFlag

		rts
	}
	

}

#import "scripts/game/system/irq.asm"
#import "scripts/game/screens/game.asm"
#import "scripts/data/map/mapload.asm"

#import "scripts/game/system/screen.asm"
#import "scripts/game/gameplay/player.asm"

.print "bytes free: " + (($3000 - *) + ($1000 - $0C00))

* = $0A00 "Sprites"

Sprites:

.import binary "assets/Sprites/gb_sprites - Chars.bin"


* = $0200 "Map Data" virtual
.fill 2048, 64


* = $3000 "Colour RAM" virtual
.fill 1024, 64

* = $3400 "Screen RAM" virtual
.fill 1024, 96
 
* = $3800 "Charset Game"

Charset:

.import binary "assets/Level 1/level 1 - Chars.bin" 

#import "scripts/data/map/map.asm"

//.disk [filename="GreenBeret.d64", name="GreenBeret", id="2025!" ] 
//{
       // [name="MAIN", type="prg",   segments="Main"                        ],
       // [name="LEVEL1", type="prg",  segments="Map" ],
      
//}
