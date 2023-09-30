	object_const_def
	const MAHOGANYMART_CLERK

MahoganyMart_MapScripts:
	def_scene_scripts

	def_callbacks

MahoganyMartClerkScript:
	faceplayer
	opentext
	pokemart MARTTYPE_STANDARD, MART_MAHOGANY
	closetext
	end

MahoganyMart_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  4,  7, MAHOGANY_TOWN, 1
	warp_event  5,  7, MAHOGANY_TOWN, 1

	def_coord_events

	def_bg_events

	def_object_events
	object_event  1,  4, SPRITE_CLERK, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, MahoganyMartClerkScript, -1
