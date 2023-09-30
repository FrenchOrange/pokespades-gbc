	object_const_def
	const MAGNOLIAMART_CLERK
	const MAGNOLIAMART_SUPER_NERD

MagnoliaMart_MapScripts:
	def_scene_scripts

	def_callbacks

MagnoliaMartClerkScript:
	opentext
	pokemart MARTTYPE_STANDARD, MART_MAGNOLIA
	closetext
	end

MagnoliaMartSuperNerdScript:
	jumptextfaceplayer MagnoliaMartSuperNerdText

MagnoliaMartPokeBallDispenser:
	jumptext MagnoliaMartPokeBallDispenserText

MagnoliaMartSuperNerdText:
	text "Never feel shame"
	line "in using items"
	cont "in battle."

	para "Even GYM LEADERS"
	line "will use some if"
	cont "needed."
	done

MagnoliaMartPokeBallDispenserText:
	text "You crank the #"
	line "BALL DISPENSER…"

	para "It's all empty!"
	done

MagnoliaMart_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  4,  7, MAGNOLIA_CITY, 1
	warp_event  5,  7, MAGNOLIA_CITY, 1

	def_coord_events

	def_bg_events
	bg_event  3,  2, BGEVENT_READ, MagnoliaMartPokeBallDispenser

	def_object_events
	object_event  1,  4, SPRITE_CLERK, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, MagnoliaMartClerkScript, -1
	object_event  8,  2, SPRITE_SUPER_NERD, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, MagnoliaMartSuperNerdScript, -1
