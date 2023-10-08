	object_const_def
	const ROADA00_PROF
	const ROADA00_RIVAL
	const ROADA00_BAG
	const ROADA00_POKE_BALL

RoadA00_MapScripts:
	def_scene_scripts
	scene_script RoadA00Noop1Scene, SCENE_ROADA00_GET_YOUR_POKEMON
	scene_script RoadA00Noop2Scene, SCENE_ROADA00_CANT_LEAVE_YET
	scene_script RoadA00Noop3Scene, SCENE_ROADA00_NOOP

	def_callbacks

RoadA00Noop1Scene:
	end

RoadA00Noop2Scene:
	end

RoadA00Noop3Scene:
	end

RoadA00GetPokemonScript1:
	showemote EMOTE_SHOCK, PLAYER, 15
	applymovement ROADA00_RIVAL, RoadA00RivalWalkRightMovement
	applymovement PLAYER, RoadA00WalkUpToRivalMovement1
	sjump RoadA00GetPokemonScript_Continue

RoadA00GetPokemonScript2:
	showemote EMOTE_SHOCK, PLAYER, 15
	applymovement ROADA00_RIVAL, RoadA00RivalWalkRightMovement
	applymovement PLAYER, RoadA00WalkUpToRivalMovement2
	sjump RoadA00GetPokemonScript_Continue

RoadA00GetPokemonScript3:
	showemote EMOTE_SHOCK, PLAYER, 15
	applymovement ROADA00_RIVAL, RoadA00RivalWalkRightMovement
	applymovement PLAYER, RoadA00WalkUpToRivalMovement3
	sjump RoadA00GetPokemonScript_Continue

RoadA00GetPokemonScript4:
	showemote EMOTE_SHOCK, PLAYER, 15
	applymovement ROADA00_RIVAL, RoadA00RivalWalkRightMovement
	applymovement PLAYER, RoadA00WalkUpToRivalMovement4
	sjump RoadA00GetPokemonScript_Continue

RoadA00GetPokemonScript_Continue:
	turnobject ROADA00_RIVAL, LEFT
	showemote EMOTE_SHOCK, ROADA00_RIVAL, 15
	playmusic MUSIC_RIVAL_ENCOUNTER
	applymovement ROADA00_RIVAL, RoadA00StepLeftMovement
	applymovement ROADA00_RIVAL, RoadA00StepLeftMovement
	opentext
	writetext RoadA00RivalYoText
	promptbutton
	turnobject ROADA00_RIVAL, RIGHT
	writetext RoadA00RivalStaringText
	promptbutton
	turnobject ROADA00_RIVAL, LEFT
	writetext RoadA00RivalLetsGoText
	waitbutton
	closetext
	moveobject ROADA00_PROF, 16,  8
	appear ROADA00_PROF
	applymovement ROADA00_PROF, RoadA00PlayerTurnBackRightMovement
	showemote EMOTE_SHOCK, ROADA00_PROF, 15
	playmusic MUSIC_PROF_OAK
	opentext
	writetext RoadA00ProfThereYouAreText
	waitbutton
	closetext
	applymovement ROADA00_PROF, RoadA00RivalWalkRightMovement
	turnobject PLAYER, RIGHT
	applymovement ROADA00_RIVAL, RoadA00StepLeftMovement
	follow PLAYER, ROADA00_RIVAL
	applymovement PLAYER, RoadA00PlayerWalksUpMovement
	opentext
	writetext RoadA00ProfTGotTiredText
	promptbutton
	writetext RoadA00RivalImGuessingText
	waitbutton
	closetext
	special FadeBlackQuickly
	special ReloadSpritesNoPalettes
	disappear ROADA00_PROF
	disappear ROADA00_RIVAL
	moveobject ROADA00_PROF, 19,  7
	moveobject ROADA00_RIVAL, 19,  9
	applymovement PLAYER, RoadA00PlayerWalksToNewSpot
	appear ROADA00_PROF
	appear ROADA00_RIVAL
	appear ROADA00_BAG
	turnobject ROADA00_PROF, DOWN
	turnobject ROADA00_RIVAL, UP
	pause 15
	special FadeInQuickly
	opentext 
	writetext RoadA00ProfHereYouGoText
	waitbutton
	closetext
	setscene SCENE_ROADA00_CANT_LEAVE_YET
	end

RoadA00TryToLeaveScript1:
	turnobject ROADA00_PROF, LEFT
	showemote EMOTE_SHOCK, ROADA00_PROF, 15
	opentext
	writetext RoadA00ProfTryToLeaveText
	promptbutton
	closetext
	applymovement PLAYER, RoadA00PlayerTurnBackRightMovement
	turnobject ROADA00_PROF, DOWN
	end

RoadA00TryToLeaveScript2:
	showemote EMOTE_SHOCK, ROADA00_PROF, 15
	opentext
	writetext RoadA00ProfTryToLeaveText
	promptbutton
	closetext
	applymovement PLAYER, RoadA00StepLeftMovement
	end

RoadA00TryToLeaveScript3:
	showemote EMOTE_SHOCK, ROADA00_PROF, 15
	opentext
	writetext RoadA00ProfTryToLeaveText
	promptbutton
	closetext
	applymovement PLAYER, RoadA00PlayerTurnBackUpMovement
	end

RoadA00ProfScript:
	faceplayer
	opentext
	writetext RoadA00ProfChooseWiselyText
	waitbutton
	closetext
	turnobject ROADA00_PROF, DOWN
	end

RoadA00RivalScript:
	faceplayer
	opentext
	writetext RoadA00RivalYouGoFirstText
	waitbutton
	closetext
	turnobject ROADA00_RIVAL, UP
	end

RoadA00BagScript:
; Starter code goes here 
	sjump .PickedAStarterPokemon

.PickedAStarterPokemon
	applymovement ROADA00_RIVAL, RoadA00RivalGoesToPickStarterMovement
	pause 15
	applymovement ROADA00_RIVAL, RoadA00RivalPickedStarterMovement
	showemote EMOTE_QUESTION, ROADA00_RIVAL, 15
	opentext
	writetext RoadA00RivalWhatAreTheseText
	promptbutton
	writetext RoadA00ThatsAPokedexText
	waitbutton
	setflag ENGINE_POKEDEX
	writetext ReceivedPokedexText
	playsound SFX_ITEM
	waitsfx
	waitbutton
	writetext RoadA00ProfLongMonologueText
	promptbutton
	closetext
	turnobject ROADA01_RIVAL, DOWN
	opentext
	writetext RoadA00RivalThanksButNoText
	waitbutton
	closetext
	turnobject ROADA01_RIVAL, LEFT
	opentext
	writetext RoadA00RivalSeeYouLaterText
	waitbutton
	closetext
	applymovement ROADA00_RIVAL, RoadA00RivalLeavesHalfwayMovement
	turnobject ROADA00_PROF, LEFT
	applymovement ROADA00_RIVAL, RoadA00StepLeftMovement
	turnobject PLAYER, LEFT
	applymovement ROADA00_RIVAL, RoadA00StepLeftMovement
	showemote EMOTE_SHOCK, ROADA00_PROF, 15
	turnobject ROADA00_RIVAL, RIGHT
	opentext
	writetext RoadA00ProfHowRudeText
	waitbutton
	writetext RoadA00RivalWhateverText
	promptbutton
	closetext
	applymovement ROADA00_RIVAL, RoadA00RivalLeavesForGoodMovement
	disappear ROADA00_RIVAL
	pause 25
	applymovement ROADA00_PROF, RoadA00StepLeftMovement
	opentext
	writetext RoadA00ProfGetBackHereText
	waitbutton
	closetext
	applymovement ROADA00_PROF, RoadA00ProfGoesToGrabBagMovement
	pause 10
	disappear ROADA00_BAG
	applymovement ROADA00_PROF, RoadA00ProfRunsOffScreenMovement
	disappear ROADA00_PROF
	pause 30
	special RestartMapMusic
	setscene SCENE_ROADA00_NOOP
	setmapscene LOTUS_TOWN, SCENE_LOTUSTOWN_MOM_SAYS_GOODBYE
	setmapscene ROAD_A01, SCENE_ROADA01_RIVAL_FIGHT
	setevent EVENT_ROAD_A00_PROF
	setevent EVENT_ROAD_A00_RIVAL
	setevent EVENT_ROAD_A00_BAG
	setevent EVENT_LOTUS_TOWN_SUPER_NERD
	setevent EVENT_PLAYERS_HOUSE_1F_PROF
	end

RoadA00Sign:
	jumptext RoadA00SignText

RoadA00RareCandy:
	itemball RARE_CANDY

RoadA00RivalWalkRightMovement:
	step RIGHT
	step RIGHT
	step_end

RoadA00WalkUpToRivalMovement1:
	step RIGHT
	step RIGHT
	step DOWN
	step RIGHT
	step RIGHT
	step_end

RoadA00WalkUpToRivalMovement2:
	step RIGHT
	step RIGHT
	step RIGHT
	step RIGHT
	step_end

RoadA00WalkUpToRivalMovement3:
	step RIGHT
	step RIGHT
	step UP
	step RIGHT
	step RIGHT
	step_end

RoadA00WalkUpToRivalMovement4:
	step RIGHT
	step RIGHT
	step UP
	step UP
	step RIGHT
	step RIGHT
	step_end

RoadA00StepLeftMovement:
	step LEFT
	step_end

RoadA00PlayerWalksUpMovement:
	step UP
	turn_head LEFT
	step_end

RoadA00PlayerWalksToNewSpot:
	big_step DOWN
	big_step DOWN
	big_step LEFT
	big_step LEFT
	big_step LEFT
	turn_head UP
	step_end

RoadA00PlayerTurnBackRightMovement:
	step RIGHT
	step_end

RoadA00PlayerTurnBackUpMovement:
	step UP
	step_end

RoadA00RivalGoesToPickStarterMovement:
	step RIGHT
	step UP
	turn_head LEFT
	step_end

RoadA00RivalPickedStarterMovement:
	step DOWN
	step LEFT
	turn_head UP
	step_end

RoadA00RivalLeavesHalfwayMovement:
	step DOWN
	step LEFT
	step LEFT
	step UP
	step_end

RoadA00RivalLeavesForGoodMovement:
	step LEFT
	step LEFT
	step LEFT
	step_end

RoadA00ProfGoesToGrabBagMovement:
	step RIGHT
	turn_head DOWN
	step_end

RoadA00ProfRunsOffScreenMovement:
	big_step LEFT
	big_step LEFT
	big_step LEFT
	big_step DOWN
	big_step LEFT
	big_step LEFT
	big_step LEFT
	step_end

RoadA00RivalYoText:
	text "<RIVAL>: Yo."

	para "By your face, I'm"
	line "guessing we're all"
	cont "good to go now?"

	para "It already feels"
	line "like forever ago"
	cont "since we promised"

	para "to start both our"
	line "POKéMON journeys"
	cont "together."
	done

RoadA00RivalStaringText:
	text "Since morning, I've"
	line "been staring at"
	cont "the #MON LEAGUE"

	para "building in the"
	line "distance."

	para "Wondering what"
	line "it'll take to get"
	cont "there."
	done

RoadA00RivalLetsGoText:
	text "But enough with"
	line "that, let's go get"
	cont "our #MON."
	done

RoadA00ProfThereYouAreText:
	text "CYPRESS: Aha! So"
	line "this is where you"
	cont "two were hiding."
	done

RoadA00ProfTGotTiredText:
	text "I came over"
	line "because I got"
	cont "tired of waiting."

	para "I might have been"
	line "late to catch the"
	cont "train if I hadn't."
	done

RoadA00RivalImGuessingText:
	text "<RIVAL>: Oh, so I'm"
	line "guessing you're the"
	cont "professor?"

	para "Good, now lets get"
	line "on with things."
	done

RoadA00ProfHereYouGoText:
	text "CYPRESS: Well,"
	line "here you two go."

	para "You have three"
	line "choices. But you"
	cont "can only pick one!"

	para "I will keep the"
	line "one that remains."
	done

RoadA00ProfTryToLeaveText:
	text "Hey, <PLAYER>!"
	line "Come back here!"
	done

RoadA00ProfChooseWiselyText:
	text "Choose wisely!"
	done

RoadA00RivalYouGoFirstText:
	text "You go first."
	para "I'm fine with going"
	line "last."
	done

RoadA00RivalWhatAreTheseText:
	text "<RIVAL>: What are"
	line "these hidden under"
	cont "the # BALLS?"
	done

RoadA00ThatsAPokedexText:
	text "CYPRESS: Those are"
	line "what people call a"
	cont "#DEX."

	para "Go on don't be shy."
	line "Take them!"
	done

ReceivedPokedexText:
	text "<PLAYER> received"
	line "the #DEX!"
	done

RoadA00ProfLongMonologueText:
	text "A #DEX is an"
	line "advanced device"
	cont "which can record"

	para "information on any"
	line "#MON, whether"
	cont "seen or caught."


	para "This research tool"
	line "is useful for"
	cont "species not yet"

	para "full analyzed, or"
	line "even outright"
	cont "discovered!"


	para "I want you to use"
	line "these to find as"
	cont "many new species "
	cont "as you can."

	para "You two will act"
	line "as my aides as you"
	cont "go on your journey"
	cont "to the LEAGUE."


	para "I'm getting older,"
	line "and it's harder for"
	cont "me to traverse the"
	cont "world now."

	para "So I need lively"
	line "youngins such as"
	cont "yourself to do the"
	cont "job for me!"

	para "After all, this is"
	line "a fair trade for"
	cont "asking me a"
	cont "beginning #MON."
	done

RoadA00RivalThanksButNoText:
	text "<RIVAL>: Thanks"
	line "for the offer, but"
	cont "I decline."

	para "All that matters"
	line "is reaching the"
	cont "top of my game."
	done

RoadA00RivalSeeYouLaterText:
	text "See you later,"
	line "<PLAYER>."

	para "Next time we cross"
	line "path, get ready"
	cont "for a battle."
	done

RoadA00ProfHowRudeText:
	text "CYPRESS: How rude"
	line "of you! I came all"
	cont "the way down here"

	para "and this is how I"
	line "am treated?"
	done

RoadA00RivalWhateverText:
	text "<RIVAL>: Whatever."
	done

RoadA00ProfGetBackHereText:
	text "CYPRESS: Hey, get"
	line "back here!"
	done

RoadA00SignText:
	text "ROAD A00"
	done

RoadA00_MapEvents:
	db 0, 0 ; filler

	def_warp_events

	def_coord_events
	coord_event 17,  7, SCENE_ROADA00_GET_YOUR_POKEMON, RoadA00GetPokemonScript1
	coord_event 17,  8, SCENE_ROADA00_GET_YOUR_POKEMON, RoadA00GetPokemonScript2
	coord_event 17,  9, SCENE_ROADA00_GET_YOUR_POKEMON, RoadA00GetPokemonScript3
	coord_event 17, 10, SCENE_ROADA00_GET_YOUR_POKEMON, RoadA00GetPokemonScript4
	coord_event 17,  7, SCENE_ROADA00_CANT_LEAVE_YET, RoadA00TryToLeaveScript1
	coord_event 17,  8, SCENE_ROADA00_CANT_LEAVE_YET, RoadA00TryToLeaveScript1
	coord_event 17,  9, SCENE_ROADA00_CANT_LEAVE_YET, RoadA00TryToLeaveScript1
	coord_event 17, 10, SCENE_ROADA00_CANT_LEAVE_YET, RoadA00TryToLeaveScript1
	coord_event 20, 10, SCENE_ROADA00_CANT_LEAVE_YET, RoadA00TryToLeaveScript2
	coord_event 18, 11, SCENE_ROADA00_CANT_LEAVE_YET, RoadA00TryToLeaveScript3
	coord_event 19, 11, SCENE_ROADA00_CANT_LEAVE_YET, RoadA00TryToLeaveScript3


	def_bg_events
	bg_event 12,  6, BGEVENT_READ, RoadA00Sign

	def_object_events
	object_event 18,  8, SPRITE_CYPRESS, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_SCRIPT, 0, RoadA00ProfScript, EVENT_ROAD_A00_PROF
	object_event 23,  8, SPRITE_RIVAL, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, RoadA00RivalScript, EVENT_ROAD_A00_RIVAL
	object_event 19,  8, SPRITE_BAG, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_SCRIPT, 0, RoadA00BagScript, EVENT_ROAD_A00_BAG
	object_event 20,  3, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, RoadA00RareCandy, EVENT_ROAD_A00_RARE_CANDY
