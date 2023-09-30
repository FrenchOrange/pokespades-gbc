	object_const_def
	const APRICOTTOWN_CLERK
	const APRICOTTOWN_TEACHER
	const APRICOTTOWN_TWIN
	const APRICOTTOWN_GENTLEMAN
	const APRICOTTOWN_POKE_BALL

ApricotTown_MapScripts:
	def_scene_scripts
	scene_script ApricotCityNoop1Scene, SCENE_APRICOTTOWN_NOOP
	scene_script ApricotCityNoop2Scene, SCENE_APRICOTTOWN_MEET_CLERK

	def_callbacks
	callback MAPCALLBACK_NEWMAP, ApricotCityFlypointCallback

ApricotCityNoop1Scene:
	end

ApricotCityNoop2Scene:
	end

ApricotCityFlypointCallback:
	setflag ENGINE_FLYPOINT_APRICOT
	endcallback

ApricotMartClerk1:
	showemote EMOTE_SHOCK, APRICOTTOWN_CLERK, 15
	playmusic MUSIC_SHOW_ME_AROUND
	applymovement APRICOTTOWN_CLERK, MartClerkDown1Movement
	opentext
	writetext MartClerkIntroText
	waitbutton
	closetext
	follow APRICOTTOWN_CLERK, PLAYER
	applymovement APRICOTTOWN_CLERK, MartClerkRight1Movement
	sjump MeetClerkScript
ApricotMartClerk2:
	showemote EMOTE_SHOCK, APRICOTTOWN_CLERK, 15
	playmusic MUSIC_SHOW_ME_AROUND
	applymovement APRICOTTOWN_CLERK, MartClerkDown2Movement
	opentext
	writetext MartClerkIntroText
	waitbutton
	closetext
	follow APRICOTTOWN_CLERK, PLAYER
	applymovement APRICOTTOWN_CLERK, MartClerkRight2Movement
	sjump MeetClerkScript
ApricotMartClerk3:
	showemote EMOTE_SHOCK, APRICOTTOWN_CLERK, 15
	playmusic MUSIC_SHOW_ME_AROUND
	applymovement APRICOTTOWN_CLERK, MartClerkDown3Movement
	opentext
	writetext MartClerkIntroText
	waitbutton
	closetext
	follow APRICOTTOWN_CLERK, PLAYER
	applymovement APRICOTTOWN_CLERK, MartClerkRight3Movement
	sjump MeetClerkScript
    
MeetClerkScript:
	turnobject PLAYER, UP
	stopfollow
	opentext
	writetext MartClerkFirstStopText
	waitbutton
	closetext
	turnobject APRICOTTOWN_CLERK, LEFT
	turnobject PLAYER, RIGHT
	opentext
	writetext MartClerkBeforePotionText
	waitbutton
	verbosegiveitem POTION
	closetext
	opentext
	writetext MartClerkAfterPotionText
	waitbutton
	closetext
	applymovement APRICOTTOWN_CLERK, MartClerkLeave1Movement
	special RestartMapMusic
	turnobject PLAYER, UP
	applymovement APRICOTTOWN_CLERK, MartClerkLeave2Movement
	playsound SFX_ENTER_DOOR
	disappear APRICOTTOWN_CLERK
	clearevent EVENT_CLERK_VISIBLE_IN_APRICOT
	setscene SCENE_APRICOTTOWN_NOOP
	waitsfx
	end

MartClerkDown1Movement:
	step DOWN
	turn_head LEFT
	step_end

MartClerkDown2Movement:
	step DOWN
	step DOWN
	turn_head LEFT
	step_end

MartClerkDown3Movement:
	step DOWN
	step DOWN
	step DOWN
	turn_head LEFT
	step_end

MartClerkRight1Movement:
	step DOWN
	step RIGHT
	step RIGHT
	step RIGHT
	step RIGHT
	step RIGHT
	step RIGHT
	step RIGHT
	step RIGHT
	turn_head UP
	step_end

MartClerkRight2Movement:
	step RIGHT
	step RIGHT
	step RIGHT
	step RIGHT
	step RIGHT
	step RIGHT
	step RIGHT
	step RIGHT
	turn_head UP
	step_end

MartClerkRight3Movement:
	step UP
	step RIGHT
	step RIGHT
	step RIGHT
	step RIGHT
	step RIGHT
	step RIGHT
	step RIGHT
	step RIGHT
	turn_head UP
	step_end

MartClerkLeave1Movement:
	step UP
	step LEFT
	turn_head UP
	step_end

MartClerkLeave2Movement:
	step UP
	step_end

MartClerkIntroText:
	text "Hi! I work at the"
	line "FRIENDLY SHOP."

	para "May I get you to"
	line "come with me?"
	done

MartClerkFirstStopText:
	text "Here's what we call"
	line "a FRIENDLY SHOP."

	para "You can tell by"
	line "its blue roof."

	para "We sell a variety"
	line "of goods, such as"
	cont "# BALLS for"
	cont "catching #MON."
	done

MartClerkBeforePotionText:
	text "Here, I'd like you"
	line "to have this, as a"
	cont "promotional item."
	done

MartClerkAfterPotionText:
	text "Make sure to drop"
	line "by if you ever run"
	cont "out of items!"
	done

ApricotTeacherScript:
	jumptextfaceplayer ApricotTeacherText

ApricotTwinScript:
	faceplayer
	opentext
	writetext ApricotTwinText
	waitbutton
	closetext
	turnobject APRICOTTOWN_TWIN, UP
	end

ApricotGentlemanScript:
	jumptextfaceplayer ApricotGentlemanText

Route30Antidote:
	itemball ANTIDOTE

ApricotCitySign:
	jumptext ApricotCitySignText

ApricotCitySign2:
	jumptext ApricotCitySign2Text

ApricotCityPokecenterSign:
	jumpstd PokecenterSignScript

ApricotTeacherText:
	text "The lights embue"
	line "a beautiful glow"
	cont "at night, don't"
	cont "you think?"
	done

ApricotTwinText:
	text "See those crops?"
	line "My parents planted"
	cont "them a week ago."

	para "I hope they grow"
	line "quick and strong!"
	done

ApricotGentlemanText:
	text "There is something"
	line "across the water,"
	cont "but I have no"

	para "POKéMON to aid me"
	line "across the river."
	done

ApricotCitySignText:
	text "APRICOT TOWN"

	para "The Town of Pure"
	line "Quaintness"
	done

ApricotCitySign2Text:
	text "APRICOT TOWN CROPS"
	done

ApricotTown_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event 28,  7, APRICOT_MART, 1
	warp_event 14,  7, APRICOT_POKECENTER_1F, 1
	warp_event 17, 15, APRICOT_PIKACHU_SPEECH_HOUSE, 1
	warp_event  7, 15, APRICOT_CROP_SPEECH_HOUSE, 1
	warp_event  2,  4, ROAD_A01_APRICOT_GATE, 3
	warp_event  2,  5, ROAD_A01_APRICOT_GATE, 4

	def_coord_events
	coord_event 20,  8, SCENE_APRICOTTOWN_MEET_CLERK, ApricotMartClerk1
	coord_event 20,  9, SCENE_APRICOTTOWN_MEET_CLERK, ApricotMartClerk2
	coord_event 20, 10, SCENE_APRICOTTOWN_MEET_CLERK, ApricotMartClerk3

	def_bg_events
	bg_event 18,  7, BGEVENT_READ, ApricotCitySign
	bg_event  6,  2, BGEVENT_READ, ApricotCitySign2
	bg_event 13,  7, BGEVENT_READ, ApricotCityPokecenterSign

	def_object_events
	object_event 21,  7, SPRITE_CLERK, SPRITEMOVEDATA_STANDING_DOWN, 0, 1, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_SCRIPT, 0, ObjectEvent, EVENT_CLERK_IN_FRIENDLY_SHOP
	object_event 13, 12, SPRITE_TEACHER, SPRITEMOVEDATA_WANDER, 1, 1, -1, -1, PAL_NPC_PINK, OBJECTTYPE_SCRIPT, 0, ApricotTeacherScript, -1
	object_event 10,  3, SPRITE_TWIN, SPRITEMOVEDATA_STANDING_UP, 1, 0, -1, -1, PAL_NPC_PINK, OBJECTTYPE_SCRIPT, 0, ApricotTwinScript, -1
	object_event 20, 18, SPRITE_GENTLEMAN, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, ApricotGentlemanScript, -1
	object_event 27, 18, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, Route30Antidote, EVENT_APRICOT_TOWN_ANTIDOTE
