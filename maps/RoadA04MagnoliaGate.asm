	object_const_def
	const ROADA04MAGNOLIAGATE_OFFICER
	const ROADA04MAGNOLIAGATE_COOLTRAINER_F
	const ROADA04MAGNOLIAGATE_PHARMACIST

RoadA04MagnoliaGate_MapScripts:
	def_scene_scripts

	def_callbacks

RoadA04MagnoliaGateCooltrainerFScript:
	jumptextfaceplayer RoadA04MagnoliaGateCooltrainerFText

RoadA04MagnoliaGatePharmacistScript:
	jumptextfaceplayer RoadA04MagnoliaGatePharmacistText

RoadA04MagnoliaGateOfficerScript:
	faceplayer
	opentext
	checktime MORN
	iftrue .morn
	checktime DAY
	iftrue .day
	checktime NITE
	iftrue .nite

.morn
	writetext RoadA04MagnoliaGateOfficerText_Morn
	waitbutton
	closetext
	end

.day
	writetext RoadA04MagnoliaGateOfficerText_Day
	waitbutton
	closetext
	end

.nite
	writetext RoadA04MagnoliaGateOfficerText_Night
	waitbutton
	closetext
	end

RoadA04MagnoliaGateOfficerText_Morn:
	text "You! Would you"
	line "look at the time!"

	para "You're going to be"
	line "late for class!"
	done

RoadA04MagnoliaGateOfficerText_Day:
	text "You! Would you"
	line "look at the time!"

	para "Shouldn't you be"
	line "in school already?"
	done

RoadA04MagnoliaGateOfficerText_Night:
	text "You! Would you"
	line "look at the time!"

	para "You should be in"
	line "bed by now!"
	done

RoadA04MagnoliaGateCooltrainerFText:
	text "Whenever I go to a"
	line "new town, I always"
	cont "take some rest at"
	cont "a #MON CENTER."

	para "That's what all"
	line "good TRAINERS do!"
	done

RoadA04MagnoliaGatePharmacistText:
	text "Hey, I've never"
	line "seen you at the"
	cont "TRAIN STATION."

	para "You say you're from"
	line "LOTUS TOWN?"

	para "Oh! So you must've"
	line "come up here to"
	cont "try and beat GEO!"

	para "Good luck!"
	done

RoadA04MagnoliaGate_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  4,  9, ROAD_A04, 5
	warp_event  5,  9, ROAD_A04, 6
	warp_event  4,  1, MAGNOLIA_CITY, 8
	warp_event  5,  1, MAGNOLIA_CITY, 9

	def_coord_events

	def_bg_events

	def_object_events
	object_event  0,  5, SPRITE_OFFICER, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, RoadA04MagnoliaGateOfficerScript, -1
	object_event  6,  6, SPRITE_COOLTRAINER_F, SPRITEMOVEDATA_SPINRANDOM_SLOW, 1, 1, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, RoadA04MagnoliaGateCooltrainerFScript, -1
	object_event  3,  2, SPRITE_PHARMACIST, SPRITEMOVEDATA_STANDING_DOWN, 1, 1, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_SCRIPT, 0, RoadA04MagnoliaGatePharmacistScript, -1
