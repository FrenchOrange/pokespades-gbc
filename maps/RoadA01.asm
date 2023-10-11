	object_const_def
	const ROADA01_PROF
	const ROADA01_RIVAL
	const ROADA01_SUPER_NERD
	const ROADA01_YOUNGSTER
	const ROADA01_COOLTRAINER_M
	const ROADA01_FRUIT_TREE
	const ROADA01_POKE_BALL

RoadA01_MapScripts:
	def_scene_scripts
	scene_script RoadA01Noop1Scene, SCENE_ROADA01_NOOP
	scene_script RoadA01Noop2Scene, SCENE_ROADA01_RIVAL_FIGHT

	def_callbacks

RoadA01Noop1Scene:
	end

RoadA01Noop2Scene:
	end

RoadA01Tutorial1:
	opentext
	writetext RoadA01CaughtUpText
	waitbutton
	closetext
	showemote EMOTE_SHOCK, PLAYER, 15
	applymovement PLAYER, RoadA01WalkUpToRivalMovement1
	sjump RoadA01RivalBattleScript_Continue

RoadA01Tutorial2:
	opentext
	writetext RoadA01CaughtUpText
	waitbutton
	closetext
	showemote EMOTE_SHOCK, PLAYER, 15
	applymovement PLAYER, RoadA01WalkUpToRivalMovement2
	sjump RoadA01RivalBattleScript_Continue

RoadA01Tutorial3:
	opentext
	writetext RoadA01CaughtUpText
	waitbutton
	closetext
	showemote EMOTE_SHOCK, PLAYER, 15
	applymovement PLAYER, RoadA01WalkUpToRivalMovement3
	sjump RoadA01RivalBattleScript_Continue

RoadA01Tutorial4:
	opentext
	writetext RoadA01CaughtUpText
	waitbutton
	closetext
	showemote EMOTE_SHOCK, PLAYER, 15
	applymovement PLAYER, RoadA01WalkUpToRivalMovement4
	sjump RoadA01RivalBattleScript_Continue

RoadA01Tutorial5:
	opentext
	writetext RoadA01CaughtUpText
	waitbutton
	closetext
	showemote EMOTE_SHOCK, PLAYER, 15
	applymovement PLAYER, RoadA01WalkUpToRivalMovement5
	sjump RoadA01RivalBattleScript_Continue

RoadA01Tutorial6:
	opentext
	writetext RoadA01CaughtUpText
	waitbutton
	closetext
	showemote EMOTE_SHOCK, PLAYER, 15
	applymovement PLAYER, RoadA01WalkUpToRivalMovement6
	sjump RoadA01RivalBattleScript_Continue

RoadA01RivalBattleScript_Continue:
	playmusic MUSIC_PROF_OAK
	opentext
	writetext RoadA01HuffText
	waitbutton
	closetext
	applymovement ROADA01_PROF, RoadA01ProfWalkForward
	opentext
	writetext RoadA01ThinkNotText
	promptbutton
	writetext RoadA01ServesYouRightText
	promptbutton
	writetext RoadA01HowDareYouText
	waitbutton
	closetext
	turnobject ROADA01_RIVAL, DOWN
	pause 15
	playsound SFX_TACKLE
	applymovement ROADA01_RIVAL, RoadA01RivalWalkRight
	applymovement ROADA01_PROF, RoadA01ProfPushBack
	applymovement ROADA01_RIVAL, RoadA01RivalWalkDown
	playmusic MUSIC_RIVAL_ENCOUNTER
	opentext
	writetext RoadA01HeyPlayerText
	waitbutton
	closetext
	turnobject ROADA01_PROF, DOWN
	opentext
	writetext RoadA01AvoidMeText
	promptbutton
	writetext RoadA01TimeToFightText
	waitbutton
	closetext
	checkevent EVENT_GOT_TOTODILE_FROM_ELM
	iftrue .Totodile
	checkevent EVENT_GOT_CHIKORITA_FROM_ELM
	iftrue .Chikorita
	winlosstext RoadA01RivalBeatenText, 0
	setlasttalked ROADA01_RIVAL
	loadtrainer RIVAL1, RIVAL1_1_TOTODILE
	startbattle
	dontrestartmapmusic
	reloadmapafterbattle
	sjump .FinishRivalBattle

.Totodile:
	winlosstext RoadA01RivalBeatenText, 0
	setlasttalked ROADA01_RIVAL
	loadtrainer RIVAL1, RIVAL1_1_CHIKORITA
	startbattle
	dontrestartmapmusic
	reloadmapafterbattle
	sjump .FinishRivalBattle

.Chikorita:
	winlosstext RoadA01RivalBeatenText, 0
	setlasttalked ROADA01_RIVAL
	loadtrainer RIVAL1, RIVAL1_1_CYNDAQUIL
	startbattle
	dontrestartmapmusic
	reloadmapafterbattle
	sjump .FinishRivalBattle

.FinishRivalBattle:
	playmusic MUSIC_RIVAL_AFTER
	opentext
	writetext RoadA01RivalAfterText
	waitbutton
	closetext
	applymovement ROADA01_RIVAL, RoadA01RivalWalkRightThrice
	turnobject PLAYER, RIGHT
	turnobject ROADA01_PROF, RIGHT
	applymovement ROADA01_RIVAL, RoadA01RivalWalkRightThrice
	applymovement ROADA01_RIVAL, RoadA01RivalWalkRightThrice
	disappear ROADA01_RIVAL
	opentext
	writetext RoadA01WellDoneText
	waitbutton
	closetext
	applymovement ROADA01_PROF, RoadA01ProfWalkToPlayer
	opentext
	writetext RoadA01IGiveUpText
	promptbutton
	giveitem POKE_BALL, 5
	writetext RoadA01GetBallsText
	playsound SFX_ITEM
	waitsfx
	waitbutton
	writetext RoadA01CatchingPokemonText
	promptbutton
	turnobject ROADA01_PROF, RIGHT
	showemote EMOTE_SHOCK, ROADA01_PROF, 15
	writetext RoadA01IOhShootText
	promptbutton
	turnobject ROADA01_PROF, LEFT
	writetext RoadA01IVisitMyLabText
	waitbutton
	closetext
	applymovement ROADA01_PROF, RoadA01ProfRunAway
	disappear ROADA01_PROF
	pause 30
	setscene SCENE_ROADA01_NOOP
	playmapmusic
	setevent EVENT_ROAD_A01_RIVAL_BATTLE
	setmapscene APRICOT_TOWN, SCENE_APRICOTTOWN_MEET_CLERK
	end

RoadA01WalkUpToRivalMovement1:
	step UP
	step UP
	step RIGHT
	step RIGHT
	step UP
	step_end

RoadA01WalkUpToRivalMovement2:
	step UP
	step UP
	step RIGHT
	step UP
	step_end

RoadA01WalkUpToRivalMovement3:
	step UP
	step UP
	step UP
	step_end

RoadA01WalkUpToRivalMovement4:
	step UP
	step UP
	step LEFT
	step UP
	step_end

RoadA01WalkUpToRivalMovement5:
	step UP
	step UP
	step LEFT
	step LEFT
	step UP
	step_end

RoadA01WalkUpToRivalMovement6:
	step UP
	step UP
	step LEFT
	step LEFT
	step LEFT
	step UP
	step_end

RoadA01ProfWalkForward:
	step LEFT
	step_end

RoadA01RivalWalkRight:
	step RIGHT
	step_end

RoadA01ProfPushBack:
	fix_facing
	big_step RIGHT
	remove_fixed_facing
	step_end

RoadA01RivalWalkDown:
	step DOWN
	step_end

RoadA01RivalWalkRightThrice:
	step RIGHT
	step RIGHT
	step RIGHT
	step_end

RoadA01ProfWalkToPlayer:
	step DOWN
	step DOWN
	turn_head LEFT
	step_end

RoadA01ProfRunAway:
	big_step UP
	big_step UP
	big_step RIGHT
	big_step RIGHT
	big_step RIGHT
	big_step RIGHT
	big_step RIGHT
	big_step RIGHT
	step_end

RoadA01SuperNerdScript:
	jumptextfaceplayer RoadA01SuperNerdText

RoadA01YoungsterScript:
	jumptextfaceplayer RoadA01YoungsterText

RoadA01CooltrainerMScript:
	jumptextfaceplayer RoadA01CooltrainerMText

RoadA01Sign:
	jumptext RoadA01SignText

RoadA01TrainerTips:
	jumptext RoadA01TrainerTipsText

RoadA01FruitTree:
	fruittree FRUITTREE_ROAD_A01

RoadA01Potion:
	itemball POTION

RoadA01CaughtUpText:
	text "I've finally caught"
	line "up with you!"
	done

RoadA01HuffText:
	text "CYPRESS: Ah, huff."
	line "Huff… Do you think"
	para "you can just run"
	line "away from me?"
	done

RoadA01ThinkNotText:
	text "I think not! Now"
	line "stay where you are"
	cont "so I can give you"
	cont "a #DEX."

	para "Walking off like"
	line "you did, refusing"
	cont "my conditions…"

	para "I would almost"
	line "consider this as"
	cont "stealing!"
	done

RoadA01ServesYouRightText:
	text "<RIVAL>: Stealing?"
	line "Serves you right"
	cont "for pulling some"
	cont "little game on me."

	para "All I was promised"
	line "was a POKéMON, and"
	cont "that's it."
	done

RoadA01HowDareYouText:
	text "CYPRESS: How dare"
	line "you think that!"

	para "You should be"
	line "grateful to be"
	cont "gifted a POKéDEX."
	done

RoadA01HeyPlayerText:
	text "Hey <PLAYER>. How"
	line "about a battle?"
	cont "Like right now."

	para "It'd be perfect to"
	line "test ourselves"
	cont "before we start"
	cont "proper training."

	para "Wouldn't you say?"
	done

RoadA01AvoidMeText:
	text "CYPRESS: A battle?"
	line "You're just trying"
	cont "to avoid me!"
	done

RoadA01TimeToFightText:
	text "<RIVAL>: Exactly."

	para "So how about it,"
	line "<PLAYER>?"

	para "It's time to fight!"
	done

RoadA01RivalBeatenText:
	text "You win this round"
	line "<PLAYER>."
	done

RoadA01RivalAfterText:
	text "You may have won,"
	line "but things will be"
	cont "different next"
	cont "time. Trust me."

	para "'Till next time,"
	line "<PLAYER>."
	done

RoadA01WellDoneText:
	text "CYPRESS: This was"
	line "an unexpectedly"
	cont "thrilling battle."
	cont "Well done you two."
	done

RoadA01IGiveUpText:
	text "Sigh. I give up"
	line "for now."
	cont "Oh well, here."

	para "I should give you"
	line "these anyway."
	done

RoadA01GetBallsText:
	text "<PLAYER> obtained"
	line "# BALLS!"
	done

RoadA01CatchingPokemonText:
	text "Catching #MON"
	line "is a game of luck."

	para "Once used, a #"
	line "BALL will shake a"
	cont "maximum of three"
	cont "times."

	para "The more shakes,"
	line "the better your"
	cont "chance at catching"
	cont "a new #MON."

	para "But a # BALL"
	line "can only be used"
	cont "once, so remember"

	para "to buy a handful"
	line "whenever you can."
	done

RoadA01IOhShootText:
	text "Oh shoot, look at"
	line "the time. I'm going"
	cont "to be late for the"
	cont "train. Off I go!"
	done

RoadA01IVisitMyLabText:
	text "<PLAYER>."

	para "Make sure to come"
	line "by my lab in PLUME"
	cont "TOWN later."

	para "We will continue"
	line "our chat there."

	para "Bye bye!"
	done

RoadA01SuperNerdText:
	text "Yo, TRAINER in the"
	line "making! Good luck"
	cont "on your journey!"
	done

RoadA01YoungsterText:
	text "I met many #MON"
	line "in this patch of"
	cont "tall grass."

	para "So now I'm saving"
	line "my progress. You"
	cont "should do it too!"
	done

RoadA01CooltrainerMText:
	text "Here's a simple but"
	line "very useful tip."

	para "When trying to"
	line "catch a POKéMON,"
	cont "weaken it first!"

	para "I learned this the"
	line "hard way… Now I'm"
	cont "out of POKé BALLS!"
	done

RoadA01SignText:
	text "ROAD A01"
	done

RoadA01TrainerTipsText:
	text "TRAINER TIPS"

	para "For any #MON"
	line "care, visit nearby"
	cont "#MON CENTERS."
	done

RoadA01_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event 35,  4, ROAD_A01_APRICOT_GATE, 1
	warp_event 35,  5, ROAD_A01_APRICOT_GATE, 2

	def_coord_events
	coord_event 22, 10, SCENE_ROADA01_RIVAL_FIGHT, RoadA01Tutorial1
	coord_event 23, 10, SCENE_ROADA01_RIVAL_FIGHT, RoadA01Tutorial2
	coord_event 24, 10, SCENE_ROADA01_RIVAL_FIGHT, RoadA01Tutorial3
	coord_event 25, 10, SCENE_ROADA01_RIVAL_FIGHT, RoadA01Tutorial4
	coord_event 26, 10, SCENE_ROADA01_RIVAL_FIGHT, RoadA01Tutorial5
	coord_event 27, 10, SCENE_ROADA01_RIVAL_FIGHT, RoadA01Tutorial6

	def_bg_events
	bg_event 22, 34, BGEVENT_READ, RoadA01Sign
	bg_event 11, 21, BGEVENT_READ, RoadA01TrainerTips

	def_object_events
	object_event 25,  5, SPRITE_CYPRESS, SPRITEMOVEDATA_STANDING_LEFT, 0, 1, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_SCRIPT, 0, ObjectEvent, EVENT_ROAD_A01_RIVAL_BATTLE
	object_event 23,  5, SPRITE_RIVAL, SPRITEMOVEDATA_STANDING_RIGHT, 1, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, ObjectEvent, EVENT_ROAD_A01_RIVAL_BATTLE
	object_event 11, 32, SPRITE_SUPER_NERD, SPRITEMOVEDATA_SPINRANDOM_SLOW, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, RoadA01SuperNerdScript, -1
	object_event 27, 34, SPRITE_YOUNGSTER, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, RoadA01YoungsterScript, -1
	object_event 13,  8, SPRITE_COOLTRAINER_M, SPRITEMOVEDATA_WANDER, 1, 1, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, RoadA01CooltrainerMScript, -1
	object_event 23,  1, SPRITE_FRUIT_TREE, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, RoadA01FruitTree, -1
	object_event  1, 24, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, RoadA01Potion, EVENT_ROAD_A01_POTION
