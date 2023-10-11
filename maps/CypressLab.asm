	object_const_def
	const CYPRESSLAB_PROF
	const CYPRESSLAB_PROFS_AIDE

CypressLab_MapScripts:
	def_scene_scripts

	def_callbacks

CypressLab_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  4, 11, LOTUS_TOWN, 1
	warp_event  5, 11, LOTUS_TOWN, 1

	def_coord_events

	def_bg_events

	def_object_events
	object_event  5,  2, SPRITE_CYPRESS, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, ObjectEvent, -1
	object_event  2,  9, SPRITE_SCIENTIST, SPRITEMOVEDATA_SPINRANDOM_SLOW, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, ObjectEvent, -1
