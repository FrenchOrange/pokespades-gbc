	object_const_def
	const APRICOTPOKECENTER1F_NURSE
	const APRICOTPOKECENTER1F_SCIENTIST
	const APRICOTPOKECENTER1F_BUG_CATCHER
	const APRICOTPOKECENTER1F_BIG_CHANSEY

ApricotPokecenter1F_MapScripts:
	def_scene_scripts

	def_callbacks

ApricotPokecenter1FNurseScript:
	jumpstd PokecenterNurseScript

ApricotPokecenter1FMagazineShelf:
	jumptext ApricotPokecenter1FMagazineShelfText

ApricotPokecenter1FScientistScript:
	jumptextfaceplayer ApricotPokecenter1FScientistText

ApricotPokecenter1FBugCatcherScript:
	jumptextfaceplayer ApricotPokecenter1FBugCatcherText

ApricotPokecenter1FIncubatorScript:
	jumptext ApricotPokecenter1FIncubatorText

ApricotPokecenter1FMagazineShelfText:
	text "#MON magazines!"
	line "#MON PAL…"

	para "#MON HANDBOOK…"
	line "ADORABLE #MON…"
	done

ApricotPokecenter1FScientistText:
	text "It's always cozy at"
	line "a #MON CENTER."
	done

ApricotPokecenter1FBugCatcherText:
	text "My BUG #MON can"
	line "be quite frail. So"
	cont "I take them here"
	cont "to recover easily."
	done

ApricotPokecenter1FIncubatorText:
	text "It's an INCUBATOR"
	line "for #MON EGGS!"
	done
ApricotPokecenter1F_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  8,  9, APRICOT_TOWN, 2
	warp_event  9,  9, APRICOT_TOWN, 2

	def_coord_events

	def_bg_events
	bg_event  3,  2, BGEVENT_READ, ApricotPokecenter1FMagazineShelf
	bg_event  4,  2, BGEVENT_READ, ApricotPokecenter1FMagazineShelf

	def_object_events
	object_event  8,  2, SPRITE_NURSE, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, ApricotPokecenter1FNurseScript, -1
	object_event  5,  7, SPRITE_SCIENTIST, SPRITEMOVEDATA_WANDER, 1, 1, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, ApricotPokecenter1FScientistScript, -1
	object_event 15,  6, SPRITE_BUG_CATCHER, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_SCRIPT, 0, ApricotPokecenter1FBugCatcherScript, -1
	object_event 15,  2, SPRITE_BIG_CHANSEY, SPRITEMOVEDATA_BIGDOLLSYM, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, ApricotPokecenter1FIncubatorScript, -1
