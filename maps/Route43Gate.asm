	object_const_def
	const ROUTE43GATE_OFFICER

Route43Gate_MapScripts:
	def_scene_scripts
	def_callbacks

Route43GateOfficerScript:
	jumptextfaceplayer Route43GateOfficerText_AvoidGrass

Route43GateOfficerText_AvoidGrass:
	text "Use this gate to"
	line "avoid walking in"
	cont "the grass."
	done

Route43Gate_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  4,  1, ROUTE_43, 4
	warp_event  5,  1, ROUTE_43, 5
	warp_event  4,  9, ROUTE_43, 3
	warp_event  5,  9, ROUTE_43, 3

	def_coord_events

	def_bg_events

	def_object_events
	object_event  0,  5, SPRITE_OFFICER, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, Route43GateOfficerScript, -1