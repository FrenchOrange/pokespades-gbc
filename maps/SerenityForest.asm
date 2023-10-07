	object_const_def
	const SERENITYFOREST_SUPER_NERD1
	const SERENITYFOREST_SUPER_NERD2
	const SERENITYFOREST_BUG_CATCHER1
	const SERENITYFOREST_BUG_CATCHER2
	const SERENITYFOREST_BUG_CATCHER3
	const SERENITYFOREST_YOUNGSTER1
	const SERENITYFOREST_YOUNGSTER2
	const SERENITYFOREST_POKE_BALL1
	const SERENITYFOREST_POKE_BALL2
	const SERENITYFOREST_POKE_BALL3
	const SERENITYFOREST_POKE_BALL4

SerenityForest_MapScripts:
	def_scene_scripts

	def_callbacks
	callback MAPCALLBACK_TILES, OutOfBoundsBlockCallback

OutOfBoundsBlockCallback:
	changeblock 10, -2, $02
	changeblock 10, -4, $02
	changeblock 34, 60, $02
	changeblock 34, 62, $02
	endcallback

SerenityForestSuperNerd1Script:
	jumptextfaceplayer Text_SerenityForestSuperNerd1

SerenityForestSuperNerd2Script:
	jumptextfaceplayer Text_SerenityForestSuperNerd2

TrainerBugCatcherWayne:
	trainer BUG_CATCHER, PETER, EVENT_BEAT_BUG_CATCHER_PETER, BugCatcherWayneSeenText, BugCatcherWayneBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext BugCatcherWayneAfterBattleText
	waitbutton
	closetext
	end

TrainerBugCatcherAl:
	trainer BUG_CATCHER, NATHAN, EVENT_BEAT_BUG_CATCHER_NATHAN, BugCatcherAlSeenText, BugCatcherAlBeatenText, 0, .AfterScript

.AfterScript:
	endifjustbattled
	opentext
	writetext BugCatcherAlAfterBattleText
	waitbutton
	closetext
	end

TrainerBugCatcherJosh:
	trainer BUG_CATCHER, REEVE, EVENT_BEAT_BUG_CATCHER_REEVE, BugCatcherJoshSeenText, BugCatcherJoshBeatenText, 0, .AfterScript

.AfterScript:
	endifjustbattled
	opentext
	writetext BugCatcherJoshAfterBattleText
	waitbutton
	closetext
	end

TrainerYoungsterMatt:
	trainer YOUNGSTER, MATT, EVENT_BEAT_YOUNGSTER_MATT, YoungsterMattSeenText, YoungsterMattBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext YoungsterMattAfterBattleText
	waitbutton
	closetext
	end

TrainerYoungsterGordon:
	trainer YOUNGSTER, ANTHONY, EVENT_BEAT_YOUNGSTER_ANTHONY, YoungsterGordonSeenText, YoungsterGordonBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext YoungsterGordonAfterText
	waitbutton
	closetext
	end

SerenityForestRevive:
	itemball REVIVE

SerenityForestRepel:
	itemball REPEL

SerenityForestAntidote:
	itemball ANTIDOTE

SerenityForestEther:
	itemball ETHER

SerenityForestSignpost:
	jumptext SerenityForestSignpostText

SerenityForestTrainerTips:
	jumptext SerenityForestTrainerTipsText

SerenityShrineSignpost:
	jumptext SerenityShrineSignpostText

SerenityForestExitSignpost:
	jumptext SerenityForestExitSignpostText

SerenityForestHiddenSuperPotion:
	hiddenitem SUPER_POTION, EVENT_SERENITY_FOREST_HIDDEN_SUPER_POTION

Text_SerenityForestSuperNerd1:
	text "This forest is"
	line "quite lush wouldn't"
	cont "you agree?"
	done

Text_SerenityForestSuperNerd2:
	text "Up ahead there's a"
	line "TRAINER SCHOOL."

	para "It can teach you"
	line "all sorts of"
	cont "useful things!"
	done

SerenityForestSignpostText:
	text "SERENITY FOREST"
	done

SerenityForestTrainerTipsText:
	text "TRAINER TIPS"

	para "A forest is likely"
	line "to contain many"
	cont "well-hidden items!"

	para "They may be hard"
	line "to find, so look"
	cont "carefully!"
	done

SerenityShrineSignpostText:
	text "SERENITY SHRINE -"
	line "TO THE EAST"
	done

SerenityForestExitSignpostText:
	text "LEAVING SERENITY"
	line "FOREST"
	done

BugCatcherWayneSeenText:
	text "This forest is"
	line "dense, and it's"
	cont "full of bugs."

	para "It's a BUG CATCHER's"
	line "paradise!"
	done

BugCatcherWayneBeatenText:
	text "Aw, all the bugs"
	line "scattered away."
	done

BugCatcherWayneAfterBattleText:
	text "Maybe we should've"
	line "been more careful"
	cont "as we fought."
	done

BugCatcherAlSeenText:
	text "Can you handle my"
	line "army of bugs?"
	done

BugCatcherAlBeatenText:
	text "You're an absolute"
	line "unit!"
	done

BugCatcherAlAfterBattleText:
	text "The soft light of"
	line "this forest can"

	para "soothe even the"
	line "harshest of souls."
	done

BugCatcherJoshSeenText:
	text "Show me what you"
	line "got!"
	done

BugCatcherJoshBeatenText:
	text "Darn!"
	done

BugCatcherJoshAfterBattleText:
	text "There's this rumor"
	line "that CATERPIE can"
	cont "evolve into a"

	para "legendary DRAGON-"
	line "type POKéMON."

	para "But nobody knows"
	line "how to actually"
	cont "pull it off."
	done

YoungsterMattSeenText:
	text "Do you think you"
	line "have what it takes"
	cont "to beat me?"
	done

YoungsterMattBeatenText:
	text "This just isn't my"
	line "day."
	done

YoungsterMattAfterBattleText:
	text "Come see me later."
	line "I'd like to battle"
	cont "again sometime!"
	done

YoungsterGordonSeenText:
	text "You look like a"
	line "strong opponent."

	para "Let's see who's"
	line "stronger!"
	done

YoungsterGordonBeatenText:
	text "I'm all out of"
	line "#MON!"
	done

YoungsterGordonAfterText:
	text "Past this point is"
	line "the forest shrine."

	para "But the path is"
	line "too overgrown, so"
	cont "nobody can pass."
	done

SerenityForest_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event 10,  0, ROAD_A04, 1
	warp_event 11,  0, ROAD_A04, 2
	warp_event 34, 59, ROAD_A02, 1
	warp_event 35, 59, ROAD_A02, 2

	def_coord_events

	def_bg_events
	bg_event 32, 55, BGEVENT_READ, SerenityForestSignpost
	bg_event 33, 55, BGEVENT_READ, SerenityForestSignpost
	bg_event 30, 45, BGEVENT_READ, SerenityForestTrainerTips
	bg_event 26, 23, BGEVENT_READ, SerenityShrineSignpost
	bg_event  8,  2, BGEVENT_READ, SerenityForestExitSignpost
	bg_event  9,  2, BGEVENT_READ, SerenityForestExitSignpost
	bg_event 16, 36, BGEVENT_ITEM, SerenityForestHiddenSuperPotion

	def_object_events
	object_event 36, 55, SPRITE_SUPER_NERD, SPRITEMOVEDATA_WANDER, 1, 1, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_SCRIPT, 0, SerenityForestSuperNerd1Script, -1
	object_event 18, 15, SPRITE_SUPER_NERD, SPRITEMOVEDATA_WALK_LEFT_RIGHT, 1, 1, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_SCRIPT, 0, SerenityForestSuperNerd2Script, -1
	object_event 16, 49, SPRITE_BUG_CATCHER, SPRITEMOVEDATA_SPINRANDOM_SLOW, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_TRAINER, 4, TrainerBugCatcherWayne, -1
	object_event 22, 38, SPRITE_BUG_CATCHER, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_TRAINER, 4, TrainerBugCatcherAl, -1
	object_event  4, 17, SPRITE_BUG_CATCHER, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_TRAINER, 4, TrainerBugCatcherJosh, -1
	object_event  9, 17, SPRITE_YOUNGSTER, SPRITEMOVEDATA_SPINRANDOM_SLOW, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_TRAINER, 4, TrainerYoungsterMatt, -1
	object_event 32, 24, SPRITE_YOUNGSTER, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_TRAINER, 3, TrainerYoungsterGordon, -1
	object_event 43, 40, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, SerenityForestRevive, EVENT_SERENITY_FOREST_REVIVE
	object_event 12, 29, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, SerenityForestRepel, EVENT_SERENITY_FOREST_X_ATTACK
	object_event 25,  6, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, SerenityForestAntidote, EVENT_SERENITY_FOREST_ANTIDOTE
	object_event  4, 36, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, SerenityForestEther, EVENT_SERENITY_FOREST_ETHER
