.namespace SPRITE {

    .label BL = 30


	* = * "Sprite Lookup Data"

// LSB Table (Low byte of addresses)
TopLeftCharsLSB:
    .byte $00, $30, $60, $98, $00, $30, $60, $98, $00, $98, $00, $00, $38, $18, $18, $00, $38, $18, $18
    .byte $68, $C8, $98, $F0, $68, $C8, $98, $F0, $68, $F0, $68

TopRightCharsLSB:
    .byte $08, $38, $68, $90, $08, $68, $38, $90, $08, $90, $08, $08, $30, $18, $18, $08, $30, $18, $18
    .byte $60, $C0, $90, $F8, $60, $C0, $90, $F8, $60, $F0, $60

MiddleLeftCharsLSB:
    .byte $10, $40, $70, $A0, $B8, $C8, $D8, $98, $10, $A0, $10, $10, $48, $18, $18, $B8, $D0, $18, $18
    .byte $78, $D8, $A8, $00, $20, $40, $30, $48, $B0, $B0, $B0

MiddleRightCharsLSB:
    .byte $18, $48, $78, $A0, $C0, $D0, $E0, $E8, $F8, $F8, $F8, $18, $40, $18, $18, $C0, $88, $18, $18
    .byte $70, $D0, $A0, $B0, $18, $38, $28, $A8, $70, $F8, $70

BottomLeftCharsLSB:
    .byte $20, $50, $80, $A8, $20, $50, $80, $A8, $20, $A8, $20, $20, $58, $18, $18, $20, $58, $18, $18
    .byte $88, $E8, $B8, $10, $88, $E8, $B8, $10, $88, $48, $88

BottomRightCharsLSB:
    .byte $28, $58, $88, $B0, $28, $58, $88, $B0, $28, $B0, $28, $28, $50, $18, $18, $28, $50, $18, $18
    .byte $80, $E0, $B0, $08, $80, $E0, $B0, $08, $80, $00, $80

// MSB Table (High byte of addresses)
TopLeftCharsMSB:
    .byte $0A, $0A, $0A, $0A, $0A, $0A, $0A, $0A, $0A, $0A, $0A, $0B, $0B, $0D, $0D, $0B, $0B, $0D, $0D
    .byte $0B, $0B, $0B, $0B, $0B, $0B, $0B, $0B, $0B, $0A, $0B

TopRightCharsMSB:
    .byte $0A, $0A, $0A, $0A, $0A, $0A, $0A, $0A, $0A, $0A, $0A, $0B, $0B, $0D, $0D, $0B, $0B, $0D, $0D
    .byte $0B, $0B, $0B, $0B, $0B, $0B, $0B, $0B, $0B, $0B, $0B

MiddleLeftCharsMSB:
    .byte $0A, $0A, $0A, $0C, $0A, $0A, $0A, $0C, $0A, $0A, $0A, $0B, $0B, $0D, $0D, $0B, $0B, $0D, $0D
    .byte $0B, $0B, $0B, $0C, $0C, $0C, $0C, $0C, $0C, $0C, $0C

MiddleRightCharsMSB:
    .byte $0A, $0A, $0A, $0A, $0A, $0A, $0A, $0A, $0A, $0A, $0A, $0B, $0B, $0D, $0D, $0B, $0B, $0D, $0D
    .byte $0B, $0B, $0B, $0C, $0C, $0C, $0C, $0C, $0B, $0B, $0B

BottomLeftCharsMSB:
    .byte $0A, $0A, $0A, $0A, $0A, $0A, $0A, $0A, $0A, $0A, $0A, $0B, $0B, $0D, $0D, $0B, $0B, $0D, $0D
    .byte $0B, $0B, $0B, $0C, $0B, $0B, $0B, $0C, $0B, $0C, $0B

BottomRightCharsMSB:
    .byte $0A, $0A, $0A, $0A, $0A, $0A, $0A, $0A, $0A, $0A, $0A, $0B, $0B, $0D, $0D, $0B, $0B, $0D, $0D
    .byte $0B, $0B, $0B, $0C, $0B, $0B, $0B, $0C, $0B, $0C, $0B



}
