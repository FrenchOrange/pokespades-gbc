	object_const_def
	const CIANWOODMART_CLERK

CianwoodMart_MapScripts:
	def_scene_scripts

	def_callbacks

CianwoodMartClerkScript:
	faceplayer
	opentext
	pokemart MARTTYPE_STANDARD, MART_CIANWOOD
	closetext
	end

CianwoodMart_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  4,  7, CIANWOOD_CITY, 4
	warp_event  5,  7, CIANWOOD_CITY, 4

	def_coord_events

	def_bg_events

	def_object_events
	object_event  1,  4, SPRITE_CLERK, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, CianwoodMartClerkScript, -1
