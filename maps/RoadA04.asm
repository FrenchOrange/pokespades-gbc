	object_const_def
	const ROADA04_POKE_BALL
	const ROADA04_LASS
	const ROADA04_LADY
	const ROADA04_TWIN1
	const ROADA04_TWIN2
	const ROADA04_YOUNGSTER1
	const ROADA04_YOUNGSTER2
	const ROADA04_MONSTER1
	const ROADA04_MONSTER2
	const ROADA04_LITTLE_BOY
	const ROADA04_GRANNY

RoadA04_MapScripts:
	def_scene_scripts

	def_callbacks

TrainerLassSophia:
	trainer LASS, SOPHIA, EVENT_BEAT_LASS_SOPHIA, LassSophiaSeenText, LassSophiaBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext LassSophiaAfterText
	waitbutton
	closetext
	end

TrainerLadyStacy:
	trainer LADY, STACY, EVENT_BEAT_LADY_STACY, LadyStacySeenText, LadyStacyBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext LadyStacyAfterText
	waitbutton
	closetext
	end

TrainerTwinsAprilandMay1:
	trainer TWINS, APRILANDMAY1, EVENT_BEAT_TWINS_APRIL_AND_MAY, TwinsAprilandMay1SeenText, TwinsAprilandMay1BeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext TwinsAprilandMay1AfterBattleText
	waitbutton
	closetext
	end

TrainerTwinsAprilandMay2:
	trainer TWINS, APRILANDMAY2, EVENT_BEAT_TWINS_APRIL_AND_MAY, TwinsAprilandMay2SeenText, TwinsAprilandMay2BeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext TwinsAprilandMay2AfterBattleText
	waitbutton
	closetext
	end

RoadA04YoungsterBattle1:
	opentext
	writetext RoadA04Youngster1Text
	waitbutton
	closetext
	end

RoadA04YoungsterBattle2:
	faceplayer
	opentext
	writetext RoadA04Youngster2Text
	waitbutton
	closetext
	turnobject ROADA04_YOUNGSTER2, LEFT
	end

RoadA04MonsterBattle1:
	opentext
	writetext RoadA04Monster1Text
	cry RATTATA
	waitbutton
	closetext
	end

RoadA04MonsterBattle2:
	opentext
	writetext RoadA04Monster2Text
	cry HOOTHOOT
	waitbutton
	closetext
	end

RoadA04LittleBoyScript:
	faceplayer
	opentext
	writetext RoadA04LittleBoyText
	waitbutton
	closetext
	end

RoadA04GrannyScript:
	faceplayer
	opentext
	writetext RoadA04GrannyText
	waitbutton
	closetext
	end

RoadA04ParlyzHeal:
	itemball PARLYZ_HEAL

RoadA04Sign:
	jumptext RoadA04SignText

RoadA04TrainerTipsSign:
	jumptext RoadA04TrainerTipsSignText

RoadA04HiddenGreatBall:
	hiddenitem POKE_BALL, EVENT_ROAD_A04_HIDDEN_POKE_BALL

LassSophiaSeenText:
	text "You got through"
	line "the forest?"
	done

LassSophiaBeatenText:
	text "No way!"
	done

LassSophiaAfterText:
	text "My #MON were"
	line "just tired after"
	cont "our trek through"
	cont "the woods."
	done

LadyStacySeenText:
	text "Our eyes met on"
	line "this fateful day."

	para "May we follow this"
	line "with a battle?"
	done

LadyStacyBeatenText:
	text "Stunning display!"
	done

LadyStacyAfterText:
	text "Will you be taking"
	line "on the MAGNOLIA"
	cont "CITY GYM?"
	done

TwinsAprilandMay1SeenText:
	text "APRIL: As TWINS,"
	line "we fight with two"
	cont "#MON!"
	done

TwinsAprilandMay1BeatenText:
	text "APRIL: You were"
	line "too good for us."
	done

TwinsAprilandMay1AfterBattleText:
	text "APRIL: We'll make"
	line "sure to train more"

	para "so we can be as"
	line "good as you are."
	done

TwinsAprilandMay2SeenText:
	text "MAY: We are two of"
	line "the same mind!"
	para "Can you handle us?"
	done

TwinsAprilandMay2BeatenText:
	text "MAY: We still were"
	line "not strong enough."
	done

TwinsAprilandMay2AfterBattleText:
	text "Would you ever"
	line "pair with someone"
	cont "for a battle?"
	para "It's fun!"
	done

RoadA04Youngster1Text:
	text "Yeah! Go RATTATA!"
	done

RoadA04Youngster2Text:
	text "Don't bother me"
	line "during my match!"
	done

RoadA04Monster1Text:
	text "Ratta!"
	done

RoadA04Monster2Text:
	text "Hoot hoot!"
	done

RoadA04LittleBoyText:
	text "Sometimes you can"
	line "find items buried"
	cont "under the sand."

	para "I'm trying to find"
	line "a REVIVE."
	done

RoadA04GrannyText:
	text "It's always a"
	line "pleasure to see"
	cont "today's youth"

	para "travel down to the"
	line "school from the"
	cont "train station."
	done

RoadA04SignText:
	text "ROAD A04"
	done

RoadA04TrainerTipsSignText:
	text "TRAINER TIPS"

	para "A wild #MON"
	line "affected by a"
	cont "status condition"
	para "will become easier"
	line "to catch."

	para "STUN SPORE and"
	line "SLEEP POWDER are"
	cont "perfect for those"
	para "trying to fill out"
	line "their #DEX."
	done

RoadA04_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event 10, 27, SERENITY_FOREST, 1
	warp_event 11, 27, SERENITY_FOREST, 2
	warp_event 48,  9, TRAINER_SCHOOL, 1
	warp_event 49,  9, TRAINER_SCHOOL, 2
	warp_event 14,  3, ROAD_A04_MAGNOLIA_GATE, 1
	warp_event 15,  3, ROAD_A04_MAGNOLIA_GATE, 2

	def_coord_events

	def_bg_events
	bg_event 11, 19, BGEVENT_READ, RoadA04Sign
	bg_event 38, 24, BGEVENT_READ, RoadA04TrainerTipsSign
	bg_event 66, 10, BGEVENT_ITEM, RoadA04HiddenGreatBall

	def_object_events
	object_event  3, 16, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, RoadA04ParlyzHeal, EVENT_ROAD_A04_PARALYZHEAL
	object_event 15, 21, SPRITE_LASS, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, 0, OBJECTTYPE_TRAINER, 3, TrainerLassSophia, -1
	object_event 29, 18, SPRITE_TEACHER, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_PINK, OBJECTTYPE_TRAINER, 3, TrainerLadyStacy, -1
	object_event 36, 29, SPRITE_TWIN, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, PAL_NPC_PINK, OBJECTTYPE_TRAINER, 4, TrainerTwinsAprilandMay1, -1
	object_event 37, 29, SPRITE_TWIN, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, PAL_NPC_PINK, OBJECTTYPE_TRAINER, 4, TrainerTwinsAprilandMay2, -1
	object_event 46, 21, SPRITE_YOUNGSTER, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, RoadA04YoungsterBattle1, -1
	object_event 51, 21, SPRITE_YOUNGSTER, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, RoadA04YoungsterBattle2, -1
	object_event 47, 21, SPRITE_RATTATA, SPRITEMOVEDATA_POKEMON, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, RoadA04MonsterBattle1, -1
	object_event 50, 21, SPRITE_HOOTHOOT, SPRITEMOVEDATA_POKEMON, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, RoadA04MonsterBattle2, -1
	object_event 64,  9, SPRITE_LITTLE_BOY, SPRITEMOVEDATA_WANDER, 1, 1, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, RoadA04LittleBoyScript, -1
	object_event 26, 12, SPRITE_GRANNY, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_PINK, OBJECTTYPE_SCRIPT, 0, RoadA04GrannyScript, -1
