	object_const_def
	const LOTUSTOWN_BEAUTY
	const LOTUSTOWN_FISHER
	const LOTUSTOWN_LITTLE_BOY
	const LOTUSTOWN_GAMEBOY_KID
	const LOTUSTOWN_SUPER_NERD
	const LOTUSTOWN_MOM

LotusTown_MapScripts:
	def_scene_scripts
	scene_script LotusTownNoop1Scene, SCENE_LOTUSTOWN_SUPER_NERD_STOPS_YOU
	scene_script LotusTownNoop2Scene, SCENE_LOTUSTOWN_MOM_SAYS_GOODBYE
	scene_script LotusTownNoop3Scene, SCENE_LOTUSTOWN_NOOP

	def_callbacks
	callback MAPCALLBACK_NEWMAP, LotusTownFlypointCallback

LotusTownNoop1Scene:
	end

LotusTownNoop2Scene:
	end

LotusTownNoop3Scene:
	end

LotusTownFlypointCallback:
	setflag ENGINE_FLYPOINT_LOTUS
	clearevent EVENT_FIRST_TIME_BANKING_WITH_MOM
	endcallback

LotusTownSuperNerdStopsYouScene1:
	playmusic MUSIC_MOM
	turnobject LOTUSTOWN_SUPER_NERD, DOWN
	showemote EMOTE_SHOCK, LOTUSTOWN_SUPER_NERD, 15
	applymovement LOTUSTOWN_SUPER_NERD, LotusTownSuperNerdRunsToYouMovement1
	opentext
	writetext LotusTownSuperNerdText
	waitbutton
	closetext
	follow PLAYER, LOTUSTOWN_SUPER_NERD
	applymovement PLAYER, LotusTownPlayerStepsDownMovement
	stopfollow
	applymovement LOTUSTOWN_SUPER_NERD, LotusTownSuperNerdWalksBackMovement1
	special RestartMapMusic
	end

LotusTownSuperNerdStopsYouScene2:
	playmusic MUSIC_MOM
	turnobject LOTUSTOWN_SUPER_NERD, DOWN
	showemote EMOTE_SHOCK, LOTUSTOWN_SUPER_NERD, 15
	applymovement LOTUSTOWN_SUPER_NERD, LotusTownSuperNerdRunsToYouMovement2
	opentext
	writetext LotusTownSuperNerdText
	waitbutton
	closetext
	follow PLAYER, LOTUSTOWN_SUPER_NERD
	applymovement PLAYER, LotusTownPlayerStepsDownMovement
	stopfollow
	applymovement LOTUSTOWN_SUPER_NERD, LotusTownSuperNerdWalksBackMovement2
	special RestartMapMusic
	end

LotusTownSuperNerdStopsYouScene3:
	playmusic MUSIC_MOM
	turnobject LOTUSTOWN_SUPER_NERD, DOWN
	showemote EMOTE_SHOCK, LOTUSTOWN_SUPER_NERD, 15
	applymovement LOTUSTOWN_SUPER_NERD, LotusTownSuperNerdRunsToYouMovement3
	opentext
	writetext LotusTownSuperNerdText
	waitbutton
	closetext
	follow PLAYER, LOTUSTOWN_SUPER_NERD
	applymovement PLAYER, LotusTownPlayerStepsDownMovement
	stopfollow
	applymovement LOTUSTOWN_SUPER_NERD, LotusTownSuperNerdWalksBackMovement3
	special RestartMapMusic
	end

LotusTownSuperNerdStopsYouScene4:
	playmusic MUSIC_MOM
	turnobject LOTUSTOWN_SUPER_NERD, DOWN
	showemote EMOTE_SHOCK, LOTUSTOWN_SUPER_NERD, 15
	applymovement LOTUSTOWN_SUPER_NERD, LotusTownSuperNerdRunsToYouMovement4
	opentext
	writetext LotusTownSuperNerdText
	waitbutton
	closetext
	follow PLAYER, LOTUSTOWN_SUPER_NERD
	applymovement PLAYER, LotusTownPlayerStepsDownMovement
	stopfollow
	applymovement LOTUSTOWN_SUPER_NERD, LotusTownSuperNerdWalksBackMovement4
	special RestartMapMusic
	end

LotusTownMomSaysGoodbye1:
	moveobject LOTUSTOWN_MOM, 12, 10
	sjump LotusTownMomSaysGoodbye_Continue

LotusTownMomSaysGoodbye2:
	moveobject LOTUSTOWN_MOM, 13, 10
	sjump LotusTownMomSaysGoodbye_Continue

LotusTownMomSaysGoodbye3:
	moveobject LOTUSTOWN_MOM, 14, 10
	sjump LotusTownMomSaysGoodbye_Continue

LotusTownMomSaysGoodbye4:
	moveobject LOTUSTOWN_MOM, 15, 10
	sjump LotusTownMomSaysGoodbye_Continue

LotusTownMomSaysGoodbye_Continue:
	appear LOTUSTOWN_MOM
	applymovement LOTUSTOWN_MOM, LotusTownMomWalkUpMovement
	showemote EMOTE_SHOCK, LOTUSTOWN_MOM, 15
	opentext
	writetext LotusTownMomWaitText
	waitbutton
	closetext
	playmusic MUSIC_MOM
	applymovement LOTUSTOWN_MOM, LotusTownMomWalkUpThriceMovement
	turnobject PLAYER, DOWN
	opentext
	writetext LotusTownMomHaveThisText
	waitbutton
	writetext LotusTownGetTownMapText
	giveitem TOWN_MAP
	playsound SFX_KEY_ITEM
	waitsfx
	waitbutton
	writetext LotusTownMomTownMapText
	waitbutton
	closetext
	applymovement LOTUSTOWN_MOM, LotusTownMomLeavesSceneMovement
	disappear LOTUSTOWN_MOM
	special RestartMapMusic
	setscene SCENE_LOTUSTOWN_NOOP
	end

LotusTownPigtailsScript:
	faceplayer
	opentext
	writetext LotusTownPigtailsText
	waitbutton
	closetext
	turnobject LOTUSTOWN_BEAUTY, DOWN
	end

LotusTownFisherScript:
	jumptextfaceplayer LotusTownFisherText

LotusTownLittleBoyScript:
	jumptextfaceplayer LotusTownLittleBoyText

LotusTownGameboyKidScript:
	faceplayer
	opentext
	writetext LotusTownGameboyKidText
	waitbutton
	closetext
	turnobject LOTUSTOWN_GAMEBOY_KID, DOWN
	end

LotusTownSign:
	jumptext LotusTownSignText

LotusTownPlayersHomeSign:
	jumptext LotusTownPlayersHomeSignText

LotusTownRivalsHomeSign:
	jumptext LotusTownRivalsHomeSignText

LotusTownSuperNerdRunsToYouMovement1:
	step LEFT
	step LEFT
	step DOWN
	step DOWN
	step_end

LotusTownSuperNerdRunsToYouMovement2:
	step LEFT
	step DOWN
	step DOWN
	step_end

LotusTownSuperNerdRunsToYouMovement3:
	step DOWN
	step DOWN
	step_end

LotusTownSuperNerdRunsToYouMovement4:
	step RIGHT
	step DOWN
	step DOWN
	step_end

LotusTownPlayerStepsDownMovement:
	step DOWN
	step DOWN
	step_end

LotusTownSuperNerdWalksBackMovement1:
	step UP
	step UP
	step UP
	step UP
	step RIGHT
	step RIGHT
	step_end

LotusTownSuperNerdWalksBackMovement2:
	step UP
	step UP
	step UP
	step UP
	step RIGHT
	step_end

LotusTownSuperNerdWalksBackMovement3:
	step UP
	step UP
	step UP
	step UP
	step_end

LotusTownSuperNerdWalksBackMovement4:
	step UP
	step UP
	step UP
	step UP
	step LEFT
	step_end

LotusTownMomWalkUpMovement:
	step UP
	step_end

LotusTownMomWalkUpThriceMovement:
	step UP
	step UP
	step UP
	step_end

LotusTownMomLeavesSceneMovement:
	step DOWN
	step DOWN
	step DOWN
	step DOWN
	step_end

LotusTownSuperNerdText:
	text "Woah, hold it!"

	para "You don't have any"
	line "#MON with you"
	cont "just yet."

	para "Wild #MON are"
	line "everywhere in the"
	cont "tall grass."

	para "It's dangerous to"
	line "go out without a"
	cont "#MON to defend"
	cont "yourself with."
	done

LotusTownMomWaitText:
	text "Oh, <PLAYER>! Wait!"
	done

LotusTownMomHaveThisText:
	text "Huff… Before you"
	line "go, I should give"
	cont "you this."
	done

LotusTownGetTownMapText:
	text "<PLAYER> obtained"
	line "TOWN MAP!"
	done

LotusTownMomTownMapText:
	text "The TOWN MAP is a"
	line "useful item that"
	cont "helps you know"

	para "where you are in"
	line "the region."

	para "It's a map I drew"
	line "myself back when I"
	cont "was travelling the"
	cont "SENTA region."

	para "So keep good care"
	line "of it!"

	para "And remember, come"
	line "home if anything"
	cont "happens to you."

	para "Mom will always be"
	line "there, <PLAYER>."
	done

LotusTownPigtailsText:
	text "They say your"
	line "reflection changes"
	cont "based on your"
	cont "inner emotions."

	para "But I'm not sure"
	line "I believe it."
	done

LotusTownFisherText:
	text "Technology is"
	line "wonderous!"

	para "I heard scientists"
	line "invented an item"
	cont "that can devolve"
	cont "#MON! Cool!"
	done

LotusTownLittleBoyText:
	text "Hey <PLAYER>!"

	para "Someday I want to"
	line "explore the deep,"
	cont "deep ocean."

	para "Like those divers"
	line "you see on TV! "
	done

LotusTownGameboyKidText:
	text "The only tech I"
	line "care about is my"
	cont "game console."
	done

LotusTownSignText:
	text "LOTUS TOWN"

	para "The Town Where all"
	line "Hopes Bloom."
	done

LotusTownPlayersHomeSignText:
	text "<PLAYER>'s HOME"
	done

LotusTownRivalsHomeSignText:
	text "<RIVAL>'s HOME"
	done

LotusTown_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event 19,  9, RIVALS_HOUSE, 1
	warp_event  7, 19, PLAYERS_HOUSE_1F, 1
	warp_event  7,  9, PLAYERS_NEIGHBORS_HOUSE, 1

	def_coord_events
	coord_event 12,  0, SCENE_LOTUSTOWN_SUPER_NERD_STOPS_YOU, LotusTownSuperNerdStopsYouScene1
	coord_event 13,  0, SCENE_LOTUSTOWN_SUPER_NERD_STOPS_YOU, LotusTownSuperNerdStopsYouScene2
	coord_event 14,  0, SCENE_LOTUSTOWN_SUPER_NERD_STOPS_YOU, LotusTownSuperNerdStopsYouScene3
	coord_event 15,  0, SCENE_LOTUSTOWN_SUPER_NERD_STOPS_YOU, LotusTownSuperNerdStopsYouScene4
	coord_event 12,  5, SCENE_LOTUSTOWN_MOM_SAYS_GOODBYE, LotusTownMomSaysGoodbye1
	coord_event 13,  5, SCENE_LOTUSTOWN_MOM_SAYS_GOODBYE, LotusTownMomSaysGoodbye2
	coord_event 14,  5, SCENE_LOTUSTOWN_MOM_SAYS_GOODBYE, LotusTownMomSaysGoodbye3
	coord_event 15,  5, SCENE_LOTUSTOWN_MOM_SAYS_GOODBYE, LotusTownMomSaysGoodbye4

	def_bg_events
	bg_event 18, 13, BGEVENT_READ, LotusTownSign
	bg_event  5, 19, BGEVENT_READ, LotusTownPlayersHomeSign
	bg_event 17,  9, BGEVENT_READ, LotusTownRivalsHomeSign

	def_object_events
	object_event  3, 13, SPRITE_BEAUTY, SPRITEMOVEDATA_STANDING_DOWN, 1, 0, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_SCRIPT, 0, LotusTownPigtailsScript, -1
	object_event 19, 17, SPRITE_FISHER, SPRITEMOVEDATA_WANDER, 1, 1, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_SCRIPT, 0, LotusTownFisherScript, -1
	object_event  2, 13, SPRITE_LITTLE_BOY, SPRITEMOVEDATA_STANDING_DOWN, 1, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, LotusTownLittleBoyScript, -1
	object_event 15, 13, SPRITE_GAMEBOY_KID, SPRITEMOVEDATA_STANDING_DOWN, 1, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, LotusTownGameboyKidScript, -1
	object_event 14, -3, SPRITE_SUPER_NERD, SPRITEMOVEDATA_SPINRANDOM_SLOW, 1, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, ObjectEvent, EVENT_LOTUS_TOWN_SUPER_NERD
	object_event  0, 0, SPRITE_MOM, SPRITEMOVEDATA_STANDING_UP, 1, 0, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_SCRIPT, 0, ObjectEvent, EVENT_LOTUS_TOWN_MOM
