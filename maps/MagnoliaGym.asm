	object_const_def
	const MAGNOLIAGYM_GEO
	const MAGNOLIAGYM_YOUNGSTER
	const MAGNOLIAGYM_GYM_GUIDE

MagnoliaGym_MapScripts:
	def_scene_scripts

	def_callbacks

MagnoliaGymGeoScript:
	faceplayer
	opentext
	checkevent EVENT_BEAT_GEO
	iftrue .FightDone
	writetext GeoIntroText
	waitbutton
	closetext
	winlosstext GeoWinLossText, 0
	loadtrainer GEO, GEO1
	startbattle
	reloadmapafterbattle
	setevent EVENT_BEAT_GEO
	opentext
	writetext ReceivedTemperBadgeText
	playsound SFX_GET_BADGE
	waitsfx
	setflag ENGINE_ZEPHYRBADGE
	readvar VAR_BADGES
.FightDone:
	checkevent EVENT_GOT_TM47_STEEL_WING
	iftrue .SpeechAfterTM
	setevent EVENT_BEAT_BIRD_KEEPER_ABE
;	setevent EVENT_OFFICERS_IN_MAGNOLIA
	writetext GeoTemperBadgeText
	promptbutton
	verbosegiveitem TM_STEEL_WING
	iffalse .NoRoomForSteelWing
	setevent EVENT_GOT_TM47_STEEL_WING
	writetext GeoTMSteelWingText
	waitbutton
	closetext
	end

.SpeechAfterTM:
	writetext GeoFightDoneText
	waitbutton
.NoRoomForSteelWing:
	closetext
	end

TrainerYoungsterTony:
	trainer YOUNGSTER, TONY, EVENT_BEAT_YOUNGSTER_TONY, YoungsterTonySeenText, YoungsterTonyBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext YoungsterTonyAfterBattleText
	waitbutton
	closetext
	end

MagnoliaGymGuideScript:
	faceplayer
	opentext
	checkevent EVENT_BEAT_GEO
	iftrue .MagnoliaGymGuideWinScript
	writetext MagnoliaGymGuideText
	waitbutton
	closetext
	end

.MagnoliaGymGuideWinScript:
	writetext MagnoliaGymGuideWinText
	waitbutton
	closetext
	end

MagnoliaGymStatue:
	checkflag ENGINE_ZEPHYRBADGE
	iftrue .Beaten
	jumpstd GymStatue1Script
.Beaten:
	gettrainername STRING_BUFFER_4, GEO, GEO1
	jumpstd GymStatue2Script

GeoIntroText:
	text "Welcome!"
	line "I, GEO, am the"
	cont "#MON GYM LEADER"
	cont "of MAGNOLIA CITY."

	para "The newly reopened"
	line "#MON LEAGUE has"
	cont "deemed me worthy"

	para "of being among the"
	line "eight who a judge"
	cont "a TRAINER's skill."

	para "TRAINERS that dare"
	line "to accept the"
	cont "LEAGUE's challenge."

	para "While I may be new"
	line "I am no pushover."

	para "So please, show me"
	line "your best in this"
	cont "fight!"
	done

GeoWinLossText:
	text "Amazing display!"
	line "I of course have"
	cont "lost, so as your"

	para "reward I present"
	line "you this official"

	para "#MON LEAGUE"
	line "TEMPERBADGE."
	done

ReceivedTemperBadgeText:
	text "<PLAYER> received"
	line "TEMPERBADGE."
	done

GeoTemperBadgeText:
	text "The TEMPERBADGE"
	line "fuels your #MON"
	cont "with more strength"

	para "so please hold on"
	line "to it."

	para "As another prize"
	line "I am to give this"
	cont "as well."
	done

GeoTMSteelWingText:
	text "TM47 contains"
	line "STEEL WING."

	para "Not only is it a"
	line "powerful wing"
	cont "attack, but it can"

	para "raise the user's"
	line "DEFENSE too."

	para "Make sure to be"
	line "wise with it, as"
	cont "you will lose it"
	cont "after one use!"
	done

GeoFightDoneText:
	text "In this world are"
	line "many challengers"
	cont "much stronger than"

	para "what you witnessed"
	line "today."

	para "With enough grit"
	line "and drive I'm sure"
	cont "you will do just"

	para "fine in the sea of"
	line "#MON TRAINERS"
	cont "out there."

	para "Best of luck!"
	done

YoungsterTonySeenText:
	text "Lucky you to have"
	line "reached this GYM."

	para "But you meet your"
	line "end right here!"
	done

YoungsterTonyBeatenText:
	text "Maybe it wasn't"
	line "luck after all."
	done

YoungsterTonyAfterBattleText:
	text "You may have,"
	line "beaten me, but are"
	cont "you sure you can"
	cont "take on GEO?"
	done

MagnoliaGymGuideText:
	text"DANPEI: Oi there,"
	line "TRAINER."

	cont "You seem to be new"
	line "but you must know"
	para "what you're in for."

	para "Look, I can see in"
	line "your eyes the"
	cont "burning passion of"
	cont "a #MON TRAINER."

	para "So I will help you"
	line "here, okay? Good."

	para "The GYM LEADER,"
	line "GEO, is a STEEL"
	cont "type #MON user."

	para "The STEEL-type is"
	line "very sharp, but it"
	cont "can't withstand"

	para "FIRE and GROUND-"
	line "type at all."

	para "Now, if you were"
	line "to ever beat the"
	cont "GYM LEADER, come"
	cont "see me afterward."

	para "Best of luck!"
	done

MagnoliaGymGuideWinText:
	text "Amazing victory!"
	line "Good job kid."

	para "Check your TRAINER"
	line "CARD."

	para "Your BADGE should"
	line "be recorded now."

	para "This marks the"
	line "first step in"
	cont "becoming a #MON"
	cont "CHAMPION!"
	done

MagnoliaGym_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  6, 17, MAGNOLIA_CITY, 2
	warp_event  7, 17, MAGNOLIA_CITY, 10

	def_coord_events

	def_bg_events
	bg_event  5, 15, BGEVENT_READ, MagnoliaGymStatue
	bg_event  8, 15, BGEVENT_READ, MagnoliaGymStatue

	def_object_events
	object_event  6,  3, SPRITE_FALKNER, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, MagnoliaGymGeoScript, -1
	object_event  5, 10, SPRITE_YOUNGSTER, SPRITEMOVEDATA_STANDING_RIGHT, 2, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_TRAINER, 3, TrainerYoungsterTony, -1
	object_event  6, 15, SPRITE_GYM_GUIDE, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, MagnoliaGymGuideScript, -1
