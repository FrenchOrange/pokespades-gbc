	const_def
	const PAL_TOWNMAP_CITY     ; 0
	const PAL_TOWNMAP_DUNGEON  ; 1
	const PAL_TOWNMAP_PATH     ; 2
	const PAL_TOWNMAP_INTEREST ; 3
	const PAL_TOWNMAP_MOUNTAIN ; 4
	const PAL_TOWNMAP_TREE     ; 5
	const PAL_TOWNMAP_LAKE     ; 6
	const PAL_TOWNMAP_WAVE     ; 7

MACRO townmappals
	rept _NARG / 2
		dn PAL_TOWNMAP_\2, PAL_TOWNMAP_\1
		shift 2
	endr
ENDM

; gfx/pokegear/town_map.png
	townmappals PATH,       PATH,      PATH,       PATH,       PATH,       PATH,       PATH,       PATH
	townmappals PATH,       PATH,      CITY,       PATH,       PATH,       PATH,       LAKE,       INTEREST
	townmappals PATH,       PATH,      PATH,       PATH,       PATH,       PATH,       PATH,       PATH
	townmappals PATH,       WAVE,      DUNGEON,    LAKE,       INTEREST,   PATH,       PATH,       PATH
	townmappals PATH,       PATH,      PATH,       PATH,       PATH,       PATH,       PATH,       PATH
	townmappals CITY,       CITY,      CITY,       CITY,       PATH,       PATH,       PATH,       PATH
	townmappals CITY,       CITY,      CITY,       CITY,       CITY,       CITY,       PATH,       PATH
	townmappals PATH,       PATH,      PATH,       PATH,       PATH,       PATH,       PATH,       PATH
	townmappals CITY,       CITY,      PATH,       PATH,       PATH,       PATH,       PATH,       PATH
	townmappals MOUNTAIN,   MOUNTAIN,  MOUNTAIN,   MOUNTAIN,   MOUNTAIN,   MOUNTAIN,   MOUNTAIN,   MOUNTAIN
	townmappals CITY,       DUNGEON,   PATH,       PATH,       PATH,       PATH,       PATH,       PATH
	townmappals PATH,       PATH,      MOUNTAIN,   MOUNTAIN,   MOUNTAIN,   MOUNTAIN,   MOUNTAIN,   MOUNTAIN
	townmappals DUNGEON,    CITY,      CITY,       TREE,       PATH,       PATH,       PATH,       MOUNTAIN
	townmappals MOUNTAIN,   PATH,      MOUNTAIN,   MOUNTAIN,   MOUNTAIN,   MOUNTAIN,   MOUNTAIN,   MOUNTAIN
	townmappals TREE,       TREE,      TREE,       TREE,       PATH,       PATH,       PATH,       MOUNTAIN
	townmappals MOUNTAIN,   PATH,      MOUNTAIN,   MOUNTAIN,   PATH,       PATH,       PATH,       PATH
