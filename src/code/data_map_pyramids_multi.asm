
; Generated by CharPad 2. Assemble with 64TASS or similar.


; General constants:-

TRUE = 1
FALSE = 0
COLRMETH_GLOBAL = 0
COLRMETH_PERTILE = 1
COLRMETH_PERCHAR = 2


; Project constants:-

COLOURING_METHOD = COLRMETH_PERCHAR
CHAR_MULTICOLOUR_MODE = TRUE
COLR_SCREEN = 7
COLR_CHAR_DEF = 0
COLR_CHAR_MC1 = 2
COLR_CHAR_MC2 = 10
CHAR_COUNT = 256
TILE_COUNT = 47
TILE_WID = 4
TILE_HEI = 4
MAP_WID = 10
MAP_HEI = 5
MAP_WID_CHRS = 40
MAP_HEI_CHRS = 20
MAP_WID_PXLS = 320
MAP_HEI_PXLS = 160


; Data block size constants:-

SZ_CHARSET_DATA        = 2048
SZ_CHARSET_ATTRIB_DATA = 256
SZ_TILESET_DATA        = 752
SZ_MAP_DATA            = 50

;ADDR_TILESET_DATA        = $2000

MAP_LEN = 4
SCREEN_PTR !byte 0
SCREEN_NR !byte 0
;ADDR_MAP_DATA_TABLE 
;!word MAP_SCR0,MAP_SCR1,MAP_SCR2,MAP_SCR3

ADDR_MAP_DATA_TABLE_LO
!byte >MAP_SCR0,>MAP_SCR1,>MAP_SCR2,>MAP_SCR3
ADDR_MAP_DATA_TABLE_HI
!byte <MAP_SCR0,<MAP_SCR1,<MAP_SCR2,<MAP_SCR3

;   00	 ,  01  ,  02
; 00 01, 02 03, 04 05



; Data block address constants (dummy values):-

;ADDR_CHARSET_DATA        = $1000   ; nb. label = 'charset_data'        (block size = $800).
;ADDR_CHARSET_ATTRIB_DATA = $2000   ; nb. label = 'charset_attrib_data' (block size = $100).
ADDR_TILESET_DATA        = $2000   ; nb. label = 'tileset_data'        (block size = $2f0).
;ADDR_MAP_DATA            = $5000   ; nb. label = 'map_data'            (block size = $32).



; CHAR SET ATTRIBUTE DATA : 256 attributes : total size is 256 ($100) bytes.
; nb. Upper nybbles = Material, Lower nybbles = Colour.

ADDR_CHARSET_ATTRIB_DATA

!byte $05,$fa,$fa,$fa,$0a,$fa,$fa,$02,$04,$05,$05,$05,$0a,$0a,$0a,$0a
!byte $05,$05,$05,$0a,$0c,$0c,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a
!byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
!byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
!byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
!byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
!byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
!byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
!byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
!byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
!byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
!byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
!byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
!byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
!byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
!byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00


; CHAR SET DATA : 256 (8 byte) chars : total size is 2048 ($800) bytes.

ADDR_CHARSET_DATA

!byte $88,$00,$22,$00,$08,$01,$20,$00,$96,$69,$b6,$a9,$9a,$6a,$a7,$a9
!byte $ba,$fe,$b6,$a9,$9b,$7f,$a7,$a9,$fd,$f9,$a9,$aa,$a9,$65,$55,$55
!byte $a9,$a6,$7a,$9a,$a9,$a6,$6a,$aa,$16,$69,$b6,$a9,$9a,$6a,$a7,$29
!byte $94,$69,$9e,$6a,$a6,$a9,$da,$68,$34,$2c,$1c,$34,$1c,$28,$1c,$34
!byte $b7,$ff,$ee,$ff,$bb,$ff,$ee,$ff,$00,$54,$aa,$55,$aa,$7d,$eb,$d5
!byte $aa,$55,$aa,$55,$aa,$7d,$eb,$d5,$aa,$55,$aa,$55,$aa,$14,$00,$80
!byte $02,$00,$0a,$00,$2a,$00,$aa,$00,$aa,$00,$aa,$00,$aa,$00,$aa,$00
!byte $80,$80,$a0,$a0,$a8,$a8,$aa,$aa,$aa,$aa,$aa,$aa,$aa,$aa,$aa,$aa
!byte $00,$00,$1c,$76,$5e,$5f,$f7,$5f,$f7,$5f,$7f,$f7,$5f,$7f,$f7,$5f
!byte $ff,$57,$5f,$ff,$56,$5f,$7e,$1e,$aa,$aa,$aa,$aa,$aa,$aa,$aa,$00
!byte $2a,$aa,$2a,$aa,$2a,$aa,$2a,$aa,$aa,$a9,$aa,$a9,$aa,$a9,$aa,$a9
!byte $aa,$aa,$aa,$aa,$aa,$a9,$a8,$a4,$aa,$aa,$aa,$aa,$4a,$00,$00,$00
!byte $aa,$aa,$aa,$aa,$aa,$02,$02,$00,$a8,$a4,$a0,$90,$a8,$a4,$a8,$a4
!byte $aa,$aa,$aa,$aa,$aa,$2a,$2a,$2a,$a9,$aa,$a9,$a8,$a4,$a8,$a0,$90
!byte $0a,$2a,$2a,$2a,$0a,$0a,$2a,$aa,$a0,$a4,$a8,$a9,$aa,$aa,$aa,$aa
!byte $00,$00,$2a,$aa,$aa,$aa,$aa,$aa,$00,$2a,$aa,$aa,$aa,$aa,$aa,$aa
!byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$18,$18,$18,$18,$00,$18,$00
!byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
!byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
!byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
!byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
!byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
!byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
!byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
!byte $00,$18,$08,$08,$08,$08,$08,$00,$00,$18,$24,$08,$10,$20,$3c,$00
!byte $00,$38,$04,$18,$04,$04,$38,$00,$00,$0c,$14,$24,$3e,$04,$04,$00
!byte $00,$3c,$20,$38,$04,$24,$18,$00,$00,$18,$20,$38,$24,$24,$18,$00
!byte $00,$3c,$04,$08,$08,$10,$10,$00,$00,$18,$24,$18,$24,$24,$18,$00
!byte $00,$18,$24,$24,$1c,$04,$18,$00,$00,$18,$24,$2c,$34,$24,$18,$00
!byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
!byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
!byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
!byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$18,$24,$24,$3c,$42,$42,$00
!byte $00,$38,$24,$38,$24,$24,$38,$00,$00,$18,$24,$20,$20,$24,$18,$00
!byte $00,$38,$24,$24,$24,$24,$38,$00,$00,$3c,$20,$20,$38,$20,$3c,$00
!byte $00,$3c,$20,$20,$38,$20,$20,$00,$00,$18,$24,$20,$2c,$24,$18,$00
!byte $00,$24,$24,$24,$3c,$24,$24,$00,$00,$1c,$08,$08,$08,$08,$1c,$00
!byte $00,$1e,$04,$04,$04,$24,$18,$00,$00,$24,$28,$30,$28,$24,$24,$00
!byte $00,$20,$20,$20,$20,$20,$3c,$00,$00,$22,$36,$2a,$22,$22,$22,$00
!byte $00,$22,$32,$2a,$26,$22,$22,$00,$00,$18,$24,$24,$24,$24,$18,$00
!byte $00,$38,$24,$24,$38,$20,$20,$00,$00,$18,$24,$24,$24,$24,$1c,$02
!byte $00,$38,$24,$24,$38,$24,$24,$00,$00,$18,$24,$20,$18,$24,$18,$00
!byte $00,$3e,$08,$08,$08,$08,$08,$00,$00,$24,$24,$24,$24,$24,$18,$00
!byte $00,$24,$24,$24,$24,$10,$08,$00,$00,$22,$22,$22,$22,$2a,$14,$00
!byte $00,$24,$24,$18,$24,$24,$24,$00,$00,$22,$22,$14,$08,$08,$08,$00
!byte $00,$3c,$04,$08,$10,$20,$3c,$00,$00,$00,$00,$00,$00,$00,$00,$00
!byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
!byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
!byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
!byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
!byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
!byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
!byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
!byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
!byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
!byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
!byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
!byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
!byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
!byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
!byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
!byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
!byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
!byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
!byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
!byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
!byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
!byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
!byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
!byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
!byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
!byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
!byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
!byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
!byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
!byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
!byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
!byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
!byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
!byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
!byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
!byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
!byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
!byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
!byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
!byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
!byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
!byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
!byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
!byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
!byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
!byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
!byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
!byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
!byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
!byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
!byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
!byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
!byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
!byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
!byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
!byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
!byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
!byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
!byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
!byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
!byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
!byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
!byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
!byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
!byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
!byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
!byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
!byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
!byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
!byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
!byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
!byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
!byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
!byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
!byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
!byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
!byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
!byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
!byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
!byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
!byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
!byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00







; TILE SET DATA : 47 (4x4) tiles : total size is 752 ($2f0) bytes.

* = ADDR_TILESET_DATA
tileset_data

!byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
!byte $00,$00,$00,$00,$00,$00,$00,$00,$01,$02,$01,$02,$03,$04,$03,$04
!byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$05,$02,$03,$06
!byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$05,$04,$03,$04
!byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$03,$04,$03,$04
!byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$03,$04,$03,$06
!byte $07,$07,$07,$07,$07,$07,$07,$07,$01,$02,$01,$02,$03,$04,$03,$04
!byte $00,$00,$00,$00,$00,$00,$00,$00,$08,$08,$08,$08,$03,$04,$03,$04
!byte $09,$09,$09,$09,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0b,$0b,$0b,$0b
!byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$0c,$00,$00,$0c,$0d
!byte $00,$00,$00,$00,$00,$00,$00,$00,$0e,$00,$00,$00,$0f,$0e,$00,$00
!byte $00,$00,$09,$09,$09,$09,$0a,$0a,$0b,$0a,$0a,$0a,$00,$0b,$0b,$0b
!byte $09,$09,$09,$00,$0a,$0a,$0a,$09,$0a,$0a,$0b,$0b,$0b,$0b,$00,$00
!byte $00,$10,$00,$10,$10,$11,$00,$11,$11,$11,$10,$11,$11,$11,$11,$11
!byte $00,$10,$00,$10,$10,$11,$00,$11,$11,$11,$10,$11,$12,$12,$12,$12
!byte $00,$10,$00,$00,$00,$11,$10,$00,$10,$11,$11,$10,$12,$12,$12,$12
!byte $00,$0c,$0d,$0d,$0c,$0d,$0d,$0d,$0d,$0d,$0d,$0d,$0d,$0d,$0d,$0d
!byte $0f,$0f,$0e,$00,$0f,$0f,$0f,$0e,$0f,$0f,$0f,$0f,$0f,$0f,$0f,$0f
!byte $10,$00,$00,$10,$11,$10,$00,$11,$11,$11,$10,$11,$12,$12,$12,$12
!byte $11,$11,$11,$11,$11,$11,$11,$11,$11,$11,$11,$11,$12,$12,$12,$12
!byte $00,$0c,$0d,$0d,$0c,$0d,$0d,$0d,$01,$02,$01,$02,$03,$04,$03,$04
!byte $0d,$0d,$0d,$0d,$0d,$0d,$0d,$0d,$01,$02,$01,$02,$03,$04,$03,$04
!byte $0f,$0f,$0f,$0f,$0f,$0f,$0f,$0f,$01,$02,$01,$02,$03,$04,$03,$04
!byte $0f,$0f,$0e,$00,$0f,$0f,$0f,$0e,$01,$02,$01,$02,$03,$04,$03,$04
!byte $00,$00,$00,$0c,$00,$00,$0c,$0d,$01,$02,$01,$02,$03,$04,$03,$04
!byte $0e,$00,$00,$00,$0f,$0e,$00,$00,$01,$02,$01,$02,$03,$04,$03,$04
!byte $00,$0c,$0e,$00,$0c,$0d,$0f,$0e,$01,$02,$01,$02,$03,$04,$03,$04
!byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$0d,$00,$00,$0d,$0d
!byte $00,$00,$00,$00,$00,$00,$00,$00,$13,$00,$00,$00,$13,$13,$00,$00
!byte $00,$0d,$0d,$0d,$0d,$0d,$0d,$0d,$0d,$0d,$0d,$0d,$0d,$0d,$0d,$0d
!byte $13,$13,$13,$00,$13,$13,$13,$13,$13,$13,$13,$13,$13,$13,$13,$13
!byte $14,$0f,$0f,$0f,$14,$0f,$0f,$0f,$14,$0f,$0f,$0f,$14,$0f,$0f,$0f
!byte $14,$0f,$0f,$15,$14,$0f,$0f,$15,$14,$0f,$0f,$15,$14,$0f,$0f,$15
!byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$14,$0f,$00,$00,$14,$0f
!byte $00,$0d,$0d,$0d,$0d,$0d,$0d,$0d,$01,$02,$01,$02,$03,$04,$03,$04
!byte $13,$13,$13,$00,$13,$13,$13,$13,$01,$02,$01,$02,$03,$04,$03,$04
!byte $13,$13,$13,$13,$13,$13,$13,$13,$01,$02,$01,$02,$03,$04,$03,$04
!byte $14,$0f,$0f,$0f,$14,$0f,$0f,$0f,$03,$02,$03,$02,$02,$03,$02,$03
!byte $14,$0f,$0f,$15,$14,$0f,$0f,$15,$03,$02,$03,$02,$02,$03,$02,$03
!byte $0f,$0f,$0f,$0f,$0f,$0f,$0f,$0f,$0f,$0f,$0f,$0f,$0f,$0f,$0f,$0f
!byte $00,$00,$00,$00,$00,$00,$00,$00,$0f,$0f,$0f,$0f,$0f,$0f,$0f,$0f
!byte $0f,$0f,$0f,$15,$0f,$0f,$0f,$15,$0f,$0f,$0f,$15,$0f,$0f,$0f,$15
!byte $0f,$0f,$0f,$15,$0f,$0f,$0f,$15,$03,$02,$03,$02,$02,$03,$02,$03
!byte $00,$00,$00,$00,$00,$00,$00,$00,$0f,$0f,$0f,$15,$0f,$0f,$0f,$15
!byte $00,$00,$00,$00,$00,$00,$00,$00,$0f,$15,$00,$00,$0f,$15,$00,$00
!byte $00,$00,$14,$0f,$00,$00,$14,$0f,$00,$00,$14,$0f,$00,$00,$14,$0f
!byte $16,$17,$18,$0f,$19,$00,$00,$1a,$1b,$00,$00,$1c,$1d,$1e,$1f,$0f



; MAP DATA : 1 (10x5) map : total size is 50 ($32) bytes.

MAP_SCR0
!byte $00,$00,$00,$00,$00,$00,$00,$0b,$0c,$00,$05,$00,$03,$05,$00,$0b
!byte $0c,$00,$00,$0b,$00,$0d,$00,$00,$02,$00,$00,$00,$09,$0a,$00,$13
!byte $00,$02,$00,$09,$0a,$09,$10,$11,$01,$06,$01,$07,$07,$14,$17,$14
!byte $15,$16

MAP_SCR1
!byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$0c,$00,$00,$00,$0b,$0c
!byte $00,$00,$00,$00,$00,$0b,$0c,$00,$00,$00,$1b,$1c,$0b,$0c,$0a,$00
!byte $00,$1b,$1c,$1b,$1d,$1e,$1c,$00,$17,$1a,$01,$22,$23,$22,$15,$24
!byte $23,$01

MAP_SCR2
!byte $00,$00,$00,$00,$0b,$0c,$00,$00,$00,$0b,$00,$0b,$0c,$21,$2c,$00
!byte $0b,$0c,$00,$00,$00,$00,$00,$2d,$27,$29,$00,$00,$00,$00,$0e,$0f
!byte $00,$1f,$2e,$29,$00,$12,$0e,$00,$06,$06,$01,$25,$16,$2a,$01,$06
!byte $06,$01

MAP_SCR3
!byte $00,$00,$00,$00,$0b,$0c,$00,$00,$00,$0b,$00,$0b,$0c,$21,$2c,$00
!byte $0b,$0c,$00,$00,$00,$00,$00,$2d,$27,$29,$00,$00,$00,$00,$0e,$0f
!byte $00,$1f,$2e,$29,$00,$12,$0e,$00,$06,$06,$01,$25,$16,$2a,$01,$06
!byte $06,$01