MACRO newgroup
;\1: group id
	const_skip
	DEF MAPGROUP_\1 EQU const_value
	DEF CURRENT_NUM_MAPGROUP_MAPS EQUS "NUM_\1_MAPS"
	DEF __map_value__ = 1
ENDM

MACRO map_const
;\1: map id
;\2: width: in blocks
;\3: height: in blocks
	DEF GROUP_\1 EQU const_value
	DEF MAP_\1 EQU __map_value__
	DEF __map_value__ += 1
	DEF \1_WIDTH EQU \2
	DEF \1_HEIGHT EQU \3
ENDM

MACRO endgroup
	DEF {CURRENT_NUM_MAPGROUP_MAPS} EQU __map_value__ - 1
	PURGE CURRENT_NUM_MAPGROUP_MAPS
ENDM

; map group ids
; `newgroup` indexes are for:
; - MapGroupPointers (see data/maps/maps.asm)
; - MapGroupRoofs (see data/maps/roofs.asm)
; - OutdoorSprites (see data/maps/outdoor_sprites.asm)
; - RoofPals (see gfx/tilesets/roofs.pal)
; `map_const` indexes are for the sub-tables of MapGroupPointers (see data/maps/maps.asm)
; Each map also has associated data:
; - attributes (see data/maps/attributes.asm)
; - blocks (see data/maps/blocks.asm)
; - scripts and events (see data/maps/scripts.asm)
	const_def

	newgroup OLIVINE                                              ;  1
	map_const OLIVINE_POKECENTER_1F,                        9,  5 ;  1
	map_const OLIVINE_GYM,                                  5,  8 ;  2
	map_const OLIVINE_MART,                                 6,  4 ;  3
	map_const ROUTE_38_ECRUTEAK_GATE,                       7,  4 ;  4
	map_const ROUTE_38,                                    20,  9 ;  5
	map_const ROUTE_39,                                    10, 18 ;  6
	map_const OLIVINE_CITY,                                20, 18 ;  7
	endgroup

	newgroup MAHOGANY                                             ;  2
	map_const MAHOGANY_GYM,                                 5,  9 ;  1
	map_const MAHOGANY_POKECENTER_1F,                       9,  5 ;  2
	map_const ROUTE_42_ECRUTEAK_GATE,                       7,  4 ;  3
	map_const ROUTE_42,                                    30,  9 ;  4
	map_const ROUTE_44,                                    30,  9 ;  5
	map_const MAHOGANY_TOWN,                               10,  9 ;  6
	map_const MAHOGANY_MART,                                6,  4 ;  7
	endgroup

	newgroup DUNGEONS                                             ;  3
	map_const NATIONAL_PARK,                               20, 27 ;  1
	map_const NATIONAL_PARK_BUG_CONTEST,                   20, 27 ;  2
	map_const RUINS_OF_ALPH_OUTSIDE,                       10, 18 ;  3
	map_const RUINS_OF_ALPH_HO_OH_CHAMBER,                  4,  5 ;  4
	map_const RUINS_OF_ALPH_KABUTO_CHAMBER,                 4,  5 ;  5
	map_const RUINS_OF_ALPH_OMANYTE_CHAMBER,                4,  5 ;  6
	map_const RUINS_OF_ALPH_AERODACTYL_CHAMBER,             4,  5 ;  7
	map_const RUINS_OF_ALPH_INNER_CHAMBER,                 10, 14 ;  8
	map_const RUINS_OF_ALPH_HO_OH_ITEM_ROOM,                4,  5 ;  9
	map_const RUINS_OF_ALPH_KABUTO_ITEM_ROOM,               4,  5 ; 10
	map_const RUINS_OF_ALPH_OMANYTE_ITEM_ROOM,              4,  5 ; 11
	map_const RUINS_OF_ALPH_AERODACTYL_ITEM_ROOM,           4,  5 ; 12
	map_const SERENITY_FOREST,                             24, 30 ; 13
	map_const ICE_PATH_1F,                                 20, 18 ; 14
	map_const ICE_PATH_B1F,                                10, 18 ; 15
	map_const ICE_PATH_B2F_MAHOGANY_SIDE,                  10,  9 ; 16
	map_const ICE_PATH_B2F_BLACKTHORN_SIDE,                 5,  9 ; 17
	map_const ICE_PATH_B3F,                                10,  9 ; 18
	map_const SILVER_CAVE_ROOM_1,                          10, 18 ; 19
	map_const SILVER_CAVE_ROOM_2,                          15, 18 ; 20
	map_const SILVER_CAVE_ROOM_3,                          10, 18 ; 21
	map_const SILVER_CAVE_ITEM_ROOMS,                      10,  9 ; 22
	map_const HOLLOWED_CAVERN,                             20, 18 ; 23
	map_const DARK_CAVE_BLACKTHORN_ENTRANCE,               15, 18 ; 24
	map_const VICTORY_ROAD,                                10, 36 ; 25
	endgroup

	newgroup ECRUTEAK                                             ;  4
	map_const ECRUTEAK_POKECENTER_1F,                       9,  5 ;  1
	map_const ECRUTEAK_MART,                                6,  4 ;  2
	map_const ECRUTEAK_GYM,                                 5,  9 ;  3
	map_const ECRUTEAK_CITY,                               20, 18 ;  4
	endgroup

	newgroup BLACKTHORN                                           ;  5
	map_const BLACKTHORN_GYM_1F,                            5,  9 ;  1
	map_const BLACKTHORN_GYM_2F,                            5,  9 ;  2
	map_const BLACKTHORN_MART,                              6,  4 ;  3
	map_const BLACKTHORN_POKECENTER_1F,                     9,  5 ;  4
	map_const ROUTE_45,                                    10, 45 ;  5
	map_const ROUTE_46,                                    10, 18 ;  6
	map_const BLACKTHORN_CITY,                             20, 18 ;  7
	endgroup

	newgroup AZALEA                                               ;  6
	map_const AZALEA_POKECENTER_1F,                         9,  5 ;  1
	map_const AZALEA_MART,                                  6,  4 ;  2
	map_const AZALEA_GYM,                                   5,  8 ;  3
	map_const ROUTE_33,                                    10,  9 ;  4
	map_const AZALEA_TOWN,                                 20,  9 ;  5
	endgroup

	newgroup LAKE_OF_RAGE                                         ;  7
	map_const ROUTE_43_MAHOGANY_GATE,                       5,  5 ;  1
	map_const ROUTE_43_GATE,                                5,  5 ;  2
	map_const ROUTE_43,                                    10, 27 ;  3
	map_const LAKE_OF_RAGE,                                20, 18 ;  4
	map_const ROUTE_35,                                    10, 18 ;  5
	map_const ROUTE_36,                                    30,  9 ;  6
	map_const ROUTE_37,                                    10,  9 ;  7
	map_const ROUTE_35_GOLDENROD_GATE,                      5,  5 ;  8
	map_const ROUTE_35_NATIONAL_PARK_GATE,                  4,  4 ;  9
	map_const ROUTE_36_RUINS_OF_ALPH_GATE,                  5,  5 ; 10
	map_const ROUTE_36_NATIONAL_PARK_GATE,                  5,  4 ; 11
	endgroup

	newgroup MAGNOLIA                                             ;  8
	map_const ROAD_A04,                                    38, 18 ;  1
	map_const MAGNOLIA_CITY,                               29, 17 ;  2
	map_const MAGNOLIA_MART,                                6,  4 ;  3
	map_const MAGNOLIA_GYM,                                 7,  9 ;  4
	map_const TRAINER_SCHOOL,                               6,  6 ;  5
	map_const MAGNOLIA_NET_SPEECH_HOUSE,                    6,  5 ;  6
	map_const MAGNOLIA_POKECENTER_1F,                       9,  5 ;  7
	map_const MAGNOLIA_STORIES_SPEECH_HOUSE,                6,  5 ;  8
	map_const ROAD_A04_MAGNOLIA_GATE,                       5,  5 ;  9
	map_const MAGNOLIA_TRAIN_STATION,                      10,  9 ; 10
	endgroup

	newgroup GOLDENROD                                            ;  9
	map_const ROUTE_34,                                    10, 27 ;  1
	map_const GOLDENROD_CITY,                              20, 18 ;  2
	map_const GOLDENROD_GYM,                               10,  9 ;  3
	map_const GOLDENROD_MAGNET_TRAIN_STATION,              10,  9 ;  4
	map_const GOLDENROD_DEPT_STORE_1F,                      8,  4 ;  5
	map_const GOLDENROD_DEPT_STORE_2F,                      8,  4 ;  6
	map_const GOLDENROD_DEPT_STORE_3F,                      8,  4 ;  7
	map_const GOLDENROD_DEPT_STORE_4F,                      8,  4 ;  8
	map_const GOLDENROD_DEPT_STORE_5F,                      8,  4 ;  9
	map_const GOLDENROD_DEPT_STORE_6F,                      8,  4 ; 10
	map_const GOLDENROD_DEPT_STORE_ELEVATOR,                2,  2 ; 11
	map_const GOLDENROD_DEPT_STORE_ROOF,                    8,  4 ; 12
	map_const GOLDENROD_GAME_CORNER,                       10,  7 ; 13
	map_const GOLDENROD_POKECENTER_1F,                      9,  5 ; 14
	map_const DAY_CARE,                                     5,  4 ; 15
	endgroup

	newgroup FAST_SHIP                                            ; 10
	map_const FAST_SHIP_1F,                                16,  9 ;  1
	map_const FAST_SHIP_CABINS_NNW_NNE_NE,                  4, 16 ;  2
	map_const FAST_SHIP_CABINS_SW_SSW_NW,                   4, 16 ;  3
	map_const FAST_SHIP_CABINS_SE_SSE_CAPTAINS_CABIN,       5, 17 ;  4
	map_const FAST_SHIP_B1F,                               16,  8 ;  5
	endgroup

	newgroup INDIGO                                               ; 11
	map_const ROUTE_23,                                    10,  9 ;  1
	map_const INDIGO_PLATEAU_POKECENTER_1F,                 9,  7 ;  2
	map_const WILLS_ROOM,                                   5,  9 ;  3
	map_const KOGAS_ROOM,                                   5,  9 ;  4
	map_const BRUNOS_ROOM,                                  5,  9 ;  5
	map_const KARENS_ROOM,                                  5,  9 ;  6
	map_const LANCES_ROOM,                                  5, 12 ;  7
	map_const HALL_OF_FAME,                                 5,  7 ;  8
	endgroup

	newgroup CABLE_CLUB                                           ; 12
	map_const POKECENTER_2F,                                8,  4 ;  1
	map_const TRADE_CENTER,                                 5,  4 ;  2
	map_const COLOSSEUM,                                    5,  4 ;  3
	map_const TIME_CAPSULE,                                 5,  4 ;  4
	endgroup

	newgroup CIANWOOD                                             ; 13
	map_const ROUTE_40,                                    10, 18 ;  1
	map_const ROUTE_41,                                    25, 27 ;  2
	map_const CIANWOOD_CITY,                               15, 27 ;  3
	map_const CIANWOOD_GYM,                                 5,  9 ;  5
	map_const CIANWOOD_POKECENTER_1F,                       9,  5 ;  6
	map_const CIANWOOD_MART,                                6,  4 ;  7
	map_const BATTLE_TOWER_1F,                              8,  5 ;  8
	map_const BATTLE_TOWER_BATTLE_ROOM,                     4,  4 ;  9
	map_const BATTLE_TOWER_ELEVATOR,                        2,  2 ; 10
	map_const BATTLE_TOWER_HALLWAY,                        11,  2 ; 11
	map_const ROUTE_40_BATTLE_TOWER_GATE,                   5,  5 ; 12
	map_const BATTLE_TOWER_OUTSIDE,                        10, 14 ; 13
	endgroup

	newgroup LOTUS                                                ; 14
	map_const ROUTE_26,                                    10, 54 ;  1
	map_const ROAD_A00,                                    40,  9 ;  2
	map_const ROAD_A01,                                    18, 21 ;  3
	map_const LOTUS_TOWN,                                  16, 13 ;  4
	map_const PLAYERS_HOUSE_1F,                             9,  5 ;  5
	map_const PLAYERS_HOUSE_2F,                             5,  4 ;  6
	map_const PLAYERS_NEIGHBORS_HOUSE,                      6,  4 ;  7
	map_const RIVALS_HOUSE,                                14,  5 ;  8
	map_const ROAD_A01_APRICOT_GATE,                        7,  4 ;  9
	map_const ROAD_A03,                                    14, 23 ; 10
	map_const CYPRESS_LAB,                                  5,  6 ; 11
	map_const VICTORY_ROAD_GATE,                            3,  9 ; 12
	endgroup

	newgroup APRICOT                                              ; 15
	map_const ROAD_A02,                                    22, 17 ;  1
	map_const APRICOT_TOWN,                                19, 13 ;  2
	map_const APRICOT_MART,                                 6,  4 ;  3
	map_const APRICOT_POKECENTER_1F,                        9,  5 ;  4
	map_const APRICOT_PIKACHU_SPEECH_HOUSE,                 6,  4 ;  5
	map_const APRICOT_CROP_SPEECH_HOUSE,                    6,  4 ;  6
	endgroup

DEF NUM_MAP_GROUPS EQU const_value ; 15
