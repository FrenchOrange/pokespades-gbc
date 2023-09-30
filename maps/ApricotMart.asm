	object_const_def
	const APRICOTMART_CLERK
	const APRICOTMART_LADY
	const APRICOTMART_YOUNGSTER

ApricotMart_MapScripts:
	def_scene_scripts

	def_callbacks

ApricotMartClerkScript:
	opentext
	pokemart MARTTYPE_STANDARD, MART_CHERRYGROVE
	closetext
	end

ApricotMartPokeBallDispenser:
	jumptext ApricotMartPokeBallDispenserText

ApricotMartLadyScript:
	jumptextfaceplayer ApricotMartLadyText

ApricotMartYoungsterScript:
	faceplayer
	opentext
	writetext ApricotMartYoungsterText
	waitbutton
	closetext
	turnobject APRICOTMART_YOUNGSTER, UP
	end

ApricotMartPokeBallDispenserText:
	text "You crank the #"
	line "BALL DISPENSER…"

	para "It's all empty!"
	done

ApricotMartLadyText:
	text "I'm always so"
	line "undecided whenever"
	cont "I visit here…"
	done

ApricotMartYoungsterText:
	text "Maybe one day I'll"
	line "get to run a"
	cont "FRIENDLY SHOP."

	para "It seems pretty"
	line "easy going."
	done

ApricotMart_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  4,  7, APRICOT_TOWN, 1
	warp_event  5,  7, APRICOT_TOWN, 1

	def_coord_events

	def_bg_events
	bg_event  3,  2, BGEVENT_READ, ApricotMartPokeBallDispenser

	def_object_events
	object_event  1,  4, SPRITE_CLERK, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_SCRIPT, 0, ApricotMartClerkScript, -1
	object_event  8,  6, SPRITE_TEACHER, SPRITEMOVEDATA_WANDER, 1, 1, -1, -1, PAL_NPC_PINK, OBJECTTYPE_SCRIPT, 0, ApricotMartLadyScript, -1
	object_event  5,  2, SPRITE_YOUNGSTER, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, ApricotMartYoungsterScript, -1
