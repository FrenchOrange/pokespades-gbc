MACRO tileset
	dba \1GFX, \1Meta, \1Coll, \1Attr
	dw \1Anim
ENDM

; Associated data:
; - The *GFX, *Meta, and *Coll are defined in gfx/tilesets.asm
; - The *PalMap are defined in gfx/tileset_palette_maps.asm
; - The *Anim are defined in engine/tilesets/tileset_anims.asm

Tilesets::
; entries correspond to TILESET_* constants (see constants/tileset_constants.asm)
	table_width TILESET_LENGTH, Tilesets
	tileset TilesetJohto
	tileset TilesetJohtoModern
	tileset TilesetKanto
	tileset TilesetHouse
	tileset TilesetPlayersHouse
	tileset TilesetPokecenter
	tileset TilesetGate
	tileset TilesetSchool
	tileset TilesetMart
	tileset TilesetGameCorner
	tileset TilesetEliteFourRoom
	tileset TilesetMagnoliaHouse
	tileset TilesetTrainStation
	tileset TilesetChampionsRoom
	tileset TilesetLighthouse
	tileset TilesetPlayersRoom
	tileset TilesetBattleTowerInside
	tileset TilesetCave
	tileset TilesetPark
	tileset TilesetRuinsOfAlph
	tileset TilesetIcePath
	tileset TilesetDarkCave
	tileset TilesetForest
	tileset TilesetFriendlyShop
	tileset TilesetMagnoliaJohto
	assert_table_length NUM_TILESETS
