	object_const_def
	const ROUTE15_YOUNGSTER1
	const ROUTE15_YOUNGSTER2
	const ROUTE15_YOUNGSTER3
	const ROUTE15_YOUNGSTER4
	const ROUTE15_TEACHER1
	const ROUTE15_TEACHER2
	const ROUTE15_POKE_BALL

Route15_MapScripts:
	def_scene_scripts

	def_callbacks

TrainerSchoolboyKipp:
	trainer SCHOOLBOY, KIPP, EVENT_BEAT_SCHOOLBOY_KIP, SchoolboyKippSeenText, SchoolboyKippBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext SchoolboyKippAfterBattleText
	waitbutton
	closetext
	end

TrainerSchoolboyTommy:
	trainer SCHOOLBOY, TOMMY, EVENT_BEAT_SCHOOLBOY_TOMMY, SchoolboyTommySeenText, SchoolboyTommyBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext SchoolboyTommyAfterBattleText
	waitbutton
	closetext
	end

TrainerSchoolboyJohnny:
	trainer SCHOOLBOY, JOHNNY, EVENT_BEAT_SCHOOLBOY_JOHNNY, SchoolboyJohnnySeenText, SchoolboyJohnnyBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext SchoolboyJohnnyAfterBattleText
	waitbutton
	closetext
	end

TrainerSchoolboyBilly:
	trainer SCHOOLBOY, BILLIAM, EVENT_BEAT_SCHOOLBOY_BILLY, SchoolboyBillySeenText, SchoolboyBillyBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext SchoolboyBillyAfterBattleText
	waitbutton
	closetext
	end

Route15Sign:
	jumptext Route15SignText

Route15PPUp:
	itemball PP_UP

SchoolboyKippSeenText:
	text "Hang on. I have to"
	line "phone my mom."
	done

SchoolboyKippBeatenText:
	text "Sorry, Mom!"
	line "I was beaten!"
	done

SchoolboyKippAfterBattleText:
	text "My mom worries so"
	line "much about me, I"

	para "have to phone her"
	line "all the time."
	done

SchoolboyTommySeenText:
	text "Let's battle."
	line "I won't lose!"
	done

SchoolboyTommyBeatenText:
	text "I forgot to do my"
	line "homework!"
	done

SchoolboyTommyAfterBattleText:
	text "Sayonara! I just"
	line "learned that in my"
	cont "Japanese class."
	done

SchoolboyJohnnySeenText:
	text "We're on a field"
	line "trip to LAVENDER"

	para "RADIO TOWER for"
	line "social studies."
	done

SchoolboyJohnnyBeatenText:
	text "You're wickedly"
	line "tough!"
	done

SchoolboyJohnnyAfterBattleText:
	text "I'm tired of walk-"
	line "ing. I need to"
	cont "take a break."
	done

SchoolboyBillySeenText:
	text "My favorite class"
	line "is gym!"
	done

SchoolboyBillyBeatenText:
	text "Oh, no!"
	line "How could I lose?"
	done

SchoolboyBillyAfterBattleText:
	text "If #MON were a"
	line "subject at school,"
	cont "I'd be the best!"
	done

Route15SignText:
	text "ROUTE 15"

	para "FUCHSIA CITY -"
	line "LAVENDER TOWN"
	done

Route15_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  2,  4, ROUTE_15_FUCHSIA_GATE, 3
	warp_event  2,  5, ROUTE_15_FUCHSIA_GATE, 4

	def_coord_events

	def_bg_events
	bg_event 19,  9, BGEVENT_READ, Route15Sign

	def_object_events
	object_event 10, 10, SPRITE_YOUNGSTER, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_TRAINER, 4, TrainerSchoolboyKipp, -1
	object_event 15, 13, SPRITE_YOUNGSTER, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_TRAINER, 3, TrainerSchoolboyTommy, -1
	object_event 33, 10, SPRITE_YOUNGSTER, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_TRAINER, 3, TrainerSchoolboyJohnny, -1
	object_event 27, 10, SPRITE_YOUNGSTER, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_TRAINER, 3, TrainerSchoolboyBilly, -1
	object_event 12,  5, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, Route15PPUp, EVENT_ROUTE_15_PP_UP
