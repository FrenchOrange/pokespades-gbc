	object_const_def
	const TRAINERSCHOOL_GENTLEMAN
	const TRAINERSCHOOL_YOUNGSTER
	const TRAINERSCHOOL_COOLTRAINER_M
	const TRAINERSCHOOL_LASS
	const TRAINERSCHOOL_SUPER_NERD

TrainerSchool_MapScripts:
	def_scene_scripts

	def_callbacks

TrainerSchoolGentlemanScript:
	readvar VAR_XCOORD
	ifequal 4, .GentlemanScriptLeft
.GentlemanScriptRight
	checkevent EVENT_GOT_QUICK_CLAW_FROM_TRAINER_SCHOOL
	iftrue .GotQuickClaw
	applymovement TRAINERSCHOOL_GENTLEMAN, SchoolGentlemanMovementFromRight1
	pause 15
	applymovement TRAINERSCHOOL_GENTLEMAN, SchoolGentlemanMovementFromRight2
	pause 15
	applymovement TRAINERSCHOOL_GENTLEMAN, SchoolGentlemanMovementFromRight3
	pause 15
	applymovement TRAINERSCHOOL_GENTLEMAN, SchoolGentlemanMovementFromRight4
	faceplayer
	opentext
	writetext SchoolGentlemanIntroText
	promptbutton
	verbosegiveitem QUICK_CLAW
	iffalse .NoRoom
	setevent EVENT_GOT_QUICK_CLAW_FROM_TRAINER_SCHOOL
	closetext
	end

.GentlemanScriptLeft:
	checkevent EVENT_GOT_QUICK_CLAW_FROM_TRAINER_SCHOOL
	iftrue .GotQuickClaw
	applymovement TRAINERSCHOOL_GENTLEMAN, SchoolGentlemanMovementFromLeft1
	pause 15
	applymovement TRAINERSCHOOL_GENTLEMAN, SchoolGentlemanMovementFromRight2
	pause 15
	applymovement TRAINERSCHOOL_GENTLEMAN, SchoolGentlemanMovementFromRight3
	pause 15
	applymovement TRAINERSCHOOL_GENTLEMAN, SchoolGentlemanMovementFromLeft2
	faceplayer
	opentext
	writetext SchoolGentlemanIntroText
	promptbutton
	verbosegiveitem QUICK_CLAW
	iffalse .NoRoom
	setevent EVENT_GOT_QUICK_CLAW_FROM_TRAINER_SCHOOL
	closetext
	end

.GotQuickClaw:
	faceplayer
	opentext
	writetext SchoolGentlemanAfterQuickClawText
	waitbutton
.NoRoom:
	turnobject TRAINERSCHOOL_GENTLEMAN, DOWN
	closetext
	end

TrainerSchoolYoungsterScript:
	jumptextfaceplayer TrainerSchoolYoungsterText

TrainerSchoolCooltrainerMScript:
	jumptextfaceplayer TrainerSchoolCooltrainerMText

TrainerSchoolLassScript:
	jumptextfaceplayer TrainerSchoolLassText

TrainerSchoolSuperNerdScript:
	jumptextfaceplayer TrainerSchoolSuperNerdText

SchoolLocker:
	jumptextfaceplayer SchoolLockerText

SchoolHiddenPokeBall:
	hiddenitem POKE_BALL, EVENT_TRAINER_SCHOOL_POKE_BALL

SchoolBlackboard:
	opentext
	writetext SchoolBlackboardText
.Loop:
	loadmenu .BlackboardMenuHeader
	_2dmenu
	closewindow
	ifequal 1, .Poison
	ifequal 2, .Paralysis
	ifequal 3, .Sleep
	ifequal 4, .Burn
	ifequal 5, .Freeze
	closetext
	end

.Poison:
	writetext SchoolPoisonText
	waitbutton
	sjump .Loop

.Paralysis:
	writetext SchoolParalysisText
	waitbutton
	sjump .Loop

.Sleep:
	writetext SchoolSleepText
	waitbutton
	sjump .Loop

.Burn:
	writetext SchoolBurnText
	waitbutton
	sjump .Loop

.Freeze:
	writetext SchoolFreezeText
	waitbutton
	sjump .Loop

.BlackboardMenuHeader:
	db MENU_BACKUP_TILES ; flags
	menu_coords 0, 0, 11, 8
	dw .MenuData
	db 1 ; default option

.MenuData:
	db STATICMENU_CURSOR ; flags
	dn 3, 2 ; rows, columns
	db 5 ; spacing
	dba .Text
	dbw BANK(@), NULL

.Text:
	db "PSN@"
	db "PAR@"
	db "SLP@"
	db "BRN@"
	db "FRZ@"
	db "QUIT@"

SchoolGentlemanMovementFromLeft1:
	step RIGHT
	step RIGHT
	step DOWN
	step DOWN
	step LEFT
	step LEFT
	turn_head DOWN
	step_end

SchoolGentlemanMovementFromLeft2:
	step UP
	step RIGHT
	step UP
	step UP
	step LEFT
	step LEFT
	step_end

SchoolGentlemanMovementFromRight1:
	step LEFT
	step DOWN
	step DOWN
	step RIGHT
	turn_head DOWN
	step_end

SchoolGentlemanMovementFromRight2:
	step DOWN
	turn_head LEFT
	step_end

SchoolGentlemanMovementFromRight3:
	step RIGHT
	step_end

SchoolGentlemanMovementFromRight4:
	step UP
	step LEFT
	step LEFT
	step UP
	step UP
	step RIGHT
	step_end

SchoolGentlemanIntroText:
	text "Students who don't"
	line "study get a taste"
	cont "of my QUICK CLAW."

	para "Whether or not you"
	line "are a good student"
	cont "will be evident"

	para "from the way you"
	line "used this item."
	done

SchoolGentlemanAfterQuickClawText:
	text "A #MON holding"
	line "a QUICK CLAW will"
	cont "occasionally speed"

	para "up and get to move"
	line "before its enemy."

	para "There are many"
	line "other items that"
	cont "are meant to be"
	cont "held by POKéMON."

	para "Just those alone"
	line "will give you many"
	cont "topics to study!"
	done

TrainerSchoolYoungsterText:
	text "I just want to"
	line "play with my"
	cont "#MON."
	done

TrainerSchoolCooltrainerMText:
	text "#MON can hold"
	line "items, but they"
	cont "don't know what to"

	para "do with man-made"
	line "items like POTIONS"
	cont "and ANTIDOTES."
	done

TrainerSchoolLassText:
	text "You know how some"
	line "#MON moves can"
	cont "confuse a #MON?"

	para "A confused #MON"
	line "will attack itself"
	cont "without meaning to"
	cont "sometimes."

	para "But once it leaves"
	line "battle, it will"
	cont "return to normal."
	done

TrainerSchoolSuperNerdText:
	text "Right now I'm"
	line "stalling my time"
	cont "at my locker. So"
	cont "far it's working!"
	done

SchoolBlackboardText:
	text "The blackboard"
	line "lists #MON"

	para "status changes in"
	line "battle."

	para "Which topic do you"
	line "want to read?"
	done

SchoolPoisonText:
	text "If a POKéMON is"
	line "poisoned, it will"
	cont "steadily lose HP."

	para "The effects of"
	line "poison remain"
	cont "after a battle."

	para "While traveling, a"
	line "poisoned POKéMON's"
	cont "HP will drop."

	para "Heal a poisoning"
	line "using an ANTIDOTE."
	done

SchoolParalysisText:
	text "If a POKéMON gets"
	line "paralyzed, its"
	cont "SPEED drops."

	para "It may also not be"
	line "able to move while"
	cont "it is in battle."

	para "Paralysis remains"
	line "after battle."

	para "Cure it using a"
	line "PARLYZ HEAL."
	done

SchoolSleepText:
	text "If a POKéMON falls"
	line "asleep, it will be"
	cont "unable to attack."

	para "A POKéMON may wake"
	line "up on its own, but"
	cont "a sleeping #MON"

	para "doesn't wake up"
	line "after battle."

	para "Wake it up with"
	line "an AWAKENING."
	done

SchoolBurnText:
	text "A burn steadily"
	line "consumes HP, and"
	cont "it also reduces"
	cont "attack power."

	para "A burn lingers"
	line "after battle."

	para "Cure a burn using"
	line "a BURN HEAL."
	done

SchoolFreezeText:
	text "If a #MON is"
	line "frozen, it can't"
	cont "do a thing."

	para "It remains frozen"
	line "after a battle."

	para "Thaw it out using"
	line "an ICE HEAL."
	done

SchoolLockerText:
	text "A student locker"
	line "stuffed with all"
	cont "sorts of learning"

	para "materials about"
	line "#MON."
	done

TrainerSchool_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  5, 11, ROAD_A04, 3
	warp_event  6, 11, ROAD_A04, 4

	def_coord_events

	def_bg_events
	bg_event  5,  1, BGEVENT_READ, SchoolBlackboard
	bg_event  6,  1, BGEVENT_READ, SchoolBlackboard
	bg_event  0,  9, BGEVENT_READ, SchoolLocker
	bg_event  1,  9, BGEVENT_ITEM, SchoolHiddenPokeBall
	bg_event  2,  9, BGEVENT_READ, SchoolLocker
	bg_event  3,  9, BGEVENT_READ, SchoolLocker
	bg_event  4,  9, BGEVENT_READ, SchoolLocker
	bg_event  7,  9, BGEVENT_READ, SchoolLocker
	bg_event  8,  9, BGEVENT_READ, SchoolLocker
	bg_event  9,  9, BGEVENT_READ, SchoolLocker
	bg_event 11,  9, BGEVENT_READ, SchoolLocker

	def_object_events
	object_event  5,  2, SPRITE_GENTLEMAN, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, TrainerSchoolGentlemanScript, -1
	object_event  3,  7, SPRITE_YOUNGSTER, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, TrainerSchoolYoungsterScript, -1
	object_event  2,  4, SPRITE_COOLTRAINER_M, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, TrainerSchoolCooltrainerMScript, -1
	object_event  9,  4, SPRITE_LASS, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, TrainerSchoolLassScript, -1
	object_event 10, 10, SPRITE_SUPER_NERD, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_SCRIPT, 0, TrainerSchoolSuperNerdScript, -1
