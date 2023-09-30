	object_const_def
	const ROADA03_YOUNGSTER
	const ROADA03_BUG_CATCHER

RoadA03_MapScripts:
	def_scene_scripts

	def_callbacks

TrainerYoungsterBilly:
	trainer YOUNGSTER, BILLY, EVENT_BEAT_YOUNGSTER_BILLY, YoungsterBillySeenText, YoungsterBillyBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext YoungsterBillyAfterText
	waitbutton
	closetext
	end

TrainerBugCatcherJacob:
	trainer BUG_CATCHER, JACOB, EVENT_BEAT_BUG_CATCHER_JACOB, BugCatcherJacobSeenText, BugCatcherJacobBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext BugCatcherJacobAfterText
	waitbutton
	closetext
	end

RoadA03Sign:
	jumptext RoadA03SignText

RoadA03TrainerTipsSign:
	jumptext RoadA03TrainerTipsSignText

HollowedCavernSign:
	jumptext HollowedCavernSignText

RoadA03HiddenPotion:
	hiddenitem POTION, EVENT_ROAD_A03_HIDDEN_POTION

YoungsterBillySeenText:
	text "My HOOTHOOT will"
	line "sweep your team"
	cont "in a breeze!"
	done

YoungsterBillyBeatenText:
	text "We crashed down"
	line "hard on this one…"
	done

YoungsterBillyAfterText:
	text "There's a cave"
	line "close by that you"
	cont "should check out."

	para "A rare #MON"
	line "species is said to"
	cont "live there, among"
	cont "the many ZUBAT."

	para "That may help with"
	line "defeating MAGNOLIA"
	cont "CITY's GYM LEADER."

	para "I want to find"
	line "that #MON!"
	done

BugCatcherJacobSeenText:
	text "The #MON I"
	line "caught with my net"
	cont "are pretty strong."

	para "Let's see how they"
	line "do against you!"
	done

BugCatcherJacobBeatenText:
	text "Ah! My net got…"
	line "stuck!"
	done

BugCatcherJacobAfterText:
	text "A net's handy when"
	line "wanting to catch"
	cont "specific #MON."

	para "You should try it!"
	done

RoadA03SignText:
	text "ROAD A03"
	done

RoadA03TrainerTipsSignText:
	text "TRAINER TIPS"

	para "Press SELECT to"
	line "re-arrange items"
	cont "in your BAG."
	done

HollowedCavernSignText:
	text "HOLLOWED CAVERN"
	done

RoadA03_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event 21,  5, HOLLOWED_CAVERN, 1

	def_coord_events

	def_bg_events
	bg_event 26, 26, BGEVENT_READ, RoadA03Sign
	bg_event 17, 21, BGEVENT_READ, RoadA03TrainerTipsSign
	bg_event 18,  6, BGEVENT_READ, HollowedCavernSign
	bg_event 19,  6, BGEVENT_READ, HollowedCavernSign
	bg_event 23, 17, BGEVENT_ITEM, RoadA03HiddenPotion

	def_object_events
	object_event 25, 26, SPRITE_YOUNGSTER, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_TRAINER, 4, TrainerYoungsterBilly, -1
	object_event 11, 12, SPRITE_BUG_CATCHER, SPRITEMOVEDATA_SPINRANDOM_SLOW, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_TRAINER, 3, TrainerBugCatcherJacob, -1
