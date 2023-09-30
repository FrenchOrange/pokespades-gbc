	object_const_def
	const ROADA00_PROF
	const ROADA00_RIVAL
	const ROADA00_BAG
	const ROADA00_POKE_BALL

RoadA00_MapScripts:
	def_scene_scripts
	scene_script RoadA00Noop1Scene, SCENE_ROADA00_GET_YOUR_POKEMON
	scene_script RoadA00Noop2Scene, SCENE_ROADA00_NOOP

	def_callbacks

RoadA00Noop1Scene:
	end

RoadA00Noop2Scene:
	end

RoadA00GetPokemonScript1:
	showemote EMOTE_SHOCK, PLAYER, 15
	applymovement PLAYER, RoadA00WalkUpToRivalMovement1
	sjump RoadA00GetPokemonScript_Continue

RoadA00GetPokemonScript2:
	showemote EMOTE_SHOCK, PLAYER, 15
	applymovement PLAYER, RoadA00WalkUpToRivalMovement2
	sjump RoadA00GetPokemonScript_Continue

RoadA00GetPokemonScript3:
	showemote EMOTE_SHOCK, PLAYER, 15
	applymovement PLAYER, RoadA00WalkUpToRivalMovement3
	sjump RoadA00GetPokemonScript_Continue

RoadA00GetPokemonScript4:
	showemote EMOTE_SHOCK, PLAYER, 15
	applymovement PLAYER, RoadA00WalkUpToRivalMovement4
	sjump RoadA00GetPokemonScript_Continue

RoadA00GetPokemonScript_Continue:
	turnobject ROADA00_RIVAL, LEFT
	showemote EMOTE_SHOCK, ROADA00_RIVAL, 15
	playmusic MUSIC_RIVAL_ENCOUNTER
	applymovement ROADA00_RIVAL, RoadA00WalkUpToPlayerMovement
	applymovement ROADA00_RIVAL, RoadA00WalkUpToPlayerMovement
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
;	moveobject ROADA00_PROF, 15,  8
;	appear ROADA00_PROF
;	applymovement ROADA00_PROF, RoadA00WalkUpToRivalMovement2
	showemote EMOTE_SHOCK, ROADA00_PROF, 15
	playmusic MUSIC_PROF_OAK
	opentext
	writetext RoadA00ProfThereYouAreText
	waitbutton
	closetext
	turnobject PLAYER, RIGHT
	applymovement ROADA00_RIVAL, RoadA00WalkUpToPlayerMovement
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
	pause 45
; WIP scene
	appear ROADA00_BAG
	setscene SCENE_ROADA00_NOOP
	setmapscene LOTUS_TOWN, SCENE_LOTUSTOWN_MOM_SAYS_GOODBYE
	setmapscene ROAD_A01, SCENE_ROADA01_RIVAL_FIGHT
	setevent EVENT_LOTUS_TOWN_SUPER_NERD
	setevent EVENT_PLAYERS_HOUSE_1F_PROF
	disappear ROADA00_PROF
	disappear ROADA00_RIVAL
	special FadeInQuickly
	end

RoadA00Sign:
	jumptext RoadA00SignText

RoadA00RareCandy:
	itemball RARE_CANDY

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

RoadA00WalkUpToPlayerMovement:
	step LEFT
	step_end

RoadA00PlayerWalksUpMovement:
	step UP
	turn_head LEFT
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

	def_bg_events
	bg_event 12,  6, BGEVENT_READ, RoadA00Sign

	def_object_events
	object_event 15,  8, SPRITE_ELM, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_SCRIPT, 0, ObjectEvent, EVENT_ROAD_A00_PROF
	object_event 25,  8, SPRITE_RIVAL, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, ObjectEvent, -1
	object_event 19,  9, SPRITE_BAG, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_SCRIPT, 0, ObjectEvent, EVENT_ROAD_A00_BAG
	object_event 20,  3, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, RoadA00RareCandy, EVENT_ROAD_A00_RARE_CANDY
