MACRO spawn
; map, x, y
	map_id \1
	db \2, \3
ENDM

SpawnPoints:
; entries correspond to SPAWN_* constants
	table_width 4, SpawnPoints

	spawn PLAYERS_HOUSE_2F,            3,  3
	spawn LOTUS_TOWN,                  7, 20

	spawn LOTUS_TOWN,                  7, 20
	spawn APRICOT_TOWN,               14,  8
	spawn MAGNOLIA_CITY,              28, 16
	spawn AZALEA_TOWN,                15, 10
	spawn CIANWOOD_CITY,              23, 44
	spawn GOLDENROD_CITY,             15, 28
	spawn OLIVINE_CITY,               13, 22
	spawn ECRUTEAK_CITY,              23, 28
	spawn MAHOGANY_TOWN,              15, 14
	spawn LAKE_OF_RAGE,               21, 29
	spawn BLACKTHORN_CITY,            21, 30
	spawn ROUTE_23,                    9,  6
	spawn FAST_SHIP_CABINS_SW_SSW_NW,  6,  2

	assert_table_length NUM_SPAWNS
