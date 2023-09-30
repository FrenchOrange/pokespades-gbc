	object_const_def
	const APRICOTCROPSPEECHHOUSE_SUPER_NERD
	const APRICOTCROPSPEECHHOUSE_LASS

ApricotCropSpeechHouse_MapScripts:
	def_scene_scripts

	def_callbacks

ApricotCropSpeechHouseSuperNerdScript:
	jumptextfaceplayer ApricotCropSpeechHouseSuperNerdText

ApricotCropSpeechHouseLassScript:
	jumptextfaceplayer ApricotCropSpeechHouseLassText

ApricotCropSpeechHouseSuperNerdText:
	text "Did you see the"
	line "crops we've grown?"

	para "This area is known"
	line "for its rich soil,"
	cont "and high food"
	cont "output."
	done

ApricotCropSpeechHouseLassText:
	text "Oh hello!"

	para "Are you a TRAINER"
	line "by any chance?"

	para "Oho! Good luck out"
	line "there, then!"
	done

ApricotCropSpeechHouse_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  5,  7, APRICOT_TOWN, 4
	warp_event  6,  7, APRICOT_TOWN, 4

	def_coord_events

	def_bg_events

	def_object_events
	object_event  5,  3, SPRITE_SUPER_NERD, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, ApricotCropSpeechHouseSuperNerdScript, -1
	object_event  8,  3, SPRITE_LASS, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, ApricotCropSpeechHouseLassScript, -1
