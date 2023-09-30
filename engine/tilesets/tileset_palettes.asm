LoadSpecialMapPalette:
	ld a, [wMapTileset]
	cp TILESET_POKECENTER
	jr z, .pokecenter
	cp TILESET_FRIENDLY_SHOP
	jr z, .friendly_shop
	cp TILESET_PLAYERS_HOUSE
	jr z, .players_house
	cp TILESET_MAGNOLIA_HOUSE
	jr z, .players_house
	cp TILESET_SCHOOL
	jr z, .school
	cp TILESET_BATTLE_TOWER_INSIDE
	jr z, .battle_tower_inside
	cp TILESET_ICE_PATH
	jr z, .ice_path
	cp TILESET_ELITE_FOUR_ROOM
	jr z, .elite_four_room
	cp TILESET_GATE
	jr z, .gate
	jr .do_nothing

.pokecenter
	call LoadPokeCenterPalette
	scf
	ret

.friendly_shop
	call LoadFriendlyShopPalette
	scf
	ret

.players_house
	call LoadPlayersHousePalette
	scf
	ret

.school
	call LoadSchoolPalette
	scf
	ret

.battle_tower_inside
	call LoadBattleTowerInsidePalette
	scf
	ret

.ice_path
	ld a, [wEnvironment]
	and $7
	cp INDOOR ; Hall of Fame
	jr z, .do_nothing
	call LoadIcePathPalette
	scf
	ret

.elite_four_room
	call LoadEliteFourRoomPalette
	scf
	ret

.gate
	call LoadGatePalette
	scf
	ret

.do_nothing
	and a
	ret

LoadPokeCenterPalette:
	ld a, BANK(wBGPals1)
	ld de, wBGPals1
	ld hl, PokeCenterPalette
	ld bc, 8 palettes
	call FarCopyWRAM
	ret

PokeCenterPalette:
INCLUDE "gfx/tilesets/pokecenter.pal"

LoadFriendlyShopPalette:
	ld a, BANK(wBGPals1)
	ld de, wBGPals1
	ld hl, FriendlyShopPalette
	ld bc, 8 palettes
	call FarCopyWRAM
	ret

FriendlyShopPalette:
INCLUDE "gfx/tilesets/friendly_shop.pal"

LoadPlayersHousePalette:
	ld a, BANK(wBGPals1)
	ld de, wBGPals1
	ld hl, PlayersHousePalette
	ld bc, 8 palettes
	call FarCopyWRAM
	ret

PlayersHousePalette:
INCLUDE "gfx/tilesets/players_house.pal"

LoadBattleTowerInsidePalette:
	ld a, BANK(wBGPals1)
	ld de, wBGPals1
	ld hl, BattleTowerInsidePalette
	ld bc, 8 palettes
	call FarCopyWRAM
	ret

BattleTowerInsidePalette:
INCLUDE "gfx/tilesets/battle_tower_inside.pal"

LoadIcePathPalette:
	ld a, BANK(wBGPals1)
	ld de, wBGPals1
	ld hl, IcePathPalette
	ld bc, 8 palettes
	call FarCopyWRAM
	ret

IcePathPalette:
INCLUDE "gfx/tilesets/ice_path.pal"

LoadSchoolPalette:
	ld a, BANK(wBGPals1)
	ld de, wBGPals1
	ld hl, SchoolPalette
	ld bc, 8 palettes
	call FarCopyWRAM
	ret

SchoolPalette:
INCLUDE "gfx/tilesets/school.pal"

LoadEliteFourRoomPalette:
	ld a, BANK(wBGPals1)
	ld de, wBGPals1
	ld hl, EliteFourRoomPalette
	ld bc, 8 palettes
	call FarCopyWRAM
	ret

EliteFourRoomPalette:
INCLUDE "gfx/tilesets/elite_four_room.pal"

LoadGatePalette:
	ld a, BANK(wBGPals1)
	ld de, wBGPals1
	ld hl, GatePalette
	ld bc, 8 palettes
	call FarCopyWRAM
	ret

GatePalette:
INCLUDE "gfx/tilesets/gate.pal"
