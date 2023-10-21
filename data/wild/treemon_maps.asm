MACRO treemon_map
	map_id \1
	db \2 ; treemon set
ENDM

TreeMonMaps:
	treemon_map ROUTE_33,                  TREEMON_SET_TOWN
	treemon_map ROUTE_34,                  TREEMON_SET_ROUTE
	treemon_map ROUTE_35,                  TREEMON_SET_ROUTE
	treemon_map ROUTE_36,                  TREEMON_SET_ROUTE
	treemon_map ROUTE_37,                  TREEMON_SET_ROUTE
	treemon_map ROUTE_38,                  TREEMON_SET_ROUTE
	treemon_map ROUTE_39,                  TREEMON_SET_ROUTE
	treemon_map ROUTE_40,                  TREEMON_SET_CITY
	treemon_map ROUTE_41,                  TREEMON_SET_CITY
	treemon_map ROUTE_42,                  TREEMON_SET_TOWN
	treemon_map ROUTE_43,                  TREEMON_SET_LAKE
	treemon_map ROUTE_44,                  TREEMON_SET_CANYON
	treemon_map ROUTE_45,                  TREEMON_SET_CANYON
	treemon_map ROUTE_46,                  TREEMON_SET_CANYON
	treemon_map AZALEA_TOWN,               TREEMON_SET_TOWN
	treemon_map CIANWOOD_CITY,             TREEMON_SET_CITY
	treemon_map GOLDENROD_CITY,            TREEMON_SET_CITY
	treemon_map OLIVINE_CITY,              TREEMON_SET_CITY
	treemon_map ECRUTEAK_CITY,             TREEMON_SET_CITY
	treemon_map MAHOGANY_TOWN,             TREEMON_SET_CITY
	treemon_map LAKE_OF_RAGE,              TREEMON_SET_LAKE
	treemon_map BLACKTHORN_CITY,           TREEMON_SET_CITY
	db -1

RockMonMaps:
	treemon_map CIANWOOD_CITY,             TREEMON_SET_ROCK
	treemon_map ROUTE_40,                  TREEMON_SET_ROCK
	treemon_map HOLLOWED_CAVERN,           TREEMON_SET_ROCK
	db -1
