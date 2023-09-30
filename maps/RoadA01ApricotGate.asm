	object_const_def
	const ROADA01APRICOTGATE_OFFICER
	const ROADA01APRICOTGATE_SUPER_NERD

RoadA01ApricotGate_MapScripts:
	def_scene_scripts

	def_callbacks

RoadA01ApricotGateOfficerScript:
	jumptextfaceplayer RoadA01ApricotGateOfficerText

RoadA01ApricotGateSuperNerdScript:
	jumptextfaceplayer RoadA01ApricotGateSuperNerdText

RoadA01ApricotGateOfficerText:
	text "Beyond here lies"
	line "APRICOT TOWN."

	para "It's nowhere near"
	line "as bustling as"
	cont "MAGNOLIA CITY, but"

	para "it makes my job"
	line "all the easier."
	done

RoadA01ApricotGateSuperNerdText:
	text "An old man came by"
	line "running faster"
	cont "than a RAPIDASH!"

	para "I believe I heard"
	line "him say something"
	cont "about having to"
	cont "catch a train?"
	done

RoadA01ApricotGate_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  0,  3, ROAD_A01, 1
	warp_event  0,  4, ROAD_A01, 2
	warp_event 13,  3, APRICOT_TOWN, 5
	warp_event 13,  4, APRICOT_TOWN, 6

	def_coord_events

	def_bg_events

	def_object_events
	object_event  6,  2, SPRITE_OFFICER, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, RoadA01ApricotGateOfficerScript, -1
	object_event  9,  4, SPRITE_SUPER_NERD, SPRITEMOVEDATA_WALK_LEFT_RIGHT, 1, 1, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_SCRIPT, 0, RoadA01ApricotGateSuperNerdScript, -1
