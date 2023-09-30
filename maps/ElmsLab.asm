	object_const_def
	const ELMSLAB_PROF
	const ELMSLAB_PROFS_AIDE
	const ELMSLAB_POKE_BALL1
	const ELMSLAB_POKE_BALL2
	const ELMSLAB_POKE_BALL3

ElmsLab_MapScripts:
	def_scene_scripts

	def_callbacks

LabTryToLeaveScript:
	turnobject ELMSLAB_PROF, DOWN
	opentext
	writetext LabWhereGoingText
	waitbutton
	closetext
	applymovement PLAYER, CypresssLab_CantLeaveMovement
	end

CyndaquilPokeBallScript:
	checkevent EVENT_GOT_A_POKEMON_FROM_ELM
	iftrue LookAtCypressPokeBallScript
	refreshscreen
	pokepic CYNDAQUIL
	cry CYNDAQUIL
	waitbutton
	closepokepic
	opentext
	writetext TakeCyndaquilText
	yesorno
	iffalse DidntChooseStarterScript
	disappear ELMSLAB_POKE_BALL1
	setevent EVENT_GOT_CYNDAQUIL_FROM_ELM
	writetext ChoseStarterText
	promptbutton
	waitsfx
	getmonname STRING_BUFFER_3, CYNDAQUIL
	writetext ReceivedStarterText
	playsound SFX_CAUGHT_MON
	waitsfx
	promptbutton
	givepoke CYNDAQUIL, 5, BERRY
	closetext
	end

TotodilePokeBallScript:
	checkevent EVENT_GOT_A_POKEMON_FROM_ELM
	iftrue LookAtCypressPokeBallScript
	refreshscreen
	pokepic TOTODILE
	cry TOTODILE
	waitbutton
	closepokepic
	opentext
	writetext TakeTotodileText
	yesorno
	iffalse DidntChooseStarterScript
	disappear ELMSLAB_POKE_BALL2
	setevent EVENT_GOT_TOTODILE_FROM_ELM
	writetext ChoseStarterText
	promptbutton
	waitsfx
	getmonname STRING_BUFFER_3, TOTODILE
	writetext ReceivedStarterText
	playsound SFX_CAUGHT_MON
	waitsfx
	promptbutton
	givepoke TOTODILE, 5, BERRY
	closetext
	end

ChikoritaPokeBallScript:
	checkevent EVENT_GOT_A_POKEMON_FROM_ELM
	iftrue LookAtCypressPokeBallScript
	refreshscreen
	pokepic CHIKORITA
	cry CHIKORITA
	waitbutton
	closepokepic
	opentext
	writetext TakeChikoritaText
	yesorno
	iffalse DidntChooseStarterScript
	disappear ELMSLAB_POKE_BALL3
	setevent EVENT_GOT_CHIKORITA_FROM_ELM
	writetext ChoseStarterText
	promptbutton
	waitsfx
	getmonname STRING_BUFFER_3, CHIKORITA
	writetext ReceivedStarterText
	playsound SFX_CAUGHT_MON
	waitsfx
	promptbutton
	givepoke CHIKORITA, 5, BERRY
	closetext
	end

DidntChooseStarterScript:
	writetext DidntChooseStarterText
	waitbutton
	closetext
	end

LookAtCypressPokeBallScript:
	opentext
	writetext CypressPokeBallText
	waitbutton
	closetext
	end

CypresssLab_CantLeaveMovement:
	step UP
	step_end

LabWhereGoingText:
	text "Wait! Where"
	line "are you going?"
	done

TakeCyndaquilText:
	text "You'll take"
	line "CYNDAQUIL, the"
	cont "fire #MON?"
	done

TakeTotodileText:
	text "Do you want"
	line "TOTODILE, the"
	cont "water #MON?"
	done

TakeChikoritaText:
	text "So, you like"
	line "CHIKORITA, the"
	cont "grass #MON?"
	done

DidntChooseStarterText:
	text "Think it over"
	line "carefully."

	para "Your partner is"
	line "important."
	done

ChoseStarterText:
	text "CYPRESS: I think"
	line "that's a great"
	cont "#MON too!"
	done

ReceivedStarterText:
	text "<PLAYER> received"
	line "@"
	text_ram wStringBuffer3
	text "!"
	done

CypressPokeBallText:
	text "It contains a"
	line "#MON caught by"
	cont "PROF.CYPRESS."
	done

ElmsLab_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  4, 11, LOTUS_TOWN, 1
	warp_event  5, 11, LOTUS_TOWN, 1

	def_coord_events

	def_bg_events

	def_object_events
	object_event  5,  2, SPRITE_ELM, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, ObjectEvent, -1
	object_event  2,  9, SPRITE_SCIENTIST, SPRITEMOVEDATA_SPINRANDOM_SLOW, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, ObjectEvent, -1
	object_event  6,  3, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, CyndaquilPokeBallScript, EVENT_CYNDAQUIL_POKEBALL_ROAD_A00
	object_event  7,  3, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, TotodilePokeBallScript, EVENT_TOTODILE_POKEBALL_ROAD_A00
	object_event  8,  3, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, ChikoritaPokeBallScript, EVENT_CHIKORITA_POKEBALL_ROAD_A00
