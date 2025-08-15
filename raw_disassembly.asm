

//Start of disassembled code
* = $1001 "Base Address"

        .byte $22,$10,$c3,$07,$9e,$34,$36,$32,$31,$20,$43,$52,$41,$43,$4b

    L_1010:
        eor $44
        jsr $5942
        jsr $438f

        .byte $4f,$20,$48,$4f,$45,$56,$45,$52,$53,$00,$00,$00,$7d,$57,$7d,$58
        .byte $7d,$64,$7d,$55,$7d,$20,$7d,$20,$7d,$52,$7d,$20,$7d,$20,$ff,$00
        .byte $ff,$00,$ff,$00,$ff,$00,$ff,$00,$00,$05,$0b,$02,$7d,$58,$7d,$64
        .byte $7d,$65,$7d,$20,$7d,$20,$7d,$67,$7d,$20,$7d,$20,$7d,$6a,$ff,$00
        .byte $ff,$00,$ff,$00,$ff,$00,$ff,$00,$00,$0b,$1a,$07,$79,$20,$79,$20
        .byte $79,$20,$79,$20,$79,$20,$79,$20,$79,$20,$79,$20,$79,$20,$ff,$00
        .byte $ff,$00,$ff,$00,$ff,$00,$ff,$00,$00,$04,$23,$06,$7d,$20,$7d,$59
        .byte $7d,$5a,$7d,$20,$7d,$56,$7d,$57,$7d,$53,$7d,$54,$7d,$55,$ff,$00
        .byte $ff,$00,$ff,$00,$ff,$00,$ff,$00,$00,$00,$ff,$00,$ff,$00,$ff,$00
        .byte $ff,$00,$ff,$00,$ff,$00,$ff,$00,$ff,$00,$ff,$00,$ff,$00,$ff,$00
        .byte $ff,$00,$ff,$00,$ff,$00,$ff,$00,$00,$0b,$04,$01,$49,$7f,$49,$80
        .byte $49,$81,$49,$82,$49,$83,$49,$84,$49,$85,$49,$86,$49,$87,$ff,$00
        .byte $ff,$00,$ff,$00,$ff,$00,$ff,$00,$00,$00,$ff,$00,$ff,$00,$ff,$00
        .byte $ff,$00,$ff,$00,$ff,$00,$ff,$00,$ff,$00,$ff,$00,$ff,$00,$ff,$00
        .byte $ff,$00,$ff,$00,$ff,$00,$ff,$00,$00,$00,$ff,$00,$ff,$00,$ff,$00
        .byte $ff,$00,$ff,$00,$ff,$00,$ff,$00,$ff,$00,$ff,$00,$ff,$00,$ff,$00
        .byte $ff,$00,$ff,$00,$ff,$00,$ff,$00,$00,$0b,$05,$00,$79,$20,$49,$78
        .byte $79,$20,$49,$7b,$79,$20,$49,$7e,$79,$20,$79,$20,$49,$7e,$ff,$00
        .byte $ff,$00,$ff,$00,$ff,$00,$ff,$00,$00,$05,$06,$02,$7d,$65,$7d,$66
        .byte $7d,$42,$7d,$67,$7d,$68,$7d,$42,$7d,$6a,$7d,$6b,$7d,$42,$ff,$00
        .byte $ff,$00,$ff,$00,$ff,$00,$ff,$00,$00,$0b,$04,$01,$49,$7f,$49,$80
        .byte $49,$81,$49,$82,$49,$83,$49,$84,$49,$85,$49,$86,$49,$87,$ff,$00
        .byte $ff,$00,$ff,$00,$ff,$00,$ff,$00,$00,$0b,$1b,$07,$79,$20,$79,$20
        .byte $79,$20,$79,$20,$79,$20,$79,$20,$79,$20,$79,$20,$79,$20,$ff,$00
        .byte $ff,$00,$ff,$00,$ff,$00,$ff,$00,$00,$00,$ff,$00,$ff,$00,$ff,$00
        .byte $ff,$00,$ff,$00,$ff,$00,$ff,$00,$ff,$00,$ff,$00,$ff,$00

    L_11b6:
        .byte $ff,$00,$ff,$00,$ff,$00,$ff,$00,$ff,$00,$00,$0c

    L_11c2:
        asl 

        .byte $00

    L_11c4:
        adc $ff20,y

        .byte $00,$ff,$00,$ff,$00,$ff,$00,$ff,$00,$ff,$00,$ff,$00,$ff,$00,$ff
        .byte $00,$ff,$00,$ff,$00,$ff,$00,$ff,$00,$ff,$00,$ff,$00,$ff,$00,$ff
        .byte $00,$ff,$00,$ff,$00,$ff,$00,$ff,$00,$ff,$00,$ff,$00,$ff,$00,$ff
        .byte $00,$ff,$00,$ff,$00,$ff,$00,$ff,$00,$a9,$08,$85,$ae,$a2,$00,$a0
        .byte $30,$a9,$00,$20,$43,$f0,$a9,$01,$8d,$14,$22,$a9,$00,$8d,$00,$22
        .byte $8d,$01,$22,$4c,$00,$1b,$00,$ff,$00

    L_1220:
        ldx #$f0
        txs 
        jmp $2a80

        .byte $ff,$00,$ff,$00,$ff,$00,$ff,$00,$ff,$00,$ff,$49,$10,$2e,$20,$49
        .byte $20,$2f,$20,$79,$20,$20,$20,$79,$20,$20,$20,$79
        .fill $17, $20
        .byte $00,$20,$05,$20,$00,$20,$00
        .fill $15, $20
        .byte $2a,$20,$2a,$20,$2a,$c7,$2a,$c8,$2a,$20,$2a,$ad,$09,$04,$20,$50
        .byte $2e,$ad,$09,$04,$29,$40,$d0,$0f,$ad,$09,$04,$29,$04,$09,$42,$8d
        .byte $09,$04,$a9,$0b,$8d,$0e,$04

    L_129c:
        lda $400 + $0e
        and #$01
        beq L_12b3
        lda $400 + $0e
        cmp #$06
        bcs L_12b0
        inc $400 + $0a
        jmp L_12b3
    L_12b0:
        dec $400 + $0a
    L_12b3:
        lda $400 + $09
        and #$07
        jsr $2e00
        dec $400 + $0e
        bne L_12c8
        lda $400 + $09
        eor #$40
        sta $400 + $09
    L_12c8:
        clc 
        rts 



        .byte $ff,$00,$ff,$00,$ff,$00,$ff,$0f,$10,$11,$ff,$00,$ff,$00,$ff,$00
        .byte $ff,$00,$ff,$00,$ff,$00,$ff,$00,$ff,$00,$ff,$00,$ff,$00,$ff,$00
        .byte $ff,$00,$ff,$00,$ff,$00,$ff,$00,$ff,$00,$ff,$00,$ff,$00,$ff,$00
        .byte $ff,$00,$ff,$00,$ff,$00

    L_1300:
        lda L_21fc + $4
        bne L_130d
        inc L_2213 + $1
        lda #$10
        sta L_21fc + $5
    L_130d:
        dec $400 + $07
        dec $400 + $06
        lda #$01
        sta L_21fc + $4
        rts 



        .byte $5b,$27,$d0,$03,$00,$ea,$ea

    L_1320:
        jmp L_275b

        .byte $00,$ff,$00,$ff,$00,$ff,$00,$ff,$00,$ff,$00,$ff,$00,$ff,$00,$ff
        .byte $00,$ff,$00,$ff,$00,$ff,$00,$ff,$00,$ff,$00,$ff,$00,$ff,$00,$ff
        .byte $00,$ff,$00,$ff,$00,$ff,$00,$ff,$00,$ff,$00,$ff,$00,$ff,$00,$ff
        .byte $00,$ff,$00,$ff,$00,$ff,$00,$ff,$00,$ff,$00,$ff,$00,$ff,$00,$ff
        .byte $00,$ff,$00,$ff,$00,$ff,$00,$ff,$00,$ff,$00,$ff,$00,$ff,$00,$ff
        .byte $00,$ff,$00,$ff,$00,$ff,$00,$ff,$00,$ff,$00,$ff,$00

    L_1380:
        jsr L_1bc0
        lda #$00
        sta $10
        sta $12
        lda #$08
        sta $13
        lda #$0c
        sta $11
        ldy #$00
    L_1393:
        lda L_30e8 + $8,y
        beq L_13a1
        sta ($10),y
        lda #$75
        sta ($12),y
        iny 
        bne L_1393
    L_13a1:
        ldx #$00
        ldy #$30
        lda #$01
        sta $ae
        lda #$00
        jsr $f043
        inc $400 + $36
        lda #$00
        sta L_21fc + $4
        sta $400 + $06
        sta $400 + $07
        jmp L_1b51

        .byte $00,$ff,$00,$ff,$00,$ff,$00,$ff,$00,$ff,$00,$ff,$00,$ff,$00,$ff
        .byte $00,$ff,$00,$ff,$00,$ff,$00,$ff,$00,$ff,$00,$ff,$00,$ff,$00,$ff
        .byte $00,$ff,$00,$ff,$00,$ff,$00,$ff,$00,$ff,$00,$ff,$00,$ff,$00,$ff
        .byte $00,$ff,$00,$ff,$00,$ff,$00,$ff,$00,$ff,$00,$ff,$00,$ff,$00,$ff

    L_13ff:
        .fill $33, $0
        .byte $95
        .fill $92, $0
        .byte $79,$79,$79,$79,$79,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$79
        .byte $00,$00,$00,$00,$79,$00,$00,$00,$00,$00,$00,$41,$41,$41,$79,$79
        .byte $00,$00,$00,$00,$79,$79,$41,$41,$41,$41,$00,$41,$41,$41,$79,$79
        .byte $00,$00,$00,$00,$79,$79,$41,$41,$41,$41,$00,$55,$55,$55,$55,$55
        .byte $55,$55,$55,$55,$55,$55,$55,$55,$55,$55,$55
        .fill $72, $0
        .byte $ff,$00,$ff,$00,$ff,$00,$ff,$00,$ff,$00,$ff,$00,$ff,$00,$ff,$00
        .byte $ff,$00,$ff,$00,$ff,$00,$ff,$00,$ff,$00,$ff,$00,$ff,$00,$ff,$00
        .byte $ff,$00,$ff,$00,$ff,$00,$ff,$00,$ff,$00,$ff,$00,$ff,$00,$ff,$00
        .byte $ff,$00,$ff,$00,$ff,$00,$ff,$00,$ff,$00,$ff,$00,$ff,$00,$ff,$00
        .byte $ff,$00,$ff,$00,$ff,$00,$ff,$00,$ff,$00,$ff,$00,$ff,$00,$ff,$00
        .byte $ff,$00,$ff,$00,$ff,$00,$ff,$00,$ff,$00,$ff,$00,$ff,$00,$ff,$00
        .byte $ff,$00,$ff,$00,$ff,$00,$ff,$00,$ff,$00,$ff,$00,$ff,$00,$ff,$00
        .byte $ff,$00,$ff,$00,$ff,$00,$ff,$00,$ff,$00,$ff,$00,$ff,$00
        .fill $a8, $75
        .byte $72,$72,$72,$72,$72,$72,$72,$72,$72,$72,$72,$72,$72,$72,$72,$72
        .byte $75,$75,$75,$75,$75
        .fill $15, $0
        .byte $72
        .fill $14, $0
        .byte $55,$55,$41,$41,$71,$71,$71,$71,$71,$71,$71,$71,$71,$71,$71,$71
        .byte $00,$00,$55,$55,$55,$55,$55,$41,$41
        .fill $13, $55
        .byte $41,$41
        .fill $13, $55
        .byte $41,$41
        .fill $11, $55
        .byte $00,$00,$41,$41,$55,$00,$00,$55,$00,$00,$55,$55,$55,$55,$55,$55
        .byte $00,$00,$55,$55,$55,$00,$00,$41,$41,$55
        .fill $13, $0
        .fill $6b, $75
        .byte $47,$52,$45,$45,$4e,$20,$42,$45,$52,$45,$54,$20,$32,$20,$3c,$54
        .byte $10,$ff
        .fill $15, $75
        .byte $30,$30,$42,$32,$04,$ff,$15,$00,$00,$00,$00,$00,$00,$00,$00,$d1
        .byte $20

    L_180b:
        .fill $12, $20
        .byte $20,$d3,$d4,$d4,$d4,$d4,$d3,$d3,$d4,$d4,$d4,$d4,$d4,$d4,$d4,$d3
        .byte $d3,$d4,$d4,$d4,$d5,$20,$d2,$20,$20,$d6,$20,$20,$20,$20,$d6,$20
        .byte $20,$20,$20,$d6,$20,$20,$20,$20,$20,$20,$20,$db,$db,$42,$43,$dc
        .byte $dc,$dc,$dc,$dc,$dc,$dc,$dc,$dc,$dc,$dd,$20,$de,$de,$20,$20,$20
        .byte $db,$db,$42,$43,$db,$db,$db,$db,$db,$db,$db,$db,$db,$db,$db,$db
        .byte $db,$db,$db,$20,$20,$db,$db,$42,$43,$db,$db,$db,$db,$db,$db,$db
        .byte $db,$db,$db,$db,$db,$db,$db,$db,$20,$20,$db,$db,$42,$43,$db,$db
        .byte $db,$db,$db,$db,$db,$db,$db,$db,$db,$db,$db,$db,$20,$20,$20,$d7
        .byte $d8,$42,$43,$db,$d7,$d8,$db,$d7,$d8,$db,$db,$db,$db,$db,$db,$d7
        .byte $d8,$20,$20,$20,$d9,$da,$42,$43,$20,$d9,$da,$20,$d9,$da,$20,$20
        .byte $20,$20,$20,$20,$d9,$da,$20,$20,$20,$20,$00
        .fill $38, $75

    L_1900:
        .byte $10,$00,$00,$20,$20,$20,$20,$20,$20
        .byte $e0,$e1,$20,$20,$1f,$20,$20,$20,$20,$20,$20,$20,$20,$20,$20,$e0
        .byte $db,$db,$e1,$20,$20,$20,$20,$20,$20,$20,$20,$20,$20,$20,$20,$e2
        .byte $e2,$e2,$e2,$20,$20,$20,$20,$20,$20,$20,$20,$20,$20,$20,$20,$e3
        .byte $e3,$e3,$e3
        .fill $1c, $20
        .byte $e6,$e6,$e6,$e6,$20,$20,$20,$20,$20,$20,$20,$20,$20,$20,$20,$20
        .byte $e2,$e2,$e2,$e2,$20,$20,$20,$20,$20,$20,$20,$20,$20,$20,$20,$20
        .byte $e2,$e2,$e2,$e2,$20,$20,$20,$20,$20,$20,$20,$20,$20,$20,$20,$20
        .byte $e3,$e3,$e3,$e3
        .fill $1c, $20
        .byte $e6,$e6,$e6,$e6,$20,$20,$20,$20,$20,$20,$20,$20,$20,$20,$20,$e0
        .byte $e2,$e2,$e2,$e2,$e1,$20,$20,$20,$20,$20,$20,$e5,$e5,$e5,$e0,$db
        .byte $e2,$e2,$e2,$e2,$db,$e1,$e5,$e5,$e5,$e5,$20,$e4,$e4,$e4,$db,$db
        .byte $e3,$e3,$e3,$e3,$db,$db,$e4,$e4,$e4,$e4,$20,$db,$db,$db,$db,$db
        .byte $db,$db,$db,$db,$db,$db,$db,$db,$db,$db,$db,$20,$20,$20,$20,$20
        .byte $20,$20,$20,$20,$20,$20,$20,$20,$c9,$70,$90,$0f,$c9,$d0,$b0,$0b
        .byte $ce,$0d,$04,$f0,$03,$4c,$54,$1b

    L_1a10:
        jmp L_2c20
    L_1a13:
        lda $400 + $09
        pha 
        and #$80
        bne L_1a54
        pla 
        jsr L_2e50
        lda $400 + $09
        sta $400 + $0f
        and #$04
        ora #$80
        sta $400 + $09
        nop 
        lda $400 + $0a
        clc 
        adc #$02
        sta $400 + $0a
        jsr L_2d00
        lda #$01
        sta $400 + $00
        lda $400 + $09
        and #$04
        ora #$c8
        ldx #$01
        jsr L_2e09
        lda $400 + $0a
        sec 
        sbc #$02
        sta $400 + $0a
        rts 


    L_1a54:
        pla 
        rts 



        .byte $ff,$00,$ff,$00,$ff,$00,$ff,$00,$ff,$00,$ff,$00,$ff,$00,$ff,$00
        .byte $ff,$00,$ff,$00,$ff,$00,$ff,$00,$ff,$00,$ff,$00,$ff,$00,$ff,$00
        .byte $ff,$00,$ff,$00,$ff,$00,$ff,$00,$ff,$00

    L_1a80:
        lda $400 + $0a
        cmp #$0b
        bne L_1a8a
        rts 


        nop 
        nop 
    L_1a8a:
        jsr L_2d00
        ldy #$79
        lda ($18),y
        beq L_1a98
        cmp #$20
        beq L_1a98
        rts 


    L_1a98:
        lda $400 + $09
        ora #$20
        sta $400 + $09
        rts 


        ora #$04
        ora #$20
        sta $400 + $09
    L_1aa8:
        lda $400 + $09
        jsr L_2e50
        inc $400 + $0a
        lda $400 + $0a
        cmp #$05
        beq L_1af0
        cmp #$0b
        beq L_1af0
        lda $400 + $09
        and #$07
        ora #$00
        jsr $2e00
        pla 
        clc 
        rts 



        .byte $00,$ff,$00,$ff,$00,$ff,$00,$ff,$00,$ff,$00,$ff,$00,$ff,$00,$ff
        .byte $00,$ff,$00,$ff,$00,$ff,$00,$ff,$00,$ff,$00,$ff,$00,$ff,$00,$ff
        .byte $00,$ff,$00,$ff,$00,$ff,$00

    L_1af0:
        lda $400 + $09
        and #$5f
        sta $400 + $09
        jsr $2e00
        pla 
        sec 
        rts 



        .byte $ff,$00

    L_1b00:
        lda #$00
        sta $ff15
        sta $ff19
        sta $400 + $09
        lda #$c0
        sta $ff12
        lda #$38
        sta $ff13
        lda #$88
        sta $ff07
        jsr L_1bc0
        jsr $db11
    L_1b20:
        lda #$03
        sta $400 + $0d
        nop 
        lda #$00
        sta $400 + $06
        sta $400 + $07
        sta $400 + $09
        lda #$0b
        ldy #$06
    L_1b35:
        lda L_2ce5,y
        sta $400 + $33,y
        dey 
        bpl L_1b35
        jsr L_1b90
        lda #$ed
        sta $ff15
        lda #$00
        sta $400 + $30
        sta $400 + $31
        sta $400 + $32
    L_1b51:
        jsr L_1bc0
    L_1b54:
        jsr L_1b70
        ldy #$02
    L_1b59:
        lda $400 + $33,y
        sta $400 + $00,y
        dey 
        bpl L_1b59
        lda #$20
        sta $400 + $03
        jsr L_2600
        jmp $2c00

        .byte $11,$a0,$00

    L_1b70:
        lda #$00
        sta $10
        sta $12
        lda #$08
        sta $13
        lda #$0c
        sta $11
        ldy #$00
    L_1b80:
        lda L_2b80,y
        beq L_1b8e
        sta ($10),y
        lda #$32
        sta ($12),y
        iny 
        bne L_1b80
    L_1b8e:
        rts 



        .byte $00

    L_1b90:
        lda #$28
        sta $10
        sta $12
        lda #$08
        sta $13
        lda #$0c
        sta $11
        ldy #$00
    L_1ba0:
        lda L_2cea + $6,y
        beq L_1bae
        sta ($10),y
        lda #$71
        sta ($12),y
        iny 
        bne L_1ba0
    L_1bae:
        jsr L_2a4d + $3
        cmp #$05
        bne L_1bae
        rts 



        .byte $ff,$00,$ff,$00,$ff,$00,$ff,$00,$ff,$00

    L_1bc0:
        lda #$00
        sta $10
        sta $12
        lda #$08
        sta $13
        lda #$0c
        sta $11
        lda #$20
        ldx #$04
    L_1bd2:
        ldy #$ff
        sty $400 + $00
        ldy #$00
    L_1bd9:
        sta ($10),y
        pha 
        lda #$00
        sta ($12),y
        pla 
        inc $10
        inc $12
        bne L_1beb
        inc $11
        inc $13
    L_1beb:
        dec $400 + $00
        bne L_1bd9
        dex 
        bne L_1bd2
        rts 



        .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00

    L_1c00:
        lda #$00
        tay 
        sta ($21),y
        rts 


        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        ldy #$04
        lda ($21),y
        cmp #$ff
        beq L_1c2e
        lda $400 + $10
        bne L_1c2e
        ldx #$00
        jsr $2d80
        lda #$01
        sta $400 + $00
        sta $400 + $03
        jsr $2f80
        nop 
    L_1c2e:
        ldy #$02
        lda ($21),y
        sec 
        sbc #$01
        sta ($21),y
        nop 
        nop 
        bmi L_1c00
        jsr $2d80
        lda #$01
        sta $400 + $00
        sta $400 + $03
        lda #$2d
        jsr L_2f00
    L_1c4b:
        jsr L_22a0
        cmp #$03
        bcc L_1c58
    L_1c52:
        rts 


        bcc L_1c5f
        rts 


        beq L_1cb0 + $8
    L_1c58:
        lda $400 + $09
        and #$80
        beq L_1c60
    L_1c5f:
        rts 


    L_1c60:
        tya 
        cmp #$03
        bcs L_1c52
        dec $400 + $0d
        beq L_1c6d
        jmp L_1b54
    L_1c6d:
        jmp L_2c20
        lda #$00
        tay 
        sta ($21),y
        rts 



        .byte $06,$78,$e8,$f8,$08,$c8,$30,$4c,$10,$1c

    L_1c80:
        lda L_11b6 + $a
        bne L_1c86
        rts 


    L_1c86:
        lda #$0e
        jsr L_2030

        .byte $a0,$00,$b1,$21,$29,$01,$f0,$ea,$a0,$04,$b1,$21,$c9,$ff,$f0,$16
        .byte $ad,$10,$04,$d0,$11,$a2,$00,$20,$80,$2d,$a9,$01,$8d,$00,$04,$8d
        .byte $03,$04,$20,$80,$2f

    L_1cb0:
        .byte $ea,$a0,$02,$b1,$21,$18,$69,$01,$91,$21,$c9,$27,$b0,$32
        .byte $20,$80,$2d,$a9,$01,$8d,$00,$04,$8d,$03,$04,$a9,$2d,$20,$00,$2f
        .byte $4c,$4b,$1c,$60,$a9,$71,$81,$1f,$60,$00,$c0,$f0,$60,$78,$30,$08
        .byte $c4,$22,$15,$0f,$03,$00,$00,$00,$00,$00,$00,$c0,$f0,$60,$78,$30
        .byte $08,$c4,$a9,$00,$a8,$91,$21,$60,$03,$02,$04,$06,$78,$e8,$f8,$08
        .byte $c8

    L_1cff:
        .byte $30,$ad
        .byte $c0,$11,$f0,$03,$68,$a8,$60

    L_1d08:
        ldy #$00
        lda ($21),y
        nop 
        nop 
        nop 
        sta L_11b6 + $a
        iny 
        lda ($21),y
        clc 
        adc #$01
        sta L_11b6 + $b
        iny 
        lda ($21),y
        sta L_11c2
        lda #$ff
        sta L_11c4
        lda L_11b6 + $a
        and #$01
        beq L_1d31
        lda #$03
        bne L_1d33
    L_1d31:
        lda #$ff
    L_1d33:
        clc 
        adc L_11c2
        sta L_11c2
        pla 
        tay 
        rts 



        .byte $03,$04,$ea,$ea,$ea,$a9,$2d,$20,$00,$2f,$60,$00,$04,$8d,$03,$04
        .byte $a9,$2d,$20,$00,$2f,$68,$85,$21,$60,$00,$00,$b1,$21,$09,$10,$91
        .byte $21,$c8,$b1,$21,$48,$c8,$b1,$21,$a0,$1a,$91,$21,$88,$68,$91,$21
        .byte $88,$ea,$a9,$a9,$00,$a0,$00,$91,$21,$60,$00,$ff,$00,$ff,$00,$ff
        .byte $00,$ff,$00

    L_1d80:
        ldy #$03
        lda ($21),y
        pha 
        tax 
        inx 
        txa 
        and #$03
        sta $400 + $01
        pla 
        and #$fc
        ora $400 + $01
        sta ($21),y
        tax 
        and #$03
        bne L_1db1
        jsr L_1dd0
        lda #$05
        sta ($21),y
        tax 
        dey 
        lda ($21),y
        sec 
        sbc #$01
        sta ($21),y
        beq L_1de0
        jsr L_22c0
        beq L_1de3
    L_1db1:
        txa 
        and #$03
        beq L_1dba
        lda #$03
        bne L_1dbc
    L_1dba:
        lda #$02
    L_1dbc:
        sta $400 + $00
        lda #$03
        sta $400 + $03
        lda L_317f + $1,x
        jmp L_2141

        .byte $ff,$00,$ff,$00,$ff,$00

    L_1dd0:
        tya 
        pha 
        jsr L_2280
        cmp #$03
        bcc L_1ddc
        pla 
        tay 
        rts 


    L_1ddc:
        jmp L_1cff + $1

        .byte $00

    L_1de0:
        jmp $20e0
    L_1de3:
        jmp L_20f0

    L_1de6:
         .byte $a0,$00,$b1,$21,$29,$ef,$91,$21,$d0,$18,$48,$29,$10,$f0,$13,$ea
        .byte $00,$1d,$ea,$ea,$ea,$ea,$ea,$ea,$ea,$ea,$ea,$ea,$ea,$ea,$ea,$ea
        .byte $ea,$ea,$68,$29,$01,$d0,$03,$4c,$80,$1d

    L_1e10:
        ldy #$03
        lda ($21),y
        clc 
        adc #$01
        and #$03
        sta ($21),y
        tax 
        cmp #$03
        bne L_1e39
        jsr L_1dd0
        lda #$00
        sta ($21),y
        tax 
        dey 
        lda ($21),y
        clc 
        adc #$01
        sta ($21),y
        cmp #$26
        beq L_1e50
        jsr L_22c0
        beq L_1e53
    L_1e39:
        txa 
        beq L_1e40
        lda #$03
        bne L_1e42
    L_1e40:
        lda #$02
    L_1e42:
        sta $400 + $00
        lda #$03
        sta $400 + $03
        lda L_317f + $1,x
        jmp L_2141
    L_1e50:
        jmp $20e0
    L_1e53:
        jmp L_20f0

        .byte $00,$c0,$11,$f0,$03,$68,$a8,$60

    L_1e5e:
        ldy #$00
        lda ($21),y
        clc 
        adc #$01
        sta L_11b6 + $a
        iny 
        lda ($21),y
        clc 
        adc #$01
        sta L_11b6 + $b
        iny 
        lda ($21),y
        sta L_11c2
        lda #$ff
        sta L_11c4
        pla 
        tay 
        rts 


        rts 


    L_1e80:
        pla 
        ldy #$03
        lda ($21),y
        and #$fc
        ora #$02
        sta ($21),y
        ldy #$01
        lda ($21),y
        tax 
        inx 
        txa 
        sta ($21),y
        cmp #$0b
        beq L_1e9a
        cmp #$05
    L_1e9a:
        bne L_1eb0
        nop 
        nop 
        nop 
        ldy #$00
        lda ($21),y
        eor #$04
        sta ($21),y
        jmp L_1f2c
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
    L_1eb0:
        lda #$03
        sta $400 + $00
        lda #$03
        sta $400 + $03
        ldy #$03
        lda ($21),y
        tax 
        lda L_317f + $1,x
        pha 
        jsr $2d80
        pla 
        jmp L_2f00
    L_1eca:
        jsr L_2a4d + $3
        beq L_1eca
        rts 



        .byte $ff,$00,$ff,$00,$ff,$00,$ff,$00,$ff,$00,$ff,$00,$ff,$00,$ff,$00
        .byte $ff,$00,$ff,$00,$ff,$00,$20,$20,$07,$00,$ff,$00,$ff,$00,$ff,$00
        .byte $ff,$00,$ff,$00,$ff,$00,$ff,$00,$ff,$00,$ff,$00,$ff,$00,$ff,$00
        .byte $ea,$ea,$ea,$ea,$ea,$4c,$10,$1f,$00,$00,$00,$00,$00,$60,$00,$00

    L_1f10:
        jsr $2d80
        ldy #$03
        lda ($21),y
    L_1f17:
        and #$03
        beq L_1f1f
        lda #$03
        bne L_1f21
    L_1f1f:
        lda #$02
    L_1f21:
        sta $400 + $00
        lda #$03
        sta $400 + $03
        jsr $2f80
    L_1f2c:
        ldy #$00
        lda ($21),y
        beq L_1f53
        cmp #$80
        bne L_1f39
        jmp L_2100
    L_1f39:
        cmp #$81
        bne L_1f40
        jmp L_207c + $4
    L_1f40:
        pha 
        and #$04
        beq L_1f48
        jmp L_1e80

    L_1f48:
         .byte $68,$48,$29,$02,$f0,$04
        .byte $68,$4c,$f0,$1d,$00

    L_1f53:
        rts 



        .byte $ff,$00,$ff,$00,$ff,$00,$ff,$00,$ff,$00,$ff,$00,$ff,$00,$ff,$00
        .byte $ff,$00,$ff,$00,$ff,$00,$ff,$00,$ff,$00,$ff,$00,$ff,$00,$ff,$00
        .byte $ff,$00,$ff,$00,$ff,$00,$ff,$00,$ff,$00,$ff,$00,$ff,$00,$ff,$00

    L_1f84:
        .byte $ff,$00,$ff,$00,$ff,$00,$ff,$00,$ff,$00,$ff,$00,$ff,$00,$ff,$00
        .byte $ff,$00,$ff,$00,$ff,$00,$ff,$00,$ff,$00,$ff,$00,$ff,$00,$ff,$00
        .byte $ff,$00,$ff,$00,$ff,$00,$ff,$00,$ff,$00,$ff,$00,$ff,$00,$ff,$00
        .byte $ff,$00,$ff,$00,$ff,$00,$ff,$00,$ff,$00,$ff,$00,$ff,$00,$ff,$00
        .byte $ff,$00,$ff,$00,$ff,$00,$ff,$00,$ff,$00,$ff,$00,$ff,$00,$ff,$00
        .byte $ff,$00,$ff,$00,$ff,$00,$ff,$00,$ff,$00,$ff,$00,$ff,$00,$ff,$00
        .byte $ff,$00,$ff,$00,$ff,$00,$ff,$00,$ff,$00,$ff,$00,$ff,$00,$ff,$00
        .byte $ff,$00,$ff,$00,$ff,$00,$ff,$00,$ff,$00,$ff,$00

    L_2000:
        lda #$01
    L_2002:
        ldy #$00
        pha 
    L_2005:
        jsr L_2030

        .byte $b1,$21,$d0,$09,$20,$10,$22,$4c,$23,$20,$21,$f0,$0e,$20,$00,$1f
        .byte $20,$c0,$20,$ad,$0c,$04,$e9,$03

    L_2020:
        sta $400 + $0c
    L_2023:
        pla 
        tax 
        inx 
        txa 
        cmp #$0e
        bne L_2002
        rts 



    L_202c:
         .byte $ff,$00,$ff,$00

    L_2030:
        pha 
        lda #$00
        sta $21
        lda #$10
        sta $22
        pla 
        beq L_204b
        tax 
    L_203d:
        clc 
        lda #$20
        adc $21
        sta $21
        bcc L_2048
        inc $22
    L_2048:
        dex 
        bne L_203d
    L_204b:
        rts 



        .byte $ff,$00,$ff,$00,$ad,$10,$04,$f0,$0b,$4c,$7c,$20,$08,$f0,$05,$60
        .byte $ad,$10,$04,$00

    L_2060:
        jsr $2d80
        ldy #$03
        lda ($21),y
        and #$03
        beq L_206f
        lda #$03
        bne L_2071
    L_206f:
        lda #$02
    L_2071:
        sta $400 + $00
        lda #$03
        sta $400 + $03
    L_2079:
        jsr $2f80

    L_207c:
         .byte $a0,$00,$b1,$21,$ea,$ea,$ea,$ea,$ea,$ea,$ea,$ea,$a0,$03,$b1,$21
        .byte $aa,$e8,$8a,$29,$03,$91,$21,$aa,$d0,$11,$88,$b1,$21,$18,$69,$01
        .byte $91,$21,$c9,$26,$f0,$3e,$20,$c0,$22,$f0,$49,$8a,$f0,$04,$a9,$03
        .byte $d0,$02

    L_20ae:
        lda #$02
    L_20b0:
        sta $400 + $00
        lda #$03
        sta $400 + $03
        lda L_317f + $1,x
        jmp L_2141
        rts 



        .byte $23

    L_20c0:
        ldy #$00
        lda ($21),y
        bne L_20c7
        rts 


    L_20c7:
        jsr L_22a0
        pha 
        clc 
        adc #$02
        cmp #$05
        bcc L_20d4
        pla 
        rts 


    L_20d4:
        tya 
        clc 
    L_20d6:
        adc #$01
        cmp #$03
    L_20da:
        bcc L_2150
        pla 
        rts 



        .byte $00,$d0,$a9,$00

    L_20e2:
        ldy #$00
        sta ($21),y
        rts 



        .byte $a2,$20,$00,$02,$00,$02,$00,$02,$00

    L_20f0:
        ldy #$00
        lda ($21),y
        ora #$04
        sta ($21),y
        jmp L_1f2c
        rts 



        .byte $ff,$00,$ff,$00

    L_2100:
        ldy #$03
        lda ($21),y
        pha 
        tax 
        inx 
        txa 
        and #$03
        sta $400 + $01
        pla 
        and #$fc
        ora $400 + $01
        sta ($21),y
        tax 
        and #$03
        cmp #$01
        bne L_212b
        dey 
        lda ($21),y
        sec 
        sbc #$01
        sta ($21),y

        .byte $f0,$ba,$20,$c0,$22,$f0,$c5

    L_212b:
        txa 
        and #$03
        beq L_2134
        lda #$03
        bne L_2136
    L_2134:
        lda #$02
    L_2136:
        sta $400 + $00
        lda #$03
        sta $400 + $03
        lda L_317f + $1,x
    L_2141:
        pha 
        jsr $2d80
        pla 
        jsr L_2f00
        rts 



        .byte $ff,$00,$ff,$00,$ff,$00

    L_2150:
        pla 
        nop 
        nop 
        lda $400 + $09
        pha 
        and #$10
        lda #$00
        sta $ff11
        jmp L_217f
        bmi L_2180
        ldy #$00
        lda ($21),y
        ora #$40
        jmp L_20e2

        .byte $ff,$00,$ff,$00,$98,$10,$0d,$a0,$00,$b1,$21,$09,$40,$4c,$e2,$20
        .byte $ff,$00,$ff

    L_217f:
        pla 
    L_2180:
        dec $400 + $0d
        beq L_2188
        jmp L_1b54
    L_2188:
        jmp L_2c20

        .byte $00,$ff,$00,$ff,$00,$79,$7a,$7b,$00,$ff,$00,$ff,$00,$ff,$00,$ff
        .byte $00,$ff,$00,$ff,$00,$ff,$00,$ff,$00,$ff,$00,$ff,$00,$ff,$00,$ff
        .byte $00,$ff,$00,$ff,$00,$ff,$00,$ff,$00,$ff,$00,$ff,$00,$7c,$7d,$7e
        .byte $00,$ff,$00,$ff,$00,$ff,$00,$ff,$00,$ff,$00,$ff,$00,$ff,$00,$ff
        .byte $00,$ff,$00,$ff,$00,$ff,$00,$ff,$00,$ff,$00,$ff,$00,$ff,$00,$ff
        .byte $00,$ff,$00,$ff,$00,$ff,$00,$ff,$00,$ff,$00,$ff,$00,$ff,$00,$ff
        .byte $00,$ff,$00,$ff,$00,$ff,$00,$ff,$00,$ff,$00,$ff,$00,$ff,$00,$ff
        .byte $00

    L_21fc:
        .byte $ff,$00,$ff,$00,$00,$00
        .byte $ad,$00,$22,$f0,$17,$ce,$01,$22,$d0,$12,$4c,$80,$13,$00

    L_2210:
        jsr L_2280

    L_2213:
         .byte $c9,$01,$90,$02
        .byte $60,$ad,$4c,$02,$22,$01,$ea

    L_221e:
        tya 
        pha 
        and #$01
        ora #$80
        ldy #$00
        sta ($21),y
        pla 
        cmp #$20
        bcs L_2231
        lda #$00
        beq L_2240
    L_2231:
        cmp #$70
        bcs L_2239
        lda #$05
        bne L_2240
    L_2239:
        lda #$0b
        nop 
        nop 
        nop 
        nop 
        nop 
    L_2240:
        ldy #$01
        sta ($21),y
        dey 
        lda ($21),y
        iny 
        iny 
        and #$01
        beq L_2257
        lda #$01
        sta ($21),y
        iny 
        sta ($21),y
        jmp L_2260
    L_2257:
        lda #$25
        sta ($21),y
        iny 
        lda #$04
        sta ($21),y
    L_2260:
        jsr L_22c0
        bne L_226c
        lda #$00
        ldy #$00
        sta ($21),y
        rts 


    L_226c:
        jsr L_2280
        tya 
        cmp #$10
        bcc L_227c
        ldy #$00
        lda ($21),y
        ora #$82
        sta ($21),y
    L_227c:
        jmp L_1f2c

        .byte $00

    L_2280:
        lda $ff04
        eor $ff03
        tay 
        lda $ff05
        eor $ff02
        sty $ff04
        sta $ff05
        rts 



        .byte $ff,$00,$ff,$00,$ff,$00,$ff,$00,$ff,$00,$ff,$00

    L_22a0:
        ldy #$01
        lda ($21),y
        sec 
        sbc $400 + $0a
        pha 
        iny 
        lda ($21),y
        sec 
        sbc $1a
        tay 
        pla 
        rts 



        .byte $ff,$00,$ff,$00,$ff,$00,$49,$49,$49,$00,$ff,$00,$ff,$00

    L_22c0:
        ldy #$01
        lda ($21),y
        cmp #$0b
        bne L_22cb
        cmp #$0a
        rts 


    L_22cb:
        txa 
        pha 
        jsr $2d80
        pla 
        tax 
        ldy #$79
        lda ($1d),y
        beq L_22da
        cmp #$20
    L_22da:
        rts 



        .byte $00,$ff,$00,$ff,$00,$7d,$7e,$ff,$00,$ff,$00,$ff,$00,$ff,$00,$ff
        .byte $00,$ff,$00,$ff,$00,$7c,$7d,$7e,$00,$ff,$00,$ff,$00,$ff,$00,$ff
        .byte $00,$ff,$00,$ff,$00,$ff,$00,$ff,$00,$ff,$00,$ff,$00,$7f,$80,$ff
        .byte $00,$ff,$00,$ff,$00,$ff,$00,$ff,$00,$ff,$00,$ff,$00,$ff,$00,$ff
        .byte $00,$ff,$00,$ff,$00,$ff,$00,$ff,$00,$ff,$00,$ff,$00,$ff,$00,$ff
        .byte $00,$ff,$00,$ff,$00,$81,$82,$ff,$00,$ff,$00,$ff,$00,$ff,$00,$ff
        .byte $00,$ff,$00,$ff,$00,$ff,$00,$ff,$00,$ff,$00,$ff,$00,$ff,$00,$ff
        .byte $00,$ff,$00,$ff,$00,$ff,$00,$ff,$00,$ff,$00,$ff,$00,$ff,$00,$ff
        .byte $00,$ff,$00,$ff,$00,$ff,$00,$ff,$00,$ff,$00,$ff,$00,$ff,$00,$ff
        .byte $00,$ff,$00,$ff,$00,$ff,$00,$ff,$00,$ff,$00,$ff,$00,$ff,$00,$ff
        .byte $00,$ff,$00,$ff,$00,$ff,$00,$ff,$00,$ff,$00,$ff,$00,$49,$49,$49
        .byte $00,$ff,$00,$ff,$00,$ff,$00,$ff,$00,$ff,$00,$ff,$00,$ff,$00,$ff
        .byte $00,$ff,$00,$ff,$00,$ff,$00,$ff,$00,$ff,$00,$ff,$00,$ff,$00,$ff
        .byte $00,$ff,$00,$ff,$00,$49,$49,$49,$00,$ff,$00,$ff,$00,$ff,$00,$ff
        .byte $00,$ff,$00,$ff,$00,$ff,$00,$ff,$00,$ff,$00,$ff,$00,$ff,$00,$ff
        .byte $00,$ff,$00,$ff,$00,$ff,$00,$ff,$00,$ff,$00,$70,$70,$49,$49,$49
        .byte $00,$ff,$00,$ff,$00,$ff,$00,$ff,$00,$ff,$49,$49,$49,$ff,$00,$ff
        .byte $00,$ff,$00,$ff,$00,$ff,$00,$ff,$00,$ff,$00,$ff,$00,$49,$49,$49
        .byte $00,$ff,$00,$ff,$00

    L_2400:
        lda #$28
        sta $1d
        sta $1f
        lda #$0c
        sta $1e
        lda #$08
        sta $20
        ldx $400 + $0d
    L_2411:
        txa 
        pha 
        lda #$fe
    L_2415:
        clc 
        adc #$03
        dex 
        bne L_2415
        tay 
        pla 
        tax 
        lda #$02
        sta $400 + $00
        lda #$c5
    L_2425:
        pha 
        sta ($1d),y
        lda #$79
        sta ($1f),y
        iny 
        sta ($1f),y
        pla 
        clc 
        adc #$01
        sta ($1d),y
        adc #$01
        pha 
        tya 
        adc #$27
        tay 
        pla 
        dec $400 + $00
        bne L_2425
        dex 
        bne L_2411
        rts 



        .byte $ff,$00

    L_2448:
        eor #$49
        eor #$00

        .byte $ff,$00,$ff,$00,$ff,$00,$ff,$00,$ff,$00,$ff,$00,$ff,$00,$ff,$00
        .byte $ff,$00,$ff,$00,$ff,$00,$ff,$00,$ff,$00,$ff,$00,$ff,$00,$ff,$00
        .byte $ff,$00,$ff,$00,$ff,$00,$ff,$00,$ff,$00,$ff,$00,$ff,$00,$ff,$49
        .byte $49,$49,$ff,$00,$ff,$00,$ff,$00,$ff,$00,$ff,$00,$ff,$00,$ff,$00
        .byte $ff,$00,$ff,$00,$ff,$00,$ff,$00,$ff,$00,$ff,$00,$ff,$00,$ff,$00
        .byte $ff,$00,$ff,$00,$ff,$00,$ff,$49,$49,$49,$ff,$00,$ff,$00,$ff,$00
        .byte $ff,$00,$ff,$00,$ff,$00,$ff,$00,$7f,$80,$81,$00,$ff,$00,$ff,$00
        .byte $ff,$00,$ff,$00,$ff,$00,$ff,$00,$ff,$00,$ff,$00,$ff,$00,$ff,$49
        .byte $49,$49,$ff,$00,$ff,$00,$ff,$00,$ff,$00,$ff,$00,$ff,$00,$ff,$00
        .byte $82,$83,$84,$00,$ff,$00,$ff,$00,$ff,$00,$ff,$00,$ff,$00,$ff,$00
        .byte $ff,$00,$ff,$00,$ff,$00,$ff,$00,$ff,$00,$ff,$00,$ff,$00,$ff,$00
        .byte $ff,$00,$ff,$00,$ad,$09,$04,$c9,$08,$f0,$38,$a9,$02,$8d,$0e,$04
        .byte $a0,$00

    L_250e:
        lda L_25f0,y
        beq L_2519
        sta $ff0e,y
        iny 
        bne L_250e
    L_2519:
        lda $400 + $09
        sta $400 + $0f
        pha 
        jsr L_2e50
        pla 
        and #$f4
        ora #$11
        sta $400 + $09
        jsr $2e00
        beq L_2580
    L_2530:
        pha 
        and #$20
        beq L_2538
        jmp L_1aa8
    L_2538:
        pla 
        pha 
        and #$10
        beq L_2568
        pla 
    L_253f:
        nop 
        dec $400 + $0e
        beq L_254a
        jsr L_2580
        clc 
        rts 


    L_254a:
        lda $ff11
        and #$9f
        sta $ff11
        lda $400 + $09
        jsr L_2e50
        lda $400 + $0f
        sta $400 + $09
        jsr $2e00
        clc 
        rts 



        .byte $41,$00,$00,$ff,$00

    L_2568:
        pla 
        and #$40
        bne L_2570
        sec 
        rts 


        nop 
    L_2570:
        jsr $1280
        rts 



        .byte $ff,$00,$ff,$00,$ff,$00,$ff,$00,$ff,$00,$ff,$00

    L_2580:
        lda #$01
    L_2582:
        ldy #$00
        pha 
        jsr L_2030
        lda ($21),y
        beq L_2593
        and #$60
        bne L_2593
        jsr L_25a0
    L_2593:
        pla 
        tax 
        inx 
        txa 
        cmp #$0e
        bne L_2582
        rts 



        .byte $ff,$60,$ff,$00

    L_25a0:
        jsr L_22a0
        cmp #$00
        beq L_25a8
        rts 


    L_25a8:
        lda $400 + $09
        and #$04
        bne L_25b3
        lda #$01
        bne L_25b5
    L_25b3:
        lda #$fe
    L_25b5:
        sta $400 + $00
        tya 
        sec 
        sbc $400 + $00
        beq L_25c8
        cmp #$ff
        beq L_25c8
        cmp #$02
        beq L_25c8
        rts 


    L_25c8:
        ldy #$00
        lda ($21),y
        ora #$40
        sta ($21),y
        lda #$78
        clc 
        adc $400 + $30
        sta $400 + $30
        lda #$00
        adc $400 + $31
        sta $400 + $31
        lda #$00
        adc $400 + $32
        sta $400 + $32
        rts 



        .byte $ff,$60,$ff,$00,$ff,$00

    L_25f0:
        eor $44,x

        .byte $ff,$41,$00,$00,$ff,$00,$ff,$00,$ff,$00,$ff,$00,$ff,$00

    L_2600:
        lda #$80
    L_2602:
        pha 
        ldy #$18
        sec 
        lda #$00
        sbc #$80
    L_260a:
        rol 
        cmp #$0a
        bcc L_2611
        sbc #$0a
    L_2611:
        rol $400 + $00
        rol $400 + $01
        rol $400 + $02
        nop 
        nop 
        nop 
        dey 
        bpl L_260a
        bvc L_2602
        pha 
        lda #$0c
        sta $11
        lda #$08
        sta $13
        lda #$00
        sta $10
        sta $12
        ldy $400 + $03
        pla 
    L_2635:
        ora #$30
        sta ($10),y
        lda #$71
        sta ($12),y
        iny 
        pla 
        bpl L_2635
        rts 



        .byte $a9,$28,$85,$1d,$85,$1f,$a9,$0c,$85,$1e,$a9,$08,$85,$20,$a9,$02
        .byte $8d,$00,$04,$ae,$0d,$04,$8a,$48,$a9,$00,$18,$69,$03,$ca,$d0,$fb
        .byte $a8,$68,$aa,$a9,$c5,$48,$70,$71,$72,$79,$91,$1f,$c8,$91,$1f,$68
        .byte $18,$69,$01,$91,$1d,$69,$01,$48,$98,$69,$26,$a8,$00,$00

    L_2680:
        lda #$08
        sta $400 + $09
        jsr $2e00
        rts 


        rti 

        .byte $a2,$00,$ca,$d0,$fd,$88,$73,$74,$75,$a0,$40

    L_2695:
        ldx #$00
    L_2697:
        dex 
        bne L_2697
        dey 
        bne L_2695
        rts 



        .byte $ff,$00,$20,$00,$2d,$a0,$79,$b1,$18,$c9,$42,$f0,$07,$c9,$43,$f0
        .byte $03,$4c,$00,$1a

    L_26b2:
        .byte $ad,$0a,$04,$c9,$0b,$f0,$76
        .byte $ad,$09,$04,$29,$03,$20,$50,$2e,$a9,$08,$8d,$09,$04,$ee,$0a,$04
        .byte $20,$00,$2e,$60,$0c,$04,$00

    L_26d0:
        dex 
        bne L_26d0
        dey 

        .byte $d0,$f8,$60,$00,$ff,$00,$ff,$00,$ff,$00,$ff,$00,$ff,$00,$ff,$00
        .byte $ff,$00,$ff,$00,$ff,$00,$ff,$00,$ff,$00,$ff,$00,$ff,$00,$ff,$00
        .byte $ff,$00,$ff,$00,$ff,$00,$ff,$00,$ff,$00,$ff,$00,$ad,$0a,$04,$f0
        .byte $09,$c9,$05,$f0,$05,$c9,$0b,$f0,$01,$60

    L_270e:
        lda $400 + $09
        pha 
        jsr L_2e50
        pla 
        pha 
        and #$03
        tax 
        inx 
        txa 
        and #$03
        sta $400 + $09
        pla 
        and #$f0
        ora $400 + $09
        sta $400 + $09
        and #$03
        bne L_275b
        inc $1a
        lda $1a
        cmp #$20
        bne L_275b
        jmp $2b20
        nop 
        nop 
    L_273b:
        lda $400 + $06
        cmp $400 + $08
        beq L_2749
        jsr L_2908
        jmp L_275b
    L_2749:
        inc $400 + $07
        lda $400 + $07
        cmp #$0c
        beq L_2770
        lda #$00
        sta $400 + $06
        jsr L_2908
    L_275b:
        jsr L_27d8
        and #$03
        jsr $2e00
        lda $400 + $0c
        clc 
        sbc #$03
        sta $400 + $0c
        rts 


        rts 



        .byte $ff,$00

    L_2770:
        pla 
        pla 
        jsr L_1300
        jmp L_2b77
        rts 



        .byte $00,$ff,$00,$ff,$00,$ff,$00,$ad,$0a,$04,$f0,$09,$c9,$05,$f0,$05
        .byte $c9,$0b,$f0,$01,$60

    L_278e:
        lda $400 + $09
        pha 
        and #$03
        jsr L_2e50
        pla 
        pha 
        and #$03
        tax 
        inx 
        txa 
        and #$03
        sta $400 + $09
        pla 
        and #$f8
        ora #$04
        ora $400 + $09
        sta $400 + $09
        and #$03
        cmp #$01
        bne L_27c1
        dec $1a
        lda $1a
        cmp #$01
        bne L_27c1
        inc $1a
        jmp L_27c9
    L_27c1:
        jsr L_27d8
        and #$07
        jsr $2e00
    L_27c9:
        lda $400 + $0c
        clc 
        sbc #$03
        sta $400 + $0c
        rts 


        rts 



        .byte $ff,$00,$ff,$00

    L_27d8:
        jsr L_1a80
        lda $400 + $09
        rts 



        .byte $00,$ad,$14,$04,$c9,$42,$f0,$05,$c9,$43,$d0,$0f,$ea

    L_27ec:
        lda $400 + $09
        and #$03
        jsr L_2e50
        dec $400 + $0a
        jmp L_2680
    L_27fa:
        jmp $1280

        .byte $00,$ff,$00

    L_2800:
        inc $53
        lda $53
        jsr L_288f
        jsr L_28b4
        ldy #$00
        lda ($14),y
        sta $50
        sty $52
        jmp L_2858

        .byte $04,$4c,$5b,$28

    L_2819:
        lda $400 + $07
        sta $53
        nop 
        jsr L_288f
        inc $400 + $05
        lda $400 + $05
        cmp #$11
        beq L_2848
        jsr L_28b4
        clc 
        lda $10
        adc #$28
        sta $10
        bcc L_283a
        inc $11
    L_283a:
        clc 
        lda $12
        adc #$28
        sta $12
        bcc L_2845
        inc $13
    L_2845:
        jmp L_2849
    L_2848:
        rts 


    L_2849:
        ldy #$00
        sty $51
        lda ($14),y
        sta $50
        ldy $400 + $06
        sty $52
        bne L_2877
    L_2858:
        lda ($14),y
        pha 
    L_285b:
        ldy $52
        lda ($16),y
        ldy $51
        sta ($12),y
        pla 
        sta ($10),y
        iny 
        sty $51
        tya 
        cmp #$28
        beq L_2819
        inc $52
        lda $52
        cmp $400 + $04
        beq L_2800
    L_2877:
        lda $50
        beq L_2880
        ldy $52
    L_287d:
        jmp L_2858
    L_2880:
        ldy #$00
        jmp L_2858

        .byte $52,$ea,$4c,$5b,$28,$a0,$00,$4c,$5b,$28

    L_288f:
        clc 
        rol 
        tay 
        lda $3000,y
        sta $14
        lda L_3001,y
        sta $15
        lda L_30fa + $6,y
        sta $16
        lda L_30fa + $7,y
        sta $17
        ldy #$00
        lda ($14),y
        sta $400 + $04
        inc $14
        bne L_28b3
        inc $15
    L_28b3:
        rts 


    L_28b4:
        ldy #$00
        ldx $400 + $05
        beq L_28e3
    L_28bb:
        lda ($14),y
        clc 
        beq L_28ce
        lda $14
        adc $400 + $04
        sta $14
        bcc L_28d4
        inc $15
        jmp L_28d4
    L_28ce:
        inc $14
        bne L_28d4
        inc $15
    L_28d4:
        clc 
        lda $16
        adc $400 + $04
        sta $16
        bcc L_28e0
        inc $17
    L_28e0:
        dex 
        bne L_28bb
    L_28e3:
        rts 


        eor $5959,y
        eor $5959,y
        eor $5959,y
        eor $5959,y
        eor $5959,y
        eor $5959,y
        eor $5959,y
        eor $5959,y
        eor $5959,y
        eor $eaea,y
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
    L_2908:
        lda #$18
        sta $10
        sta $12
        lda #$0d
        sta $11
        lda #$09
        sta $13
        lda #$00
        sta $400 + $05
        lda $400 + $07
        sta $400 + $03
        jsr L_288f
        jsr L_28b4
        lda $400 + $04
        sta $400 + $08
        jsr L_2980
        lda $400 + $0c
        clc 
        sbc #$1a
        sta $400 + $0c
        ldy #$02
    L_293b:
        lda $400 + $36,y
        sta $400 + $00,y
        dey 
        bpl L_293b
        lda #$70
        sta $400 + $03
        lda #$01
        sta $400 + $10
        jmp L_2600

        .fill $2f, $59

    L_2980:
        .byte $ad,$1c,$ff
        .byte $29,$01,$d0,$f9

    L_2987:
        lda $ff1d
        cmp #$70
        bne L_2987
        jmp L_2849
        inc $494c
        plp 
        eor $5959,y
        eor $5959,y
        eor $5959,y
        eor $5959,y
        eor $5959,y
        eor $5959,y
        eor $5959,y
        eor $5959,y
        eor $5959,y
        eor $5959,y
        eor $5959,y
        eor $5959,y
        eor $5959,y
        eor $5959,y
        eor $5959,y
        eor $5959,y
        eor $5959,y
        eor $5959,y
        eor $5959,y
        eor $5959,y
        eor $5959,y
        eor $5959,y
        eor $5959,y
        eor $5959,y
        eor $5959,y
        eor $5959,y
        eor $5959,y
        eor $5959,y
        eor $5959,y
        eor $5959,y
        eor $5959,y
        eor $5959,y
        eor $5959,y
        eor $5959,y
        eor $5959,y
        eor $ea59,y
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        jsr L_2400
        nop 
        nop 
        jsr $2900
        lda #$4c
        sta $18
        lda #$0f
        sta $19
    L_2a21:
        lda #$00
        sta $400 + $09
        jsr $2e00
    L_2a29:
        ldy #$02
    L_2a2b:
        lda $400 + $30,y
        sta $400 + $00,y
        dey 
        bpl L_2a2b
        lda #$08
        sta $400 + $03
        jsr L_2600
        lda #$00
        sta $400 + $10
        lda #$60
        sta $400 + $0c
        jmp L_1220
        dey 
    L_2a4a:
        jmp ($308c)

    L_2a4d:
         .byte $29,$2a,$59,$20,$11,$db
        .byte $a5,$c6,$a2,$06

    L_2a57:
        cmp L_2a6b + $5,x
        beq L_2a69
        dex 
        bne L_2a57
        ldx #$06
    L_2a61:
        cmp L_2a78,x
        beq L_2a69
        dex 
        bne L_2a61
    L_2a69:
        txa 
        rts 



    L_2a6b:
         .byte $59,$59,$59,$59,$59,$60,$2b
        .byte $28,$30,$33,$3c,$01,$59

    L_2a78:
        rts 



        .byte $10,$11,$12,$13,$16,$01,$59,$20,$50,$2a,$48,$c9,$02,$f0,$2f,$ad
        .byte $09,$04,$29,$80,$f0,$28,$ad,$0a,$04,$48,$ea,$18,$69,$02,$8d,$0a
        .byte $04,$20,$00,$2d,$a9,$01,$20,$90,$2e,$aa,$20,$55,$2e,$68,$8d,$0a
        .byte $04,$ad,$0f,$04,$09,$01,$8d,$09,$04,$20,$00,$2e,$ea,$ea

    L_2ab7:
        lda $400 + $09
        and #$70
        sec 
        beq L_2ac2
        jsr L_2530
    L_2ac2:
        pla 
        beq L_2ad3
        bcc L_2ad3
        nop 
        nop 
        asl 
        clc 
        adc #$80
        sta $2a4b
        jsr L_2a4a
    L_2ad3:
        jsr L_1c80
        jsr L_2000
        ldy $400 + $0c
    L_2adc:
        ldx #$30
    L_2ade:
        dex 
        bne L_2ade
        dey 
        bne L_2adc
        jmp L_2a29

        .fill $19, $59
        .byte $ee,$07,$04,$ad,$07,$04,$c9,$04,$e0,$76,$a9,$00,$8d,$06,$04,$20
        .byte $08,$29,$4c,$21,$2a,$59,$59,$59,$59,$59,$59,$59,$59,$59,$59,$59
        .byte $a9,$18,$8d,$7f,$2b

    L_2b25:
        dec $1a
        inc $400 + $06
        jsr L_273b
        lda #$01
    L_2b2f:
        ldy #$00
        pha 
        jsr L_2030
        lda ($21),y
        beq L_2b6a
        ldy #$02
        lda ($21),y
        sec 
        sbc #$01
        sta ($21),y
        bne L_2b49
        tay 
        sta ($21),y
        beq L_2b6a
    L_2b49:
        iny 
        lda ($21),y
        pha 
        jsr $2d80
        pla 
        tax 
        and #$03
        beq L_2b5a
        lda #$03
        bne L_2b5c
    L_2b5a:
        lda #$02
    L_2b5c:
        sta $400 + $00
        lda #$03
        sta $400 + $03
        lda L_317f + $1,x
        jsr L_2f00
    L_2b6a:
        pla 
        tax 
        inx 
        txa 
        cmp #$0e
        bne L_2b2f
        dec L_2b7d + $2
        bne L_2b25
    L_2b77:
        lda #$00
        sta L_11b6 + $a
        rts 



    L_2b7d:
         .byte $00,$00,$00

    L_2b80:
        jsr $0313

        .byte $0f,$12,$05,$20,$20,$20,$20,$20,$20,$20,$20,$20,$20,$20,$20,$20
        .byte $20,$20,$08,$09,$07,$08,$20,$13,$03,$0f,$12,$05
        .fill $4b, $20
        .byte $13,$14,$01,$07,$05,$20,$20,$20,$20,$20,$20,$20,$20,$20,$00,$c0
        .byte $8d,$12,$ff,$a9,$38,$8d,$a9,$0e

    L_2c02:
        pha 
        jsr L_2030
        lda #$00
        tay 
        sta ($21),y
        pla 
        tay 
        dey 
        tya 
        bne L_2c02
        sta L_21fc + $4
        lda #$06
        sta $1a
        lda #$0b
        sta $400 + $0a
        jmp $2a00
    L_2c20:
        lda #$fe
        sta $1d
        sta $1f
        lda #$08
        sta $20
        lda #$0c
        sta $1e
        ldy #$00
    L_2c30:
        lda L_2c4f + $1,y
        beq L_2c3e
        sta ($1d),y
        lda #$70
        sta ($1f),y
        iny 
        bne L_2c30
    L_2c3e:
        lda #$00
        sta $ff11
    L_2c43:
        jsr $db11
        lda $c6
        cmp #$40
        bne L_2c43
        jmp L_1b20

    L_2c4f:
         .byte $a9,$2a,$2a,$2a,$2a,$2a,$2a,$2a,$2a,$2a,$2a,$2a,$2a,$2a
        .fill $1b, $20
        .byte $2a,$20,$07,$01,$0d,$05,$20,$0f,$16,$05,$12,$20,$2a
        .fill $1b, $20
        .byte $2a,$2a,$2a,$2a,$2a,$2a,$2a,$2a,$2a,$2a,$2a,$2a,$2a,$00,$20,$20
        .byte $a9,$0c,$85,$11,$a0,$00

    L_2cb6:
        lda L_2b80,y
        beq L_2cc4
        sta ($10),y
        lda #$32
        sta ($12),y
        iny 
        bne L_2cb6
    L_2cc4:
        ldy #$09
    L_2cc6:
        lda L_2ce2,y
        sta $400 + $30,y
        dey 
        bpl L_2cc6
        ldy #$02
    L_2cd1:
        lda $400 + $33,y
        sta $400 + $00,y
        dey 
        bpl L_2cd1
        lda #$20
        sta $400 + $03
        jmp L_2600

    L_2ce2:
         .byte $00,$00,$00

    L_2ce5:
        inx 

        .byte $80,$00,$01,$00

    L_2cea:
        .byte $00,$20,$20,$20,$20,$20,$20,$13,$14
        .byte $01,$02,$20,$14,$0f,$20,$13,$14,$01,$12,$14,$00,$00

    L_2d00:
        pha 
        lda #$90
        sta $18
        lda #$0d
        sta $19
        jmp $2d40
    L_2d0c:
        beq L_2d1c
    L_2d0e:
        lda $18
        clc 
        adc #$28
        sta $18
        bcc L_2d19
        inc $19
    L_2d19:
        dex 
        bne L_2d0e
    L_2d1c:
        lda $18
        clc 
        adc $1a
        nop 
        sta $18
        bcc L_2d28
        inc $19
    L_2d28:
        pla 
        pha 
        and #$03
        sta $400 + $00
        lda $18
        sta $1b
        lda $19
        clc 
        sbc #$03
        sta $1c
        pla 
        rts 



        .byte $20,$20,$20,$20,$ae,$0a,$04,$10,$c7,$a5,$18

    L_2d47:
        sec 
        sbc #$28
        sta $18
        inx 
        bne L_2d47
        jmp L_2d1c

        .fill $2e, $20
        .byte $a9,$90,$85,$1d,$a9,$0d,$85,$1e,$a0,$01,$b1,$21,$f0,$0f,$aa

    L_2d8f:
        lda $1d
        clc 
        adc #$28
        sta $1d
        bcc L_2d9a
        inc $1e
    L_2d9a:
        dex 
        bne L_2d8f
    L_2d9d:
        iny 
        lda ($21),y
        clc 
        adc $1d
        sta $1d
        bcc L_2da9
        inc $1e
    L_2da9:
        sta $1f
        lda $1e
        clc 
        sbc #$03
        sta $20
        rts 



        .fill $3d, $20
        .byte $69,$01,$48

    L_2df3:
        tya 
        adc #$26
        tay 
        pla 
        dex 
        bne L_2e0b
        rts 



        .byte $20,$20,$20,$20,$20,$00,$2d,$aa,$bd,$80,$31,$a2,$03

    L_2e09:
        ldy #$00
    L_2e0b:
        pha 
        lda ($18),y
        sta $400 + $10,x
        lda ($1b),y
        sta $400 + $19,x
        lda #$45
        sta ($1b),y
        pla 
        sta ($18),y
        iny 
        clc 
        adc #$01
        pha 
        lda ($18),y
        sta $400 + $13,x
        lda ($1b),y
        sta $400 + $1c,x
        lda #$45
        sta ($1b),y
        pla 
        sta ($18),y
        adc #$01
        pha 
        iny 
        lda $400 + $00
        beq L_2df3
        lda ($18),y
        sta $400 + $16,x
        lda ($1b),y
        sta $400 + $1f,x
        lda #$45
        sta ($1b),y
        pla 
        sta ($18),y
        jmp $2df0
    L_2e50:
        jsr L_2e85 + $b
        ldx #$03
    L_2e55:
        ldy #$00
    L_2e57:
        lda $400 + $10,x
        sta ($18),y
        lda $400 + $19,x
        sta ($1b),y
        iny 
        lda $400 + $13,x
        sta ($18),y
        lda $400 + $1c,x
        sta ($1b),y
        iny 
        lda $400 + $00
        beq L_2e7c
        lda $400 + $16,x
        sta ($18),y
        lda $400 + $1f,x
        sta ($1b),y
    L_2e7c:
        tya 
        clc 
        adc #$26
        tay 
        dex 
        bne L_2e57
        rts 



    L_2e85:
         .byte $46,$46,$46,$46,$46,$46,$46,$46,$46,$46,$46,$29,$03
        .byte $8d,$00,$04,$60
        .fill $12, $46
        .fill $28, $47
        .fill $28, $46
        .byte $47,$47,$47,$47,$47,$47,$47,$4a

    L_2f00:
        ldy #$04
        sty $400 + $01
        ldy #$00
        sty $400 + $02
    L_2f0a:
        ldx $400 + $00
    L_2f0d:
        pha 
        ldy $400 + $02
        lda ($1d),y
        pha 
        lda ($1f),y
        ldy $400 + $01
        sta ($21),y
        iny 
        pla 
        sta ($21),y
        iny 
        sty $400 + $01
        ldy $400 + $02
        lda #$49
        sta ($1f),y
        pla 
        sta ($1d),y
        iny 
        sty $400 + $02
        clc 
        adc #$01
        dex 
        bne L_2f0d
        clc 
        pha 
        lda #$28
        sbc $400 + $00
        adc $400 + $02
        sta $400 + $02
        pla 
        dec $400 + $03
        bne L_2f0a
        rts 



        .fill $35, $20
        .byte $a0,$00,$8c,$02,$04,$a0,$04,$8c,$01,$04

    L_2f8a:
        ldx $400 + $00
    L_2f8d:
        ldy $400 + $01
        lda ($21),y
        pha 
        iny 
        lda ($21),y
        iny 
        sty $400 + $01
        ldy $400 + $02
        cmp #$2d
        beq L_2fb1
        cmp #$70
        bcc L_2fa9
        cmp #$d0
        bcc L_2fb1
    L_2fa9:
        sta ($1d),y
        pla 
        sta ($1f),y
        jmp L_2fb2
    L_2fb1:
        pla 
    L_2fb2:
        iny 
        sty $400 + $02
        dex 
        bne L_2f8d
        lda #$28
        clc 
        sbc $400 + $00
        adc $400 + $02
        sta $400 + $02
        dec $400 + $03
        bne L_2f8a
        ldy #$00
        lda ($21),y
        and #$40
        beq L_2fd6
        lda #$00
        sta ($21),y
    L_2fd6:
        rts 



        .fill $28, $20
        .byte $00,$00

    L_3001:
        .byte $34,$00,$34,$00,$34,$00,$34,$00,$34,$c2,$34,$5a
        .byte $35,$6d,$35,$5a,$35,$00,$18,$00,$18,$00,$18,$00,$19,$00,$19,$00
        .byte $19,$0c,$18
        .fill $28, $6d
        .byte $7d,$7d,$7d,$7d,$28,$ff
        .fill $22, $7d
        .byte $71,$71,$71,$71,$71,$71,$71,$71,$79,$79,$79,$79,$79,$79,$79,$60
        .byte $a0,$26,$e0,$27,$a0,$26,$80,$27,$00,$27,$00,$25,$7f,$30,$06,$20
        .byte $79,$79

    L_3092:
        .byte $79,$79,$79,$79,$79,$79
        .fill $28, $59
        .fill $1c, $20
        .byte $06,$0c,$18,$70,$00,$3c,$66,$06,$0c,$18,$00,$18

    L_30e8:
        .byte $30,$30,$30,$18,$0c,$00,$30,$18,$0c,$0f
        .byte $01,$04,$09,$0e,$07,$20,$13,$14

    L_30fa:
        .byte $01,$07,$05,$20,$31,$00,$00,$32,$00,$32,$00,$32,$00,$32,$00,$32
        .byte $f4,$34,$00,$32,$35,$36,$00,$32,$00,$16,$00,$16,$00,$16,$00,$14
        .byte $00,$14,$00,$14,$66,$00,$18,$3e,$60,$3c,$06,$7c,$18,$00,$62,$66
        .byte $0c,$18,$30,$66,$46,$00,$3c,$66,$3c,$38,$67,$66,$3f,$00,$06,$0c
        .byte $18,$00,$00,$00,$00,$00,$0c,$18,$30,$30,$30,$18,$0c,$00,$30,$18
        .byte $0c,$0c,$0c,$18,$30,$00,$00

    L_3151:
        ror $3c

        .byte $ff,$3c,$66,$00,$00,$00,$ed,$18,$7e,$18,$18,$00,$00,$00,$00,$00
        .byte $00,$00,$18,$18,$30,$00,$00,$00,$7e,$00,$00,$00,$00,$00,$00,$00
        .byte $00,$00,$18,$18,$00,$00,$03,$06,$0c,$18,$30,$60

    L_317f:
        .byte $00,$70,$76,$7f
        .byte $88,$91,$97,$a0,$a9,$70,$b2,$38,$18,$18,$bb,$7e,$00,$3c,$b2,$06
        .byte $0c

    L_3194:
        bmi L_3151
        ror $3c00,x
        ror $06

        .byte $1c,$06,$66,$3c,$00,$06,$0e,$1e,$66,$7f,$06,$06,$00,$7e,$60,$7c
        .byte $06,$06,$66,$3c,$00,$3c,$66,$60,$7c,$66,$66,$3c,$00,$7e,$66,$0c
        .byte $18,$18,$18,$18,$00,$3c,$66,$66,$3c,$66,$66,$3c,$00,$3c,$66,$66
        .byte $3e,$06,$66,$3c,$00,$00,$00,$18,$00,$00,$18,$00,$00,$00,$00,$18
        .byte $00,$00,$18,$18

    L_31df:
        .byte $30,$0e
        .byte $18,$30,$60,$30,$18,$0e,$00,$00,$00,$7e,$00,$7e,$00,$00,$00,$70
        .byte $18,$0c,$06,$0c,$18,$70,$00,$3c,$66,$06,$0c,$18,$00

    L_31fe:
        clc 

        .byte $00
        .fill $bb, $7d
        .fill $33, $71
        .fill $33, $79
        .fill $ab, $45

    L_33cc:
        eor $45
        eor $45
        eor $45
        eor $45
        eor $45
        eor $45
        eor $45
        eor $45
        eor $45
        eor $45
        eor $45
        eor $45
        eor $45
        eor $45
        eor $45
        eor $45
        eor $45
        eor $45
        eor $45
        eor $45
        eor $45
        eor $45
        eor $45
        eor $45
        eor $45
        eor $45
        ora ($00),y

        .byte $00,$00,$00,$00,$00,$20,$20,$20,$5c,$5d,$5e,$5e,$5e,$42,$43,$5e
        .byte $5e,$5f,$60,$20,$20,$20,$20,$20,$59,$5a,$5b,$61,$62,$63,$42,$43
        .byte $5a,$5b,$61,$62,$63,$20,$20,$20,$20,$56,$57,$58,$64,$65,$66,$42
        .byte $43,$57,$58,$64,$65,$66,$20,$20,$20,$53,$54,$55,$20,$20,$67,$68
        .byte $42,$43,$55,$20,$20,$67,$68,$69,$20,$20,$50,$51,$52,$20,$20,$6a
        .byte $6b,$42,$43,$52,$20,$20,$6a,$6b,$6c,$20,$42,$43,$40,$41,$40,$41
        .byte $40,$41,$40,$41,$40,$41,$40,$41,$40,$41,$40,$42,$43,$20,$20,$20
        .byte $20,$20,$20,$20,$20,$20,$20,$20,$20,$20,$20,$20,$42,$43,$40,$41
        .byte $40,$41,$40,$41,$40,$41,$40,$41,$40,$41,$40,$41,$40,$42,$43,$46
        .byte $20,$20,$20,$20,$20,$20,$20,$20,$20,$20,$20,$20,$46,$46,$42,$43
        .byte $47,$20,$20,$20,$20,$20,$20,$20,$20,$20,$20,$20,$20,$47,$47,$42
        .byte $43,$46,$20,$20,$20,$20,$20,$20,$20,$20,$20,$20,$20,$20,$46,$46
        .byte $06,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$46,$20,$20,$20
        .byte $20,$20,$47,$47,$20,$20,$20,$20,$46,$46,$46,$20,$20,$20,$47,$47
        .byte $47,$47,$20,$20,$46,$46,$46,$46,$46,$20,$47,$47,$47,$47,$47,$47
        .fill $5d, $79

    L_354f:
        adc $7979,y
        adc $7979,y
    L_3555:
        adc $7979,y
        adc $400 + $279,y

        .fill $12, $0
        .byte $13,$00,$00,$00,$00,$00,$00,$00,$20,$20,$20,$20,$d0,$d0,$d0,$d0
        .byte $d0,$d0,$d0,$d0,$d0,$d0,$d0,$d0,$20,$20,$20,$20,$20,$20,$20,$d0
        .byte $d0,$d0,$d0,$d0,$d0,$d0,$d0,$d0,$d0,$d0,$d0,$20,$20,$20,$20,$20
        .byte $20,$20,$d0,$d0,$d0,$d0,$d0,$d0,$d0,$d0,$d0,$d0,$d0,$d0,$20,$20
        .byte $20,$20,$20,$20,$20,$d0,$d0,$d0,$d0,$d0,$d0,$d0,$d0,$d0,$d0,$d0
        .byte $d0
        .fill $16, $20
        .byte $d0,$d0,$d0,$20,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff
        .byte $20,$d0,$d0,$d0,$d0,$d0,$20,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff
        .byte $ff,$ff,$ff,$20,$d0,$d0,$d0,$d0,$d0,$20,$ff,$ff,$ff,$ff,$ff,$ff
        .byte $ff,$ff,$ff,$ff,$ff,$ff,$20,$d0,$d0,$d0,$d0,$d0,$20,$ff,$ff,$ff
        .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$20,$d0,$d0

    L_3620:
        .fill $15, $ff
        .fill $e8, $45
        .byte $71,$71,$71,$71,$71,$71,$71,$71,$71,$71,$71,$71,$45,$45,$45,$45
        .byte $45,$45,$45,$71,$71,$71,$71,$71,$71,$71,$71,$71,$71,$71,$71,$45
        .byte $45,$45,$45,$45,$45,$45,$71,$71,$71,$71,$71,$71,$71,$71,$71,$71
        .byte $71,$71,$45,$45,$45,$45,$45,$45,$45,$71,$71,$71,$71,$71,$71,$71
        .byte $71,$71,$71,$71,$71,$45,$45,$45
        .fill $13, $71
        .byte $45,$45,$45,$45,$45,$45,$45,$45,$15,$00,$00,$00,$00,$00,$00,$00
        .byte $00,$d1
        .fill $14, $20
        .byte $d3,$d4,$d4,$d4,$d4,$d3,$d3,$d4,$d4,$d4,$d4,$d4,$d4,$d4,$d3,$d3
        .byte $d4,$d4,$d4,$d5,$20,$d2,$20,$20,$d6,$20,$20,$20,$20,$d6,$20,$20
        .byte $20,$20,$d6,$20,$20,$20,$20,$20,$20,$20,$db,$db,$42,$43,$dc,$dc
        .byte $dc,$dc,$dc,$dc,$dc,$dc,$dc,$dc,$dd,$20,$de,$df,$20,$20,$20,$db
        .byte $db,$42,$43,$db,$db,$db,$db,$db,$db,$db,$db,$db,$db,$db,$db,$db
        .byte $db,$db,$20,$20,$20,$20,$20,$20,$20,$20,$20,$20,$20,$20,$20,$20
        .byte $20,$20,$00,$00,$00,$00,$00,$00,$00,$00,$18,$3c,$66,$7e,$66,$66
        .byte $66,$00,$7c,$66,$66,$7c,$66,$66,$7c,$00,$3c,$66,$60,$60

    L_381c:
        rts 



        .byte $66,$3c,$00,$78,$6c,$66,$66,$66,$6c,$78,$00,$7e,$60,$60,$78,$60
        .byte $60,$7e,$00,$7e,$60,$60,$78,$60,$60,$60,$00,$3c,$66,$60,$6e,$66
        .byte $66,$3c,$00,$66,$66,$66,$7e,$66,$66,$66,$00,$32,$18,$18,$18,$18
        .byte $18,$3c,$00,$1e,$0c,$0c,$0c,$0c,$6c,$38,$00,$66,$6c,$78,$70,$78
        .byte $6c,$66,$00,$60,$60,$60,$60,$60,$60,$7e,$00,$63,$77,$7f,$6b,$63
        .byte $63,$63,$00,$66,$76,$7e,$7e,$6e,$66,$66,$00,$3c,$66,$66,$66,$66
        .byte $66,$3c,$00,$7c,$66,$66,$7c,$60,$60,$60,$00,$3c,$66,$66,$66,$66
        .byte $3c,$0e,$00,$7c,$66,$66,$7c,$78,$6c,$66,$00,$3c,$66,$60,$3c,$06
        .byte $66,$3c,$00,$7e,$18,$18,$18,$18,$18,$18,$00,$66,$66,$66,$66,$66
        .byte $66,$3c,$00,$66,$66,$66,$66,$66,$3c,$18,$00,$63,$63,$63,$6b,$7f
        .byte $77,$63,$00,$66,$66,$3c,$18,$3c,$66,$66,$00,$66,$66,$66,$3c,$18
        .byte $18,$18,$00,$7e,$06,$0c,$18,$30,$60,$7e,$00,$3c,$30,$30,$30,$30
        .byte $30,$3c,$00,$0c,$12,$30,$7c,$30,$62,$fc,$00,$3c,$0c,$0c,$0c,$0c
        .byte $0d,$3c,$00,$00,$18,$3c,$7e,$18,$18,$18,$18,$00,$10,$30,$7f,$7f
        .byte $30,$10,$00,$00,$00,$00,$00,$00,$00,$00,$00,$18,$18,$18

    L_390b:
        clc 

        .byte $00,$00,$18,$00,$66,$66,$66,$00,$00,$00,$00,$00,$66,$66,$ff

    L_391b:
        ror $ff
        ror $66

        .byte $00,$18,$3e,$60,$3c,$06,$7c,$18,$00,$62,$66,$0c

    L_392b:
        clc 
        bmi L_3994
        lsr $00

        .byte $3c,$66,$3c,$38,$67,$66,$3f,$00,$06,$0c,$18,$00,$00,$00,$00,$00
        .byte $0c,$18

    L_3942:
        .byte $30,$30,$30,$18,$0c,$00,$30,$18,$0c,$0c,$0c
        .byte $18,$30,$00,$00,$66,$3c,$ff,$3c,$66,$00,$00,$00,$18,$18,$7e,$18
        .byte $18,$00,$00,$00,$00,$00,$00,$00,$18,$18,$30,$00,$00,$00,$7e,$00
        .byte $00,$00,$00,$00,$00,$00,$00,$00,$18,$18,$00,$00,$03,$06,$0c,$18
        .byte $30,$60,$00,$3c,$66,$6e,$76,$66,$66,$3c,$00,$18,$18,$38,$18,$18
        .byte $18,$7e,$00,$3c,$66,$06,$0c

    L_3994:
        bmi L_39f6
        ror $3c00,x
        ror $06

        .byte $1c,$06,$66,$3c,$00,$06,$0e,$1e,$66,$7f,$06,$06,$00,$7e,$60,$7c
        .byte $06,$06,$66,$3c,$00,$3c,$66,$60,$7c,$66,$66,$3c,$00,$7e,$66,$0c
        .byte $18,$18,$18,$18,$00,$3c,$66,$66,$3c,$66,$66,$3c,$00,$3c,$66,$66
        .byte $3e,$06,$66,$3c,$00,$00,$00,$18,$00,$00,$18,$00,$00,$00,$00,$18
        .byte $00,$00,$18,$18

    L_39df:
        .byte $30,$0e
        .byte $18,$30,$60,$30,$18,$0e,$00,$00,$00,$7e,$00,$7e,$00,$00,$00,$70
        .byte $18,$0c,$06,$0c,$18

    L_39f6:
        .byte $70,$00,$3c
        .byte $66,$06,$0c,$18,$00

    L_39fe:
        clc 

        .byte $00,$00,$ff,$ff,$e7,$ff,$ff,$ff,$00,$00,$ff,$ff,$ff,$e7,$ff,$ff
        .byte $00,$5f

    L_3a11:
        rti 

        .byte $5f,$5f,$5f,$5f,$5f,$40,$fa,$02,$fa,$fa,$fa,$fa,$fa,$02,$aa,$55
        .byte $aa,$55,$aa,$55,$aa,$55,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$fe,$fe
        .byte $00,$df,$df,$df,$df,$df,$df,$df,$00,$fe,$fe,$fe,$fe,$fe,$07,$03
        .byte $00,$c0,$e0,$f8,$80,$00,$c1,$81,$00,$07,$0f,$3f,$03,$01,$d0,$d7
        .byte $00,$e0,$c0,$81,$03,$07,$1f,$df,$00,$0f,$07,$03,$81,$c1,$c0,$c0
        .byte $c0,$c0,$c0,$c0,$ff,$ff,$c0,$e0,$70,$38,$1c,$0e,$07,$03,$03,$07
        .byte $0e,$1c,$38,$70,$e0,$c0,$ff,$ff,$c0,$c0,$c0,$c0,$c0,$c0,$07,$0f
        .byte $0f,$1f,$3f,$3f,$7f,$ff,$ff,$ff,$ff,$fe,$fc,$fc,$f8,$f0,$80,$00
        .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00

    L_3a9d:
        ora ($03,x)

        .byte $03,$3f,$3f,$7f,$ff,$ff,$ff,$ff,$ff,$fc,$fc,$f8,$f0,$f0,$e0,$c0
        .byte $c0,$01,$03,$03,$07,$0f,$0f,$1f,$1f,$ff,$ff,$ff,$ff,$ff,$ff,$ff
        .byte $fe,$f0,$e0,$c0,$c0,$80,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
        .byte $01,$0f,$1f,$1f,$3f,$7f,$7f,$ff,$ff,$ff,$ff,$ff,$fe,$fc,$fc,$f8
        .byte $f0,$00,$00,$01,$01,$03,$03,$07,$07,$7f,$bf,$df,$ef,$f7,$fb,$fd
        .byte $fe,$00,$ff,$00,$ff,$ef,$ff,$ef,$ff

    L_3af8:
        inc $fbfd,x

        .byte $f7,$ef,$df,$bf,$7f,$00,$80,$c0,$c0,$e0,$e0,$f0,$f0,$ff,$ff,$7f
        .byte $3f,$3f,$1f,$1f,$0f,$f8,$f8,$fc,$fe,$fe,$ff,$ff,$ff,$00,$00,$00
        .byte $00,$00,$00,$00,$80,$0f,$07,$03,$01,$01,$00,$00,$00,$ff,$ff,$ff
        .byte $ff,$ff,$ff,$7f,$7f,$80,$c0,$e0,$e0,$f0,$f0,$f8,$f8,$3f,$1f,$1f
        .byte $0f,$07,$07,$03,$01,$fc,$fe,$fe,$ff,$ff,$ff,$ff,$ff,$00,$00,$00
        .byte $00,$00,$80,$c0,$c0,$01,$00,$00,$00,$00,$00,$00,$00,$ff,$ff,$7f
        .byte $7f,$3f,$1f,$1f,$0f,$e0,$e0,$f0,$f8,$f8,$fc,$fe,$ff,$18,$18,$18
        .byte $1f,$1f,$00,$00,$00,$00,$00,$00,$f8,$f8,$18,$18,$18,$00,$00,$00
        .byte $00,$00,$00,$ff,$ff,$07,$0e,$1f,$30,$3c,$23,$42,$6c,$80,$80,$80
        .byte $80,$80,$00,$86,$49,$98,$86,$81,$81,$c3,$bd,$81,$7f,$35,$02,$84
        .byte $48,$30,$00,$00,$00,$30,$19,$09,$f9,$c9,$f9,$87,$07,$80,$80,$80
        .byte $80,$00,$00,$00,$80,$01,$03,$07,$0c,$0f,$08,$10,$1b,$e0,$a0,$e0
        .byte $20,$20,$c0,$a1,$12,$00,$00,$00,$00,$00,$00,$80,$40,$26,$21,$20
        .byte $20,$36,$2f,$20,$1f,$0d,$80,$61,$52,$cc,$40,$40,$c0,$40,$80,$00
        .byte $00,$00,$00,$00,$00,$10,$10,$23,$26,$4c,$f0,$60,$78,$30,$08,$c4
        .byte $22,$15,$0f,$03,$00,$00,$00,$00,$00,$00,$c0,$80,$00,$00,$00,$01
        .byte $03,$03,$02,$04,$06,$78,$e8,$f8,$08,$c8,$30,$28,$c4,$00,$00,$00
        .byte $00,$00,$00,$60,$90,$09,$08,$08,$08,$0c,$0b,$08,$07,$83,$60,$18
        .byte $14,$33,$d0,$10,$f0,$50,$20,$40,$80,$00,$00,$00,$00,$04,$04,$09
        .byte $12,$24,$78,$30,$1c,$10,$08,$c4,$32,$1a,$0e,$06,$07,$00,$00,$00
        .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$01,$01,$1e,$3a,$7e
        .byte $c2,$f2,$8c,$0a,$b1,$00,$00,$00,$00,$00,$00,$18,$24,$02,$02,$02
        .byte $02,$03,$02,$02,$01,$60,$18,$06,$05,$0c,$f4,$04,$fc,$04,$08,$10
        .byte $20,$c0,$00,$00,$00,$01,$01,$02,$1c,$14,$12,$00,$00,$04,$02,$73
        .byte $89,$09,$0d,$06,$07,$00,$00,$00,$00,$00,$00,$00,$00,$01,$01,$01
        .byte $01

    L_3c8c:
        ora ($00,x)
        adc ($92,x)
        cpx #$70
        sed 

        .byte $0c,$3c,$c4,$42,$36,$ac,$40,$21,$12,$0c,$00,$00,$00,$19,$61,$81
        .byte $81,$c3,$0d,$81,$fe,$01,$01,$01,$01,$00,$00,$00,$01,$0c,$98,$90
        .byte $9f,$93,$9f,$e1,$e0,$00,$00,$00,$00,$00,$00,$01,$02,$03,$05,$03
        .byte $04,$04,$63,$85,$48,$80,$c0,$e0,$30,$f0,$10,$08,$d8,$02,$01,$00
        .byte $00,$00,$00,$00,$00,$b0,$01,$86,$4a,$33,$02,$02,$03,$64,$84,$04
        .byte $04,$6c,$f4,$04,$8f,$01,$01,$01,$01,$00,$00,$00,$00,$0c,$10,$23
        .byte $44,$a8,$f0,$c0,$00,$08,$08,$c4,$64,$32,$0f

    L_3cfe:
        asl $1e

        .byte $00,$00,$00,$00,$00,$00,$06,$09,$1e,$17,$1f,$10,$13,$0c,$14,$23
        .byte $00,$00,$80,$c0,$c0,$40

    L_3d16:
        jsr $0a60

        .byte $04,$02,$01,$00,$00,$00,$00

    L_3d20:
        cmp ($06,x)
        clc 
        plp 
        cpy $080b

        .byte $0f,$90,$10,$10,$10,$30,$d0,$10,$e0,$00,$00,$00,$00,$00,$00,$00
        .byte $00,$08,$10,$23,$4c,$58,$70,$60,$e0,$20,$20,$90,$48,$24,$1e,$0c
        .byte $38,$00,$00,$00,$00,$00,$00,$18,$24,$78,$5c,$7e,$43,$4f,$31,$50
        .byte $00,$00,$00,$00,$00,$00,$00,$80,$80,$20,$10,$08,$04,$03,$00,$00
        .byte $00,$06,$18,$60,$a0,$30,$2f,$20,$3f,$40,$40,$40,$40,$c0,$40,$40
        .byte $80,$00,$00,$00,$00,$00,$00,$00,$00,$20,$40,$ce,$91,$90,$b0,$60
        .byte $e0,$80,$80,$40,$38,$28,$48,$00,$00,$01,$03,$07,$0c,$0f,$08,$10
        .byte $1b,$e0,$a0,$e0,$20,$20,$c0,$a0,$18,$00,$00,$00,$00,$00,$00,$00
        .byte $00,$26,$21,$20,$20,$36,$2f,$20,$1f,$07,$80,$60

    L_3db3:
        .byte $58,$c7
        .byte $40,$40,$c0,$60,$90,$90,$90,$60,$00,$00,$00,$10,$10,$23,$26,$4c
        .byte $f0,$60,$78,$30,$08,$c4,$22,$15,$0f,$03,$00,$00,$00,$00,$00,$00
        .byte $c0,$80,$00,$00,$00,$00,$00,$00,$00,$00,$00,$03,$05,$03,$04,$04
        .byte $03,$05,$08,$80,$c0,$e0,$30,$f0,$10,$08,$d8,$06,$09,$09,$09,$06
        .byte $00,$00,$00,$f0,$01,$06,$0a,$f3,$02,$02,$03,$64,$84,$04,$04,$6c
        .byte $f4,$04,$8f,$01,$01,$01,$01,$00,$00,$00,$00,$0c,$10,$23,$44,$a8
        .byte $f0,$c0,$00,$08,$08,$c4,$64,$32,$0f,$06,$1e,$00,$00,$00,$00,$00
        .byte $00,$06,$09,$00,$00,$00,$00,$00,$00,$00,$01,$00,$00,$20,$10,$08

    L_3e35:
        jmp $f6ec

        .byte $03,$07,$1b,$3d,$7e,$ff,$77,$23,$00,$00,$00,$00,$ff,$f0,$ce,$c1
        .byte $00,$00,$0f,$31,$c1,$41,$41,$ff,$0e,$11,$fe,$42,$42,$7f,$05,$ff
        .byte $08,$08,$c4,$64,$32,$0f,$06,$1e,$f0,$88,$7f,$44,$44,$fe,$a0,$ff
        .byte $00,$00,$00,$f0,$0c,$03,$02,$ff,$00,$00,$00,$00,$ff,$0f,$33,$c3
        .byte $03,$07,$1b,$3d,$7e,$ff,$77,$23,$08

    L_3e81:
        rol $7f89,x
        lsr 
        rol $7f1c,x

        .byte $00,$00,$c0,$a0,$90,$88,$84,$82,$82,$84,$88,$90,$a0,$c0,$00,$00
        .byte $ff,$40,$80,$80,$80,$ff,$40,$ff,$ff,$00,$00,$00,$00,$ff,$00,$ff
        .byte $80,$40,$20,$10,$10,$e0,$40,$80,$11,$11,$22,$22,$44,$44,$88,$88
        .byte $03,$0f,$1f,$3f,$7e,$78,$f8,$f0,$c0,$f0,$f8,$fc,$7e,$1e,$1f,$0f
        .byte $f0,$f8,$78,$7e,$3f,$1f,$0f,$03,$0f,$1f,$1e,$7e,$fc,$f8,$f0,$c0
        .byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$00,$ff,$00,$ff,$00,$00,$00,$00
        .byte $0e,$f4,$08,$f0,$00,$00,$00,$00,$ff,$81,$81,$81,$81,$81,$81,$ff
        .byte $01,$03,$07,$0f,$1f,$3f,$7f,$ff,$01,$03,$07,$0f,$1f,$3f,$7f,$ff
        .byte $80,$c0,$e0,$f0,$f8,$fc,$fe,$ff,$81,$81,$81,$81,$81,$81,$81,$81
        .byte $81,$81,$81,$81,$81,$81,$81,$ff,$3c,$3c,$3c,$3c,$3c,$3c,$3c,$3c
        .byte $00,$18,$3c,$3c,$3c,$3c,$3c,$3c,$cc,$cc,$33,$33,$cc,$cc,$33,$33
        .byte $03,$03,$03,$03,$03,$03,$03,$03,$00,$00,$00,$00,$00,$cc,$33,$33
        .byte $cc,$99,$33,$66,$cc,$99,$33,$66,$03,$03,$03,$03,$03,$03,$03,$03
        .byte $18,$18,$18,$1f,$1f,$18,$18,$18,$ff,$00,$00,$00,$0f,$0f,$0f,$0f
        .byte $18,$18,$18,$1f,$1f,$00,$00,$00,$00,$00,$00,$f8,$f8,$18,$18,$18
        .byte $00,$00,$00,$00,$00,$00,$ff,$ff,$00,$00,$00,$1f,$1f,$18,$18,$18
        .byte $18,$18,$18,$ff,$ff,$00,$00,$00,$00,$00,$00,$ff,$ff,$18,$18,$18
        .byte $18,$18,$18,$f8,$f8,$18,$18,$18,$c0,$c0,$c0,$c0,$c0,$c0,$c0,$c0
        .byte $e0,$e0,$e0,$e0,$e0,$e0,$e0,$e0,$07,$07,$07,$07,$07,$07,$07,$07
        .byte $ff,$ff,$00,$00,$00,$00,$00,$00,$ff,$ff,$ff,$00,$00,$00,$00,$00
        .byte $00,$00,$00,$00,$00,$ff,$ff,$ff

    L_3fd0:
        ora ($03,x)
        asl $6c
        sei 

        .byte $70,$60,$00,$00,$00,$00,$98,$f0,$f0,$f0,$f0,$0f,$0f,$0f,$0f,$00
        .byte $00,$00,$00,$18,$18,$18,$f8,$f8,$00,$00,$31,$32,$32,$37,$37,$05
        .byte $ff,$8d,$3e,$ff,$4c,$a4,$f2,$f6,$ff
