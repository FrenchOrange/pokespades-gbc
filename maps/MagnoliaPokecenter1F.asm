	object_const_def
	const MAGNOLIAPOKECENTER1F_NURSE
	const MAGNOLIAPOKECENTER1F_GRAMPS
	const MAGNOLIAPOKECENTER1F_YOUNGSTER
	const MAGNOLIAPOKECENTER1F_FISHER
	const MAGNOLIAPOKECENTER1F_BIG_CHANSEY

MagnoliaPokecenter1F_MapScripts:
	def_scene_scripts

	def_callbacks

MagnoliaPokecenterNurse:
	jumpstd PokecenterNurseScript

MagnoliaPokecenter1FGrampsScript:
	jumptextfaceplayer MagnoliaPokecenter1FGrampsText

MagnoliaPokecenter1FYoungsterScript:
	jumptextfaceplayer MagnoliaPokecenter1FYoungsterText

MagnoliaPokecenter1FFisherScript:
	jumptextfaceplayer MagnoliaPokecenter1FFisherText

MagnoliaPokecenter1FIncubatorScript:
	jumptext MagnoliaPokecenter1FIncubatorText

MagnoliaPokecenter1FGrampsText:
	text "It's a good thing"
	line "the POKéMON CENTER"
	cont "is free, it feels"

	para "like a second home"
	line "that way."
	done

MagnoliaPokecenter1FYoungsterText:
	text "I got taught a"
	line "lesson for using"
	cont "ROCK-type POKéMON"

	para "against GEO and"
	line "his STEEL-type."

	para "That's how I ended"
	line "up here at all."
	done

MagnoliaPokecenter1FFisherText:
	text "Even when not"
	line "needing to heal"
	cont "POKéMON, this"

	para "place's atmosphere"
	line "soothes the soul."
	done

MagnoliaPokecenter1FIncubatorText:
	text "It's an INCUBATOR"
	line "for #MON EGGS!"
	done

MagnoliaPokecenter1F_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  8,  9, MAGNOLIA_CITY, 5
	warp_event  9,  9, MAGNOLIA_CITY, 5

	def_coord_events

	def_bg_events

	def_object_events
	object_event  8,  2, SPRITE_NURSE, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, MagnoliaPokecenterNurse, -1
	object_event 12,  7, SPRITE_GRAMPS, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, MagnoliaPokecenter1FGrampsScript, -1
	object_event  3,  6, SPRITE_YOUNGSTER, SPRITEMOVEDATA_WANDER, 2, 2, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, MagnoliaPokecenter1FYoungsterScript, -1
	object_event  5,  4, SPRITE_FISHER, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_SCRIPT, 0, MagnoliaPokecenter1FFisherScript, -1
	object_event 15,  2, SPRITE_BIG_CHANSEY, SPRITEMOVEDATA_BIGDOLLSYM, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, MagnoliaPokecenter1FIncubatorScript, -1
