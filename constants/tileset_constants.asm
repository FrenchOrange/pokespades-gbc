; Tilesets indexes (see data/tilesets.asm)
	const_def
	const TILESET_JOHTO                ; 01
	const TILESET_JOHTO_MODERN         ; 02
	const TILESET_KANTO                ; 03
	const TILESET_SENTA_APRICOT        ; 04
	const TILESET_PLAYERS_HOUSE        ; 05
	const TILESET_POKECENTER           ; 06
	const TILESET_GATE                 ; 07
	const TILESET_SCHOOL               ; 08
	const TILESET_MART                 ; 09
	const TILESET_GAME_CORNER          ; 10
	const TILESET_ELITE_FOUR_ROOM      ; 11
	const TILESET_TEMP2                ; 12
	const TILESET_TRAIN_STATION        ; 13
	const TILESET_CHAMPIONS_ROOM       ; 14
	const TILESET_LIGHTHOUSE           ; 15
	const TILESET_PLAYERS_ROOM         ; 16
	const TILESET_BATTLE_TOWER_INSIDE  ; 17
	const TILESET_CAVE                 ; 18
	const TILESET_PARK                 ; 19
	const TILESET_RUINS_OF_ALPH        ; 20
	const TILESET_ICE_PATH             ; 21
	const TILESET_DARK_CAVE            ; 22
	const TILESET_FOREST               ; 23
	const TILESET_FRIENDLY_SHOP        ; 24
	const TILESET_SENTA_MAGNOLIA       ; 25
DEF NUM_TILESETS EQU const_value

; wTileset struct size
DEF TILESET_LENGTH EQU 14

; roof length (see gfx/tilesets/roofs)
DEF ROOF_LENGTH EQU 9

; bg palette values (see gfx/tilesets/*_palette_map.asm)
; TilesetBGPalette indexes (see gfx/tilesets/bg_tiles.pal)
	const_def
	const PAL_BG_GRAY   ; 0
	const PAL_BG_RED    ; 1
	const PAL_BG_GREEN  ; 2
	const PAL_BG_WATER  ; 3
	const PAL_BG_YELLOW ; 4
	const PAL_BG_BROWN  ; 5
	const PAL_BG_ROOF   ; 6
	const PAL_BG_TEXT   ; 7
