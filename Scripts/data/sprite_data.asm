.namespace SPRITE {

    .label BL = 30


	* = * "Sprite Lookup Data"
    
TopLeftCharsLSB: .byte $00, $18, $48, $C8, $00, $18, $48, $C8, $00, $98, $00, $D8, $10, $18, $18, $D8, $10, $18, $18, $C8, $78, $A8, $D0, $C8, $78, $A8, $D0, $68, $C8, $68
TopRightCharsLSB: .byte $C8, $20, $50, $78, $C8, $20, $50, $78, $08, $90, $08, $E0, $08, $18, $18, $E0, $08, $18, $18, $58, $70, $A0, $C8, $58, $70, $A0, $C8, $60, $F0, $60
MiddleLeftCharsLSB: .byte $08, $28, $58, $C8, $B0, $98, $98, $C0, $10, $A0, $10, $E8, $20, $18, $18, $90, $A8, $18, $18, $C8, $88, $B8, $D8, $00, $F8, $10, $D8, $B0, $B0, $B0
MiddleRightCharsLSB: .byte $C8, $30, $60, $80, $A8, $A0, $A0, $B8, $F8, $F8, $F8, $F0, $18, $18, $18, $98, $A0, $18, $18, $60, $80, $B0, $C8, $08, $F0, $18, $C8, $70, $F8, $70
BottomLeftCharsLSB: .byte $10, $38, $68, $88, $10, $38, $68, $88, $20, $A8, $20, $F8, $30, $18, $18, $F8, $30, $18, $18, $C8, $98, $C8, $E8, $C8, $98, $C8, $E8, $88, $08, $88
BottomRightCharsLSB: .byte $C8, $40, $70, $90, $C8, $40, $70, $90, $28, $B0, $28, $00, $28, $18, $18, $00, $28, $18, $18, $68, $90, $C0, $E0, $68, $90, $C0, $E0, $80, $00, $80
TopLeftCharsMSB: .byte $0A, $0A, $0A, $0A, $0A, $0A, $0A, $0A, $0A, $0A, $0A, $0A, $0B, $0D, $0D, $0A, $0B, $0D, $0D, $0A, $0B, $0B, $0B, $0A, $0B, $0B, $0B, $0B, $0A, $0B
TopRightCharsMSB: .byte $0A, $0A, $0A, $0A, $0A, $0A, $0A, $0A, $0A, $0A, $0A, $0A, $0B, $0D, $0D, $0A, $0B, $0D, $0D, $0B, $0B, $0B, $0A, $0B, $0B, $0B, $0A, $0B, $0B, $0B
MiddleLeftCharsMSB: .byte $0A, $0A, $0A, $0A, $0A, $0A, $0A, $0A, $0A, $0A, $0A, $0A, $0B, $0D, $0D, $0C, $0C, $0D, $0D, $0A, $0B, $0B, $0B, $0C, $0B, $0C, $0B, $0C, $0C, $0C
MiddleRightCharsMSB: .byte $0A, $0A, $0A, $0A, $0A, $0A, $0A, $0A, $0A, $0A, $0A, $0A, $0B, $0D, $0D, $0C, $0C, $0D, $0D, $0B, $0B, $0B, $0A, $0C, $0B, $0C, $0A, $0B, $0B, $0B
BottomLeftCharsMSB: .byte $0A, $0A, $0A, $0A, $0A, $0A, $0A, $0A, $0A, $0A, $0A, $0A, $0B, $0D, $0D, $0A, $0B, $0D, $0D, $0A, $0B, $0B, $0B, $0A, $0B, $0B, $0B, $0B, $0C, $0B
BottomRightCharsMSB: .byte $0A, $0A, $0A, $0A, $0A, $0A, $0A, $0A, $0A, $0A, $0A, $0B, $0B, $0D, $0D, $0B, $0B, $0D, $0D, $0B, $0B, $0B, $0B, $0B, $0B, $0B, $0B, $0B, $0C, $0B


// // LSB Table (Low byte of addresses)
// TopLeftCharsLSB:
//     .byte $00, $18, $48, $F0, $00, $60, $30, $98, $00, $98, $00, $00, $38, $18, $18, $00, $38, $18, $18
//     .byte $68, $C8, $98, $F0, $68, $C8, $98, $F0, $68, $F0, $68

// TopRightCharsLSB:
//     .byte $F0, $20, $50, $80, $08, $68, $38, $90, $08, $90, $08, $08, $30, $18, $18, $08, $30, $18, $18
//     .byte $60, $C0, $90, $F8, $60, $C0, $90, $F8, $60, $F0, $60

// MiddleLeftCharsLSB:
//     .byte $08, $28, $58, $F0, $B8, $D8, $C8, $98, $10, $A0, $10, $10, $48, $18, $18, $B8, $D0, $18, $18
//     .byte $78, $D8, $A8, $00, $20, $40, $30, $48, $B0, $B0, $B0

// MiddleRightCharsLSB:
//     .byte $F0, $30, $60, $90, $C0, $E0, $D0, $E8, $F8, $F8, $F8, $18, $40, $18, $18, $C0, $88, $18, $18
//     .byte $70, $D0, $A0, $B0, $18, $38, $28, $A8, $70, $F8, $70

// BottomLeftCharsLSB:
//     .byte $10, $38, $68, $98, $20, $80, $50, $A8, $20, $A8, $20, $20, $58, $18, $18, $20, $58, $18, $18
//     .byte $88, $E8, $B8, $10, $88, $E8, $B8, $10, $88, $48, $88

// BottomRightCharsLSB:
//     .byte $F0, $40, $70, $A0, $28, $88, $58, $B0, $28, $B0, $28, $28, $50, $18, $18, $28, $50, $18, $18
//     .byte $80, $E0, $B0, $08, $80, $E0, $B0, $08, $80, $00, $80

// // MSB Table (High byte of addresses)
// TopLeftCharsMSB:
//     .byte $0A, $0A, $0A, $0A, $0A, $0A, $0A, $0A, $0A, $0A, $0A, $0B, $0B, $0D, $0D, $0B, $0B, $0D, $0D
//     .byte $0B, $0B, $0B, $0B, $0B, $0B, $0B, $0B, $0B, $0A, $0B

// TopRightCharsMSB:
//     .byte $0A, $0A, $0A, $0A, $0A, $0A, $0A, $0A, $0A, $0A, $0A, $0B, $0B, $0D, $0D, $0B, $0B, $0D, $0D
//     .byte $0B, $0B, $0B, $0B, $0B, $0B, $0B, $0B, $0B, $0B, $0B

// MiddleLeftCharsMSB:
//     .byte $0A, $0A, $0A, $0C, $0A, $0A, $0A, $0C, $0A, $0A, $0A, $0B, $0B, $0D, $0D, $0B, $0B, $0D, $0D
//     .byte $0B, $0B, $0B, $0C, $0C, $0C, $0C, $0C, $0C, $0C, $0C

// MiddleRightCharsMSB:
//     .byte $0A, $0A, $0A, $0A, $0A, $0A, $0A, $0A, $0A, $0A, $0A, $0B, $0B, $0D, $0D, $0B, $0B, $0D, $0D
//     .byte $0B, $0B, $0B, $0C, $0C, $0C, $0C, $0C, $0B, $0B, $0B

// BottomLeftCharsMSB:
//     .byte $0A, $0A, $0A, $0A, $0A, $0A, $0A, $0A, $0A, $0A, $0A, $0B, $0B, $0D, $0D, $0B, $0B, $0D, $0D
//     .byte $0B, $0B, $0B, $0C, $0B, $0B, $0B, $0C, $0B, $0C, $0B

// BottomRightCharsMSB:
//     .byte $0A, $0A, $0A, $0A, $0A, $0A, $0A, $0A, $0A, $0A, $0A, $0B, $0B, $0D, $0D, $0B, $0B, $0D, $0D
//     .byte $0B, $0B, $0B, $0C, $0B, $0B, $0B, $0C, $0B, $0C, $0B



}
