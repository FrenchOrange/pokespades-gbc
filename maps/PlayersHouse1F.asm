	object_const_def
	const PLAYERSHOUSE1F_MOM1
	const PLAYERSHOUSE1F_MOM2
	const PLAYERSHOUSE1F_PROF
	const PLAYERSHOUSE1F_SHOES_M
	const PLAYERSHOUSE1F_SHOES_F

PlayersHouse1F_MapScripts:
	def_scene_scripts
	scene_script PlayersHouse1FNoop1Scene, SCENE_PLAYERSHOUSE1F_MEET_MOM
	scene_script PlayersHouse1FNoop1Scene, SCENE_PLAYERSHOUSE1F_RUNNING_SHOES
	scene_script PlayersHouse1FNoop3Scene, SCENE_PLAYERSHOUSE1F_NOOP

	def_callbacks
	callback MAPCALLBACK_OBJECTS, PlayersHouse1FRunningShoesCallback

PlayersHouse1FNoop1Scene:
	end

PlayersHouse1FNoop2Scene:
	end

PlayersHouse1FNoop3Scene:
	end

PlayersHouse1FRunningShoesCallback:
	checkflag ENGINE_PLAYER_IS_FEMALE
	iftrue .PlayerIsFemale
	checkevent EVENT_GOT_RUNNING_SHOES
	iftrue .AlreadyGotShoes
	moveobject PLAYERSHOUSE1F_SHOES_M,  2,  8
	endcallback

.PlayerIsFemale:
	checkevent EVENT_GOT_RUNNING_SHOES
	iftrue .AlreadyGotShoes
	moveobject PLAYERSHOUSE1F_SHOES_F,  2,  8
	endcallback

.AlreadyGotShoes:
	endcallback

MeetMomScript:
	playmusic MUSIC_MOM
	opentext
	writetext CypressIntroText
	promptbutton
	opentext
	writetext MomIntroText
	promptbutton
	closetext
	turnobject PLAYERSHOUSE1F_MOM1, RIGHT
	showemote EMOTE_SHOCK, PLAYERSHOUSE1F_PROF, 15
	showemote EMOTE_SHOCK, PLAYERSHOUSE1F_MOM1, 15
	applymovement PLAYERSHOUSE1F_MOM1, MomWalksToPlayerMovement
	turnobject PLAYER, DOWN
	opentext
	writetext MomWalksToPlayerText
	promptbutton
	closetext
	follow PLAYERSHOUSE1F_MOM1, PLAYER
	applymovement PLAYERSHOUSE1F_MOM1, MomWalksBackMovement
	applymovement PLAYER, PlayerWalksMovement
	opentext
	writetext CypressMidText
	promptbutton
	turnobject PLAYERSHOUSE1F_MOM1, DOWN
	opentext
	writetext MomMidText
	promptbutton
	turnobject PLAYERSHOUSE1F_MOM1, LEFT
	opentext
	writetext CypressLateText
	promptbutton
	closetext
	special RestartMapMusic
	setscene SCENE_PLAYERSHOUSE1F_RUNNING_SHOES
	end

NoShoesScript:
	applymovement PLAYERSHOUSE1F_MOM1, WalkDownMovement
	opentext
	writetext MomShoesText
	promptbutton
	closetext
	applymovement PLAYERSHOUSE1F_MOM1, WalkUpMovement
	applymovement PLAYER, WalkUpMovement
	end

RunningShoesScript:
	opentext
	playsound SFX_ITEM
	disappear PLAYERSHOUSE1F_SHOES_M
	disappear PLAYERSHOUSE1F_SHOES_F
	writetext ReceivedShoesText
	waitbutton
	pause 45
	writetext ShoesFlavorText
	promptbutton
	closetext
	setevent EVENT_PLAYERS_HOUSE_MOM_1
	clearevent EVENT_PLAYERS_HOUSE_MOM_2
	setevent EVENT_GOT_RUNNING_SHOES
	setscene SCENE_PLAYERSHOUSE1F_NOOP
	end

MeetMomTalkedScript:
	playmusic MUSIC_MOM
	sjump MeetMomScript

PlayersHouse1FReceiveItemStd:
	jumpstd ReceiveItemScript
	end

MomScript:
	faceplayer
	setevent EVENT_TEMPORARY_UNTIL_MAP_RELOAD_2
	checkscene
	iffalse MeetMomTalkedScript ; SCENE_PLAYERSHOUSE1F_MEET_MOM
	opentext
	checkevent EVENT_GOT_A_POKEMON_FROM_ELM
	iftrue .GotAPokemon
	writetext MomGoodLuckText
	waitbutton
	closetext
	turnobject PLAYERSHOUSE1F_MOM1, LEFT
	end

.GotAPokemon:
	writetext MomHowAreYouDoingText
	waitbutton
	closetext
	special FadeBlackQuickly
	playmusic MUSIC_HEAL
	special HealParty
	special ReloadSpritesNoPalettes
	pause 75
	special FadeInQuickly
	special RestartMapMusic
	opentext
	writetext MomTakeCareText
	waitbutton
	closetext
	end

ProfScript:
	faceplayer
	opentext
	writetext ProfCypressText
	waitbutton
	closetext
	turnobject PLAYERSHOUSE1F_PROF, RIGHT
	end

MomWalksToPlayerMovement:
	step RIGHT
	step UP
	step UP
	step_end

MomWalksBackMovement:
	step DOWN
	step DOWN
	step LEFT
	step_end

PlayerWalksMovement:
	step DOWN
	step LEFT
	step_end

WalkDownMovement:
	step DOWN
	step_end

WalkUpMovement:
	step UP
	step_end

PlayersHouse1FMemo:
	jumptext PlayersHouse1FMemoText

CypressIntroText:
	text "CYPRESS: Sorry for"
	line "the long wait."

	para "I have everything"
	line "ready in my BAG."

	para "It took me a few"
	line "days to find the"
	cont "particular #MON"

	para "I wanted them to"
	line "start out with."
	done

MomIntroText:
	text "MOM: It's alright!"

	para "Anything to make"
	line "my baby happy."

	para "<PLAYER>'s so eager"
	line "to go on a #MON"
	cont "journey, like me"

	para "when I was the"
	line "same age."
	done

MomWalksToPlayerText:
	text "Oh, there you are"
	line "<PLAYER>! Look!"

	para "Uncle CYPRESS is"
	line "here to see you."

	para "He has the POKéMON"
	line "you and <RIVAL>"
	cont "have been asking"

	para "for ever since"
	line "SENTA's POKéMON"
	cont "LEAGUE reopened."

	para "But now, come sit"
	line "with us. Let's chat"
	cont "some more there."
	done

CypressMidText:
	text "Long time no see,"
	line "<PLAYER>!"

	para "So I heard you and"
	line "a friend of yours"
	cont "wanted a POKéMON"
	cont "to travel with?"

	para "You want to take"
	line "on the LEAGUE?"
	cont "That's great!"

	para "As a professor, I"
	line "too get excited"
	cont "thinking of what"
	para "this world still"
	line "has to offer."
	done

MomMidText:
	text "That's right!"

	para "You're used to him"
	line "being the indoors"
	cont "type, but way back"

	para "when he spent all"
	line "his time outside."

	para "Working away,"
	line "studying all the"
	cont "#MON species"
	cont "that surround us."

	para "Think of this gift"
	line "as us passing the"
	cont "torch on to you."

	para "So that you too"
	line "may live exciting"
	cont "adventures, like"
	cont "we did."

	para "With that said,"
	line "why don't you go"
	cont "find <RIVAL>, so"
	cont "we can begin?"
	done

CypressLateText:
	text "That reminds me!"
	line "I have a train to"

	para "catch in MAGNOLIA"
	line "CITY, and I don't"
	cont "want to be late."

	para "So please, find"
	line "him quick."
	done

MomGoodLuckText:
	text "Good luck, baby!"
	done

MomHowAreYouDoingText:
	text "MOM: How are you"
	line "doing, <PLAYER>?"

	para "You look a little"
	line "tired."

	para "I think you should"
	line "rest a bit."
	done

MomTakeCareText:
	text "Take care, honey!"
	done

ImBehindYouText:
	text "<PLAYER>, do it!"

	para "I'm behind you all"
	line "the way!"
	done

ProfCypressText:
	text "Find him, quick!"
	done

MomShoesText:
	text "<PLAYER>, dear!"
	line "Don't forget your"
	cont "RUNNING SHOES!"
	done

ReceivedShoesText:
	text "<PLAYER> received"
	line "RUNNING SHOES."
	done

ShoesFlavorText:
	text "<PLAYER> put on the"
	line "RUNNING SHOES."

	para "Hold the B Button"
	line "down while wearing"
	cont "the RUNNING SHOES"

	para "to race in the"
	line "great outdoors!"
	done

PlayersHouse1FMemoText:
	text "TODAY'S MEMO:"

	para "Uncle CYPRESS is"
	line "coming to deliver"
	cont "your gift."

	para "Don't forget to"
	line "pick it up!"
	done

PlayersHouse1F_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  3,  9, LOTUS_TOWN, 2
	warp_event  4,  9, LOTUS_TOWN, 2
	warp_event  9,  1, PLAYERS_HOUSE_2F, 1

	def_coord_events
	coord_event  8,  1, SCENE_PLAYERSHOUSE1F_MEET_MOM, MeetMomScript
	coord_event  3,  9, SCENE_PLAYERSHOUSE1F_RUNNING_SHOES, NoShoesScript
	coord_event  4,  9, SCENE_PLAYERSHOUSE1F_RUNNING_SHOES, NoShoesScript

	def_bg_events
	bg_event  8,  0, BGEVENT_READ, PlayersHouse1FMemo

	def_object_events
	object_event  7,  4, SPRITE_MOM, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_SCRIPT, 0, MomScript, EVENT_PLAYERS_HOUSE_MOM_1
	object_event  7,  4, SPRITE_MOM, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_SCRIPT, 0, MomScript, EVENT_PLAYERS_HOUSE_MOM_2
	object_event  4,  4, SPRITE_ELM, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_SCRIPT, 0, ProfScript, EVENT_PLAYERS_HOUSE_1F_PROF
	object_event -2, -3, SPRITE_BAG, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, RunningShoesScript, EVENT_GOT_RUNNING_SHOES
	object_event -2, -3, SPRITE_BAG, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, PAL_NPC_PINK, OBJECTTYPE_SCRIPT, 0, RunningShoesScript, EVENT_GOT_RUNNING_SHOES
