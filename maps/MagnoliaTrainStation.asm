	object_const_def
	const MAGNOLIATRAINSTATION_OFFICER
	const MAGNOLIATRAINSTATION_GRAMPS
	const MAGNOLIATRAINSTATION_TEACHER
	const MAGNOLIATRAINSTATION_LASS

MagnoliaTrainStation_MapScripts:
	def_scene_scripts
	scene_script MagnoliaTrainStationNoopScene, SCENE_MAGNOLIATRAINSTATION_ARRIVE_FROM_GOLDENROD

	def_callbacks

MagnoliaTrainStationNoopScene:
	end

MagnoliaTrainStationOfficerScript:
	faceplayer
	opentext
	writetext MagnoliaTrainStationOfficerAreYouComingOnBoardText
	yesorno
	iffalse .DecidedNotToRide
;	checkitem PASS
;	iffalse .PassNotInBag
	writetext MagnoliaTrainStationOfficerRightThisWayText
	waitbutton
	closetext
	applymovement MAGNOLIATRAINSTATION_OFFICER, MagnoliaTrainStationOfficerApproachTrainDoorMovement
	applymovement PLAYER, MagnoliaTrainStationPlayerApproachAndEnterTrainMovement
	setval TRUE
	special MagnetTrain
	warpcheck
	newloadmap MAPSETUP_TRAIN
	applymovement PLAYER, .MovementBoardTheTrain
	wait 20
	end

.MovementBoardTheTrain:
	turn_head DOWN
	step_end

.PassNotInBag:
	writetext MagnoliaTrainStationOfficerYouDontHaveAPassText
	waitbutton
	closetext
	end

.DecidedNotToRide:
	writetext MagnoliaTrainStationOfficerHopeToSeeYouAgainText
	waitbutton
	closetext
	end

Script_ArriveFromGoldenrod:
	applymovement MAGNOLIATRAINSTATION_OFFICER, MagnoliaTrainStationOfficerApproachTrainDoorMovement
	applymovement PLAYER, MagnoliaTrainStationPlayerLeaveTrainAndEnterStationMovement
	applymovement MAGNOLIATRAINSTATION_OFFICER, MagnoliaTrainStationOfficerReturnToBoardingGateMovement
	opentext
	writetext MagnoliaTrainStationOfficerArrivedInSaffronText
	waitbutton
	closetext
	end

MagnoliaTrainStationGrampsScript:
	jumptextfaceplayer MagnoliaTrainStationGrampsText

MagnoliaTrainStationTeacherScript:
	jumptextfaceplayer MagnoliaTrainStationTeacherText

MagnoliaTrainStationLassScript:
	jumptextfaceplayer MagnoliaTrainStationLassText

MagnoliaTrainStationOfficerApproachTrainDoorMovement:
	step UP
	step UP
	step RIGHT
	turn_head LEFT
	step_end

MagnoliaTrainStationOfficerReturnToBoardingGateMovement:
	step LEFT
	step DOWN
	step DOWN
	step_end

MagnoliaTrainStationPlayerApproachAndEnterTrainMovement:
	step UP
	step UP
	step UP
	step LEFT
	step LEFT
	step LEFT
	step UP
	step UP
	step_end

MagnoliaTrainStationPlayerLeaveTrainAndEnterStationMovement:
	step LEFT
	step LEFT
	step DOWN
	step DOWN
	step DOWN
	step DOWN
	turn_head UP
	step_end

MagnoliaTrainStationOfficerAreYouComingOnBoardText:
	text "We'll soon depart"
	line "for GOLDENROD."

	para "Are you coming on"
	line "board?"
	done

MagnoliaTrainStationOfficerRightThisWayText:
	text "May I see your"
	line "rail PASS, please?"

	para "OK. Right this"
	line "way, please."
	done

MagnoliaTrainStationOfficerYouDontHaveAPassText:
	text "Sorry, but you"
	line "don't have a PASS."
	done

MagnoliaTrainStationOfficerHopeToSeeYouAgainText:
	text "We hope to see you"
	line "again."
	done

MagnoliaTrainStationOfficerArrivedInSaffronText:
	text "We have arrived in"
	line "SAFFRON."

	para "We hope to see you"
	line "again."
	done

MagnoliaTrainStationGrampsText:
	text "Whew…"

	para "How many times"
	line "have I gone back"

	para "and forth between"
	line "KANTO and JOHTO?"
	done

MagnoliaTrainStationTeacherText:
	text "Before the MAGNET"
	line "TRAIN STATION was"

	para "built, there was a"
	line "house there."

	para "A little girl"
	line "named COPYCAT used"
	cont "to live there."
	done

MagnoliaTrainStationLassText:
	text "Hi. Do you have a"
	line "rail PASS? I have"

	para "one. All the peo-"
	line "ple in SAFFRON who"

	para "ride the MAGNET"
	line "TRAIN have PASSES."
	done

MagnoliaTrainStation_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  8, 17, MAGNOLIA_CITY, 7
	warp_event  9, 17, MAGNOLIA_CITY, 3
	warp_event  6,  5, GOLDENROD_MAGNET_TRAIN_STATION, 4
	warp_event 11,  5, GOLDENROD_MAGNET_TRAIN_STATION, 3

	def_coord_events
	coord_event 11,  6, SCENE_MAGNOLIATRAINSTATION_ARRIVE_FROM_GOLDENROD, Script_ArriveFromGoldenrod

	def_bg_events

	def_object_events
	object_event  9,  9, SPRITE_OFFICER, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, MagnoliaTrainStationOfficerScript, -1
	object_event 10, 14, SPRITE_GRAMPS, SPRITEMOVEDATA_WANDER, 1, 1, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, MagnoliaTrainStationGrampsScript, -1
	object_event  6, 11, SPRITE_TEACHER, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, MagnoliaTrainStationTeacherScript, -1
	object_event  6, 10, SPRITE_LASS, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_SCRIPT, 0, MagnoliaTrainStationLassScript, -1
