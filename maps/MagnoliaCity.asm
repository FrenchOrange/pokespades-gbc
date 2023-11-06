	object_const_def
	const MAGNOLIACITY_YOUNGSTER
	const MAGNOLIACITY_LITTLE_GIRL
	const MAGNOLIACITY_SCIENTIST
	const MAGNOLIACITY_GENTLEMAN
	const MAGNOLIACITY_GAME_BOY_KID
	const MAGNOLIACITY_SUPER_NERD
	const MAGNOLIACITY_OFFICER1
	const MAGNOLIACITY_OFFICER2

MagnoliaCity_MapScripts:
	def_scene_scripts

	def_callbacks
	callback MAPCALLBACK_NEWMAP, MagnoliaCityFlypointCallback

MagnoliaCityFlypointCallback:
	setflag ENGINE_FLYPOINT_MAGNOLIA
	endcallback

MagnoliaCityYoungsterScript:
	jumptextfaceplayer MagnoliaCityYoungsterText

MagnoliaCityLittleGirlScript:
	faceplayer
	opentext
	checkevent EVENT_BEAT_GEO
	iftrue .BeatGeo
	writetext MagnoliaCityLittleGirlText
	waitbutton
	closetext
	end

.BeatGeo:
	writetext MagnoliaCityLittleGirlBeatGeoText
	waitbutton
	closetext
	end

MagnoliaCityScientistScript:
	jumptextfaceplayer MagnoliaCityScientistText

MagnoliaCityGentlemanScript:
	jumptextfaceplayer MagnoliaCityGentlemanText

MagnoliaCityGameBoyKidScript:
	jumptextfaceplayer MagnoliaCityGameBoyKidText

MagnoliaCitySuperNerdScript:
	jumptextfaceplayer MagnoliaCitySuperNerdText

MagnoliaCityOfficerScript:
	jumptextfaceplayer MagnoliaCityOfficerText

MagnoliaCitySign:
	jumptext MagnoliaCitySignText

MagnoliaGymSign:
	jumptext MagnoliaGymSignText

MagnoliaPostbox:
	jumptext MagnoliaPostboxText

TrainStationSign:
	jumptext TrainStationSignText

LockedHouse:
	jumptext LockedHouseText

MagnoliaCityPokecenterSign:
	jumpstd PokecenterSignScript

MagnoliaCityYoungsterText:
	text "I try and try, but"
	line "I keep getting"
	cont "bested by the GYM"
	cont "CHALLENGE!"

	para "One day I'll get"
	line "there."

	para "I'll show the"
	line "whole city!"
	done

MagnoliaCityLittleGirlText:
	text "My older brother"
	line "is the GYM LEADER"
	cont "of this city."

	para "You better prepare"
	line "yourself if you"
	cont "want to fight him!"
	done

MagnoliaCityLittleGirlBeatGeoText:
	text "Wait, you beat my"
	line "brother?"

	para "No way!"
	done

MagnoliaCityScientistText:
	text "I never seem to"
	line "get tired of this"
	cont "place."

	para "But if I were to"
	line "get bored, the"
	cont "train is always"

	para "here for me if I"
	line "need it."
	done

MagnoliaCityGentlemanText:
	text "I helped build"
	line "that clock tower"
	cont "many years ago."

	para "Even to this day,"
	line "it barely needs"
	cont "any touchups to"
	cont "continue running."
	done

MagnoliaCityGameBoyKidText:
	text "Thanks to a"
	line "WIRELESS ADAPTER,"
	cont "I get to play with"

	para "a friend over in"
	line "LOTUS TOWN"

	para "The connection"
	line "reach is great!"
	done

MagnoliaCitySuperNerdText:
	text "This town's train"
	line "was personally"
	cont "engineered by GEO,"
	cont "our GYM LEADER."

	para "He planned the"
	line "design all by"
	cont "himself, and his"

	para "POKéMON built the"
	line "entire structure."
	done

MagnoliaCityOfficerText:
	text "The TRAIN STATION"
	line "is currently under"
	cont "renovation."

	para "Sorry, but we can't"
	line "let you in yet."
	done

MagnoliaCitySignText:
	text "MAGNOLIA CITY"

	para "The City that's"
	line "Full Steam Ahead!"
	done

MagnoliaGymSignText:
	text "MAGNOLIA CITY"
	line "#MON GYM"
	cont "LEADER: GEO"

	para "The Metal-Bending"
	line "Supreme!"
	done

MagnoliaPostboxText:
	text "MAGNOLIA CITY"
	line "POSTBOX"
	done

TrainStationSignText:
	text "MAGNOLIA CITY"
	line "TRAIN STATION"

	para "West: PLUME TOWN"
	done

LockedHouseText:
	text "The door seems to"
	line "be locked."
	done

MagnoliaCity_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event 23, 25, MAGNOLIA_MART, 1
	warp_event 14,  5, MAGNOLIA_GYM, 1
	warp_event 39,  4, MAGNOLIA_TRAIN_STATION, 2
	warp_event 47, 17, MAGNOLIA_NET_SPEECH_HOUSE, 1
	warp_event 26, 13, MAGNOLIA_POKECENTER_1F, 1
	warp_event  7, 25, MAGNOLIA_STORIES_SPEECH_HOUSE, 1
	warp_event 38,  4, MAGNOLIA_TRAIN_STATION, 1
	warp_event 12, 33, ROAD_A04_MAGNOLIA_GATE, 3
	warp_event 13, 33, ROAD_A04_MAGNOLIA_GATE, 4
	warp_event 15,  5, MAGNOLIA_GYM, 2

	def_coord_events

	def_bg_events
	bg_event 16, 22, BGEVENT_READ, MagnoliaCitySign
	bg_event 16,  8, BGEVENT_READ, MagnoliaGymSign
	bg_event 36,  6, BGEVENT_READ, MagnoliaPostbox
	bg_event 41,  6, BGEVENT_READ, TrainStationSign
	bg_event 42,  6, BGEVENT_READ, TrainStationSign
	bg_event 35, 21, BGEVENT_READ, LockedHouse
	bg_event 25, 13, BGEVENT_READ, MagnoliaCityPokecenterSign

	def_object_events
	object_event 15, 25, SPRITE_YOUNGSTER, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, MagnoliaCityYoungsterScript, -1
	object_event 12, 16, SPRITE_LITTLE_GIRL, SPRITEMOVEDATA_WANDER, 1, 1, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_SCRIPT, 0, MagnoliaCityLittleGirlScript, -1
	object_event 31, 18, SPRITE_SCIENTIST, SPRITEMOVEDATA_SPINRANDOM_SLOW, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, MagnoliaCityScientistScript, -1
	object_event 46, 21, SPRITE_GENTLEMAN, SPRITEMOVEDATA_WALK_UP_DOWN, 2, 2, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, MagnoliaCityGentlemanScript, -1
	object_event 33,  6, SPRITE_GAMEBOY_KID, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, MagnoliaCityGameBoyKidScript, -1
	object_event 44,  6, SPRITE_SUPER_NERD, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_SCRIPT, 0, MagnoliaCitySuperNerdScript, -1
	object_event 38,  5, SPRITE_OFFICER, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, MagnoliaCityOfficerScript, EVENT_OFFICERS_IN_MAGNOLIA
	object_event 39,  5, SPRITE_OFFICER, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, MagnoliaCityOfficerScript, EVENT_OFFICERS_IN_MAGNOLIA
