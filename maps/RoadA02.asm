	object_const_def
	const ROADA02_YOUNGSTER1
	const ROADA02_BUG_CATCHER
	const ROADA02_YOUNGSTER2
	const ROADA02_COOLTRAINER_F
	const ROADA02_FRUIT_TREE1
	const ROADA02_FRUIT_TREE2

RoadA02_MapScripts:
	def_scene_scripts

	def_callbacks

TrainerYoungsterJason:
	trainer YOUNGSTER, JASON, EVENT_BEAT_YOUNGSTER_JASON, YoungsterJasonSeenText, YoungsterJasonBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext YoungsterJasonAfterText
	waitbutton
	closetext
	end

TrainerLassRamona:
	trainer LASS, RAMONA, EVENT_BEAT_LASS_RAMONA, LassRamonaSeenText, LassRamonaBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext LassRamonaAfterText
	waitbutton
	closetext
	end

TrainerBugCatcherTim:
	trainer BUG_CATCHER, TIM, EVENT_BEAT_BUG_CATCHER_TIM, BugCatcherTimSeenText, BugCatcherTimBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext BugCatcherTimAfterText
	waitbutton
	closetext
	end

RoadA02YoungsterScript:
	jumptextfaceplayer RoadA02YoungsterText

RoadA02Sign:
	jumptext RoadA02SignText

SerenityForestSign:
	jumptext SerenityForestSignText

RoadA02TrainerTips:
	jumptext RoadA02TrainerTipsText

RoadA02FruitTree1:
	fruittree FRUITTREE_ROAD_A02_1

RoadA02FruitTree2:
	fruittree FRUITTREE_ROAD_A02_2

RoadA02HiddenAntidote:
	hiddenitem ANTIDOTE, EVENT_ROAD_A02_HIDDEN_ANTIDOTE

RoadA02HiddenPokeBall:
	hiddenitem POKE_BALL, EVENT_ROAD_A02_HIDDEN_POKE_BALL

YoungsterJasonSeenText:
	text "Those POKé BALLS"
	line "on your belt…"

	para "It's time to test"
	line "your skill. Let's"
	cont "fight!"
	done

YoungsterJasonBeatenText:
	text "Guess I should"
	line "train some more."
	done

YoungsterJasonAfterText:
	text "Hey look, you're"
	line "pretty good so I'll"
	cont "tell you a trick."

	para "When low on HP,"
	line "take your time to"
	cont "avoid any nearby"
	cont "TRAINERS."

	para "Running in blind"
	line "is a good way to"
	cont "get spotted."
	done

LassRamonaSeenText:
	text "I may look weak"
	line "and frail, but my"
	cont "#MON aren't!"
	done

LassRamonaBeatenText:
	text "Maybe I have more"
	line "practice to do."
	done

LassRamonaAfterText:
	text "Hey, turns out "
	line "you're pretty good."

	para "We should play"
	line "again sometime."
	done

BugCatcherTimSeenText:
	text "To enter this"
	line "forest you must"
	cont "pass through me!"
	done

BugCatcherTimBeatenText:
	text "Okay okay! You can"
	line "enter now."
	done

BugCatcherTimAfterText:
	text "I'll make sure to"
	line "grow stronger."

	para "Then we will see"
	line "who beat who."
	done

RoadA02YoungsterText:
	text "Those BERRIES sure"
	line "look delicious."

	para "But I'm saving them"
	line "for my #MON."

	para "They have special"
	line "properties that"
	cont "help in battle."
	done

RoadA02SignText:
	text "ROAD A02"
	done

SerenityForestSignText:
	text "SERENITY FOREST"
	done

RoadA02TrainerTipsText:
	text "TRAINER TIPS"

	para "Don't forget to"
	line "chat with people"
	cont "on your journey!"

	para "The world is vast"
	line "and filled with"
	cont "knowledge."
	done

RoadA02_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event 24,  0, SERENITY_FOREST, 3
	warp_event 25,  0, SERENITY_FOREST, 4

	def_coord_events

	def_bg_events
	bg_event  6, 11, BGEVENT_READ, RoadA02Sign
	bg_event 26,  4, BGEVENT_READ, SerenityForestSign
	bg_event 27,  4, BGEVENT_READ, SerenityForestSign
	bg_event 35, 19, BGEVENT_READ, RoadA02TrainerTips
	bg_event 24, 27, BGEVENT_ITEM, RoadA02HiddenAntidote
	bg_event 13,  8, BGEVENT_ITEM, RoadA02HiddenPokeBall

	def_object_events
	object_event 26, 21, SPRITE_YOUNGSTER, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_TRAINER, 4, TrainerYoungsterJason, -1
	object_event 22, 4, SPRITE_BUG_CATCHER, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_TRAINER, 3, TrainerBugCatcherTim, -1
	object_event 16, 14, SPRITE_YOUNGSTER, SPRITEMOVEDATA_WANDER, 1, 1, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, RoadA02YoungsterScript, -1
	object_event 36, 17, SPRITE_LASS, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, 0, OBJECTTYPE_TRAINER, 3, TrainerLassRamona, -1
	object_event 19, 14, SPRITE_FRUIT_TREE, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, RoadA02FruitTree1, -1
	object_event 20, 14, SPRITE_FRUIT_TREE, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, RoadA02FruitTree2, -1
