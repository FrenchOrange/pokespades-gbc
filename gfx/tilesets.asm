MACRO tilecoll
; used in data/tilesets/*_collision.asm
	db COLL_\1, COLL_\2, COLL_\3, COLL_\4
ENDM


SECTION "Tileset Data 1", ROMX

TilesetKantoGFX::
INCBIN "gfx/tilesets/kanto.2bpp.lz"

TilesetKantoMeta::
INCBIN "data/tilesets/kanto_metatiles.bin"

TilesetKantoColl::
INCLUDE "data/tilesets/kanto_collision.asm"

TilesetJohtoGFX::
INCBIN "gfx/tilesets/johto.2bpp.lz"

TilesetJohtoMeta::
INCBIN "data/tilesets/johto_metatiles.bin"

TilesetJohtoColl::
INCLUDE "data/tilesets/johto_collision.asm"

TilesetIcePathColl::
INCLUDE "data/tilesets/ice_path_collision.asm"

TilesetPlayersRoomGFX::
INCBIN "gfx/tilesets/players_room.2bpp.lz"

TilesetPlayersRoomMeta::
INCBIN "data/tilesets/players_room_metatiles.bin"

TilesetPlayersRoomColl::
INCLUDE "data/tilesets/players_room_collision.asm"


SECTION "Tileset Data 2", ROMX

TilesetPokecenterGFX::
INCBIN "gfx/tilesets/pokecenter.2bpp.lz"

TilesetPokecenterMeta::
INCBIN "data/tilesets/pokecenter_metatiles.bin"

TilesetPokecenterColl::
INCLUDE "data/tilesets/pokecenter_collision.asm"

TilesetPlayersHouseGFX::
INCBIN "gfx/tilesets/players_house.2bpp.lz"

TilesetPlayersHouseMeta::
INCBIN "data/tilesets/players_house_metatiles.bin"

TilesetPlayersHouseColl::
INCLUDE "data/tilesets/players_house_collision.asm"


SECTION "Tileset Data 3", ROMX

TilesetSchoolGFX::
INCBIN "gfx/tilesets/school.2bpp.lz"

TilesetSchoolMeta::
INCBIN "data/tilesets/school_metatiles.bin"

TilesetSchoolColl::
INCLUDE "data/tilesets/school_collision.asm"

TilesetMartGFX::
INCBIN "gfx/tilesets/mart.2bpp.lz"

TilesetMartMeta::
INCBIN "data/tilesets/mart_metatiles.bin"

TilesetMartColl::
INCLUDE "data/tilesets/mart_collision.asm"

TilesetGameCornerGFX::
INCBIN "gfx/tilesets/game_corner.2bpp.lz"

TilesetGameCornerMeta::
INCBIN "data/tilesets/game_corner_metatiles.bin"

TilesetGameCornerColl::
INCLUDE "data/tilesets/game_corner_collision.asm"

TilesetTrainStationGFX::
INCBIN "gfx/tilesets/train_station.2bpp.lz"

TilesetTrainStationMeta::
INCBIN "data/tilesets/train_station_metatiles.bin"

TilesetTrainStationColl::
INCLUDE "data/tilesets/train_station_collision.asm"


SECTION "Tileset Data 4", ROMX

TilesetEliteFourRoomGFX::
INCBIN "gfx/tilesets/elite_four_room.2bpp.lz"

TilesetEliteFourRoomMeta::
INCBIN "data/tilesets/elite_four_room_metatiles.bin"

TilesetEliteFourRoomColl::
INCLUDE "data/tilesets/elite_four_room_collision.asm"

TilesetParkGFX::
INCBIN "gfx/tilesets/park.2bpp.lz"

TilesetParkMeta::
INCBIN "data/tilesets/park_metatiles.bin"

TilesetParkColl::
INCLUDE "data/tilesets/park_collision.asm"

TilesetDarkCaveGFX::
INCBIN "gfx/tilesets/dark_cave.2bpp.lz"

TilesetCaveGFX::
INCBIN "gfx/tilesets/cave.2bpp.lz"

TilesetCaveMeta::
TilesetDarkCaveMeta::
INCBIN "data/tilesets/cave_metatiles.bin"

TilesetCaveColl::
TilesetDarkCaveColl::
INCLUDE "data/tilesets/cave_collision.asm"

TilesetIcePathGFX::
INCBIN "gfx/tilesets/ice_path.2bpp.lz"

TilesetIcePathMeta::
INCBIN "data/tilesets/ice_path_metatiles.bin"


SECTION "Tileset Data 5", ROMX

TilesetBattleTowerInsideGFX::
INCBIN "gfx/tilesets/battle_tower_inside.2bpp.lz"

TilesetBattleTowerInsideMeta::
INCBIN "data/tilesets/battle_tower_inside_metatiles.bin"

TilesetBattleTowerInsideColl::
INCLUDE "data/tilesets/battle_tower_inside_collision.asm"

TilesetGateGFX::
INCBIN "gfx/tilesets/gate.2bpp.lz"

TilesetGateMeta::
INCBIN "data/tilesets/gate_metatiles.bin"

TilesetGateColl::
INCLUDE "data/tilesets/gate_collision.asm"

TilesetJohtoModernGFX::
INCBIN "gfx/tilesets/johto_modern.2bpp.lz"

TilesetJohtoModernMeta::
INCBIN "data/tilesets/johto_modern_metatiles.bin"

TilesetJohtoModernColl::
INCLUDE "data/tilesets/johto_modern_collision.asm"

TilesetTemp2GFX::
INCBIN "gfx/tilesets/temp2.2bpp.lz"

TilesetTemp2Meta::
INCBIN "data/tilesets/temp2_metatiles.bin"

TilesetTemp2Coll::
INCLUDE "data/tilesets/temp2_collision.asm"


SECTION "Tileset Data 6", ROMX

TilesetChampionsRoomGFX::
INCBIN "gfx/tilesets/champions_room.2bpp.lz"

TilesetChampionsRoomMeta::
INCBIN "data/tilesets/champions_room_metatiles.bin"

TilesetChampionsRoomColl::
INCLUDE "data/tilesets/champions_room_collision.asm"

TilesetSentaApricotGFX::
INCBIN "gfx/tilesets/senta_apricot.2bpp.lz"

TilesetSentaApricotMeta::
INCBIN "data/tilesets/senta_apricot_metatiles.bin"

TilesetSentaApricotColl::
INCLUDE "data/tilesets/senta_apricot_collision.asm"

TilesetLighthouseGFX::
INCBIN "gfx/tilesets/lighthouse.2bpp.lz"

TilesetLighthouseMeta::
INCBIN "data/tilesets/lighthouse_metatiles.bin"

TilesetLighthouseColl::
INCLUDE "data/tilesets/lighthouse_collision.asm"

TilesetForestGFX::
INCBIN "gfx/tilesets/forest.2bpp.lz"

TilesetForestMeta::
INCBIN "data/tilesets/forest_metatiles.bin"

TilesetForestColl::
INCLUDE "data/tilesets/forest_collision.asm"


SECTION "Tileset Data 7", ROMX

TilesetFriendlyShopGFX::
INCBIN "gfx/tilesets/friendly_shop.2bpp.lz"

TilesetFriendlyShopMeta::
INCBIN "data/tilesets/friendly_shop_metatiles.bin"

TilesetFriendlyShopColl::
INCLUDE "data/tilesets/friendly_shop_collision.asm"

TilesetSentaMagnoliaGFX::
INCBIN "gfx/tilesets/senta_magnolia.2bpp.lz"

TilesetSentaMagnoliaMeta::
INCBIN "data/tilesets/senta_magnolia_metatiles.bin"

TilesetSentaMagnoliaColl::
INCLUDE "data/tilesets/senta_magnolia_collision.asm"


SECTION "Tileset Data 8", ROMX

TilesetRuinsOfAlphGFX::
INCBIN "gfx/tilesets/ruins_of_alph.2bpp.lz"

TilesetRuinsOfAlphMeta::
INCBIN "data/tilesets/ruins_of_alph_metatiles.bin"

TilesetRuinsOfAlphColl::
INCLUDE "data/tilesets/ruins_of_alph_collision.asm"


SECTION "Tileset Data 9", ROMX

TilesetJohtoAttr::
INCBIN "data/tilesets/johto_attributes.bin"

TilesetJohtoModernAttr::
INCBIN "data/tilesets/johto_modern_attributes.bin"

TilesetKantoAttr::
INCBIN "data/tilesets/kanto_attributes.bin"

TilesetSentaApricotAttr::
INCBIN "data/tilesets/senta_apricot_attributes.bin"

TilesetPlayersHouseAttr::
INCBIN "data/tilesets/players_house_attributes.bin"

TilesetPokecenterAttr::
INCBIN "data/tilesets/pokecenter_attributes.bin"

TilesetGateAttr::
INCBIN "data/tilesets/gate_attributes.bin"

TilesetSchoolAttr::
INCBIN "data/tilesets/school_attributes.bin"


SECTION "Tileset Data 10", ROMX

TilesetMartAttr::
INCBIN "data/tilesets/mart_attributes.bin"

TilesetGameCornerAttr::
INCBIN "data/tilesets/game_corner_attributes.bin"

TilesetEliteFourRoomAttr::
INCBIN "data/tilesets/elite_four_room_attributes.bin"

TilesetTemp2Attr::
INCBIN "data/tilesets/temp2_attributes.bin"

TilesetTrainStationAttr::
INCBIN "data/tilesets/train_station_attributes.bin"

TilesetChampionsRoomAttr::
INCBIN "data/tilesets/champions_room_attributes.bin"

TilesetLighthouseAttr::
INCBIN "data/tilesets/lighthouse_attributes.bin"

TilesetPlayersRoomAttr::
INCBIN "data/tilesets/players_room_attributes.bin"

TilesetBattleTowerInsideAttr::
INCBIN "data/tilesets/battle_tower_inside_attributes.bin"


SECTION "Tileset Data 11", ROMX

TilesetCaveAttr::
TilesetDarkCaveAttr::
INCBIN "data/tilesets/cave_attributes.bin"

TilesetParkAttr::
INCBIN "data/tilesets/park_attributes.bin"

TilesetRuinsOfAlphAttr::
INCBIN "data/tilesets/ruins_of_alph_attributes.bin"

TilesetIcePathAttr::
INCBIN "data/tilesets/ice_path_attributes.bin"

TilesetForestAttr::
INCBIN "data/tilesets/forest_attributes.bin"

TilesetFriendlyShopAttr::
INCBIN "data/tilesets/friendly_shop_attributes.bin"

TilesetSentaMagnoliaAttr::
INCBIN "data/tilesets/senta_magnolia_attributes.bin"
