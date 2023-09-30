	object_const_def
	const RIVALSHOUSE_RIVALS_DAD
	const RIVALSHOUSE_RIVALS_MOM
	const RIVALSHOUSE_RIVALS_BROTHER

RivalsHouse_MapScripts:
	def_scene_scripts

	def_callbacks

RivalsDad:
	jumptextfaceplayer RivalsDadText

RivalsMom:
	faceplayer
	opentext
	checkevent EVENT_GOT_A_POKEMON_FROM_ELM
	iftrue .SawRoadA00Event
	writetext RivalsMomPreEventText
	waitbutton
	closetext
	end

.SawRoadA00Event:
	writetext RivalsMomPostEventText
	waitbutton
	closetext
	end

RivalsBrother:
	jumptextfaceplayer RivalsBrotherText

RivalsHouseWardrobe:
	jumptext RivalsHouseWardrobeText

RivalsHousePC:
	jumptext RivalsHousePCText

RivalsDadText:
	text "As a parent, I"
	line "worry for <RIVAL>."

	para "But I understand"
	line "he is of age to go"
	cont "explore the world."

	para "Whatever comes his"
	line "way, he'll figure"
	cont "things out."
	done

RivalsMomPreEventText:
	text "Oh, <RIVAL>?"

	para "He said he would"
	line "be by the cliff on"
	cont "ROAD A00."

	para "He's done that ever"
	line "since he was"
	para "promised a #MON"
	line "of his own."
	done

RivalsMomPostEventText:
	text "He barely said"
	line "goodbye but he"
	para "already feels so"
	line "far away."

	para "I just hope he"
	line "stays safe."

	para "If anything does"
	line "happen… Will you"
	para "please be there"
	line "for him?"
	done

RivalsBrotherText:
	text "Hey <PLAY_G>!"

	para "I wanna become a"
	line "TRAINER like you"
	cont "and <RIVAL>."

	para "Sometimes I see"
	line "HOOTHOOT flying"
	para "outside and I want"
	line "to catch one."
	done

RivalsHouseWardrobeText:
	text "A big wardrobe!"
	para "It can hold all"
	line "kinds of things!"
	done

RivalsHousePCText:
	text "This PC belongs to"
	line "<RIVAL>… It's not"
	cont "yours to touch!"
	done

RivalsHouse_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  1,  9, LOTUS_TOWN, 1
	warp_event  2,  9, LOTUS_TOWN, 1
	warp_event  1,  1, RIVALS_HOUSE, 4
	warp_event 26,  3, RIVALS_HOUSE, 3

	def_coord_events

	def_bg_events
	bg_event 13,  3, BGEVENT_READ, RivalsHouseWardrobe
	bg_event 20,  5, BGEVENT_READ, RivalsHousePC

	def_object_events
	object_event  8,  6, SPRITE_POKEFAN_M, SPRITEMOVEDATA_STANDING_DOWN, 0, 1, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, RivalsDad, -1
	object_event 11,  7, SPRITE_POKEFAN_F, SPRITEMOVEDATA_STANDING_LEFT, 0, 1, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_SCRIPT, 0, RivalsMom, -1
	object_event 11,  3, SPRITE_LITTLE_BOY, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, RivalsBrother, -1
