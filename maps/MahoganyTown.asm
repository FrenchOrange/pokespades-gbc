DEF MAHOGANYTOWN_LAVA_COOKIE_PRICE EQU 300

	object_const_def
	const MAHOGANYTOWN_POKEFAN_M
	const MAHOGANYTOWN_GRAMPS
	const MAHOGANYTOWN_FISHER
	const MAHOGANYTOWN_LASS

MahoganyTown_MapScripts:
	def_scene_scripts
	scene_script MahoganyTownNoop1Scene, SCENE_MAHOGANYTOWN_TRY_LAVA_COOKIE
	scene_script MahoganyTownNoop2Scene, SCENE_MAHOGANYTOWN_NOOP

	def_callbacks
	callback MAPCALLBACK_NEWMAP, MahoganyTownFlypointCallback

MahoganyTownNoop1Scene:
	end

MahoganyTownNoop2Scene:
	end

MahoganyTownFlypointCallback:
	setflag ENGINE_FLYPOINT_MAHOGANY
	endcallback

MahoganyTownTryALavaCookieScript:
	showemote EMOTE_SHOCK, MAHOGANYTOWN_POKEFAN_M, 15
	applymovement MAHOGANYTOWN_POKEFAN_M, MahoganyTownLavaCookieMerchantBlocksYouMovement
	follow PLAYER, MAHOGANYTOWN_POKEFAN_M
	applymovement PLAYER, MahoganyTownPlayerStepLeftMovement
	stopfollow
	turnobject PLAYER, RIGHT
	scall LavaCookieMerchantScript
	applymovement MAHOGANYTOWN_POKEFAN_M, MahoganyTownLavaCookieMerchantReturnsMovement
	end

MahoganyTownPokefanMScript:
	faceplayer
LavaCookieMerchantScript:
	checkevent EVENT_CLEARED_ROCKET_HIDEOUT
	iftrue .ClearedRocketHideout
	scall .SellLavaCookies
	end

.ClearedRocketHideout:
	opentext
	writetext LavaCookieMerchantSoldOutText
	waitbutton
	closetext
	end

.SellLavaCookies:
	opentext
	writetext LavaCookieMerchantTryOneText
	special PlaceMoneyTopRight
	yesorno
	iffalse .Refused
	checkmoney YOUR_MONEY, MAHOGANYTOWN_LAVA_COOKIE_PRICE
	ifequal HAVE_LESS, .NotEnoughMoney
	giveitem LAVA_COOKIE
	iffalse .NoRoom
	waitsfx
	playsound SFX_TRANSACTION
	takemoney YOUR_MONEY, MAHOGANYTOWN_LAVA_COOKIE_PRICE
	special PlaceMoneyTopRight
	writetext LavaCookieMerchantSavorItText
	waitbutton
	closetext
	end

.NotEnoughMoney:
	writetext LavaCookieMerchantNotEnoughMoneyText
	waitbutton
	closetext
	end

.Refused:
	writetext LavaCookieMerchantRefusedText
	waitbutton
	closetext
	end

.NoRoom:
	writetext LavaCookieMerchantNoRoomText
	waitbutton
	closetext
	end

MahoganyTownGrampsScript:
	faceplayer
	opentext
	checkevent EVENT_CLEARED_ROCKET_HIDEOUT
	iftrue .ClearedRocketHideout
	writetext MahoganyTownGrampsText
	waitbutton
	closetext
	end

.ClearedRocketHideout:
	writetext MahoganyTownGrampsText_ClearedRocketHideout
	waitbutton
	closetext
	end

MahoganyTownFisherScript:
	jumptextfaceplayer MahoganyTownFisherText

MahoganyTownLassScript:
	jumptextfaceplayer MahoganyTownLassText

MahoganyTownSign:
	jumptext MahoganyTownSignText

MahoganyTownLavaCookieSign:
	jumptext MahoganyTownLavaCookieSignText

MahoganyGymSign:
	jumptext MahoganyGymSignText

MahoganyTownPokecenterSign:
	jumpstd PokecenterSignScript

MahoganyTownCollideDownFaceLeftMovement: ; unreferenced
	step DOWN
	big_step UP
	turn_head DOWN
MahoganyTownPlayerStepLeftMovement:
	step LEFT
	step_end

MahoganyTownLavaCookieMerchantBlocksYouMovement:
	step RIGHT
	step DOWN
	turn_head LEFT
	step_end

MahoganyTownLavaCookieMerchantReturnsMovement:
	step UP
	turn_head DOWN
	step_end

LavaCookieMerchantTryOneText:
	text "Hiya, kid!"

	para "I see you're new"
	line "in MAHOGANY TOWN."

	para "Since you're new,"
	line "you should try a"

	para "yummy LAVA COOKIE!"

	para "Right now, it can"
	line "be yours for just"
	cont "¥300! Want one?"
	done

LavaCookieMerchantSavorItText:
	text "Good! Savor it!"
	done

LavaCookieMerchantNotEnoughMoneyText:
	text "You don't have"
	line "enough money."
	done

LavaCookieMerchantRefusedText:
	text "Oh, fine then…"
	done

LavaCookieMerchantNoRoomText:
	text "You don't have"
	line "room for this."
	done

LavaCookieMerchantSoldOutText:
	text "LAVA COOKIES are"
	line "sold out."

	para "I'm packing up."
	line "Don't bother me,"
	cont "kiddo."
	done

MahoganyTownGrampsText:
	text "Are you off to see"
	line "the GYARADOS ram-"
	cont "page at the LAKE?"
	done

MahoganyTownGrampsText_ClearedRocketHideout:
	text "MAGIKARP have"
	line "returned to LAKE"
	cont "OF RAGE."

	para "That should be"
	line "good news for the"
	cont "anglers there."
	done

MahoganyTownFisherText:
	text "Since you came"
	line "this far, take the"

	para "time to do some"
	line "sightseeing."

	para "You should head"
	line "north and check"

	para "out LAKE OF RAGE"
	line "right now."
	done

MahoganyTownLassText:
	text "Visit Grandma's"
	line "shop. She sells"

	para "stuff that nobody"
	line "else has."
	done

MahoganyTownSignText:
	text "MAHOGANY TOWN"

	para "Welcome to the"
	line "Home of the Ninja"
	done

MahoganyTownLavaCookieSignText:
	text "While visiting"
	line "MAHOGANY TOWN, try"
	cont "a LAVA COOKIE!"
	done

MahoganyGymSignText:
	text "MAHOGANY TOWN"
	line "#MON GYM"
	cont "LEADER: PRYCE"

	para "The Teacher of"
	line "Winter's Harshness"
	done

MahoganyTown_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event 11,  7, MAHOGANY_MART, 1
	warp_event  6, 13, MAHOGANY_GYM, 1
	warp_event 15, 13, MAHOGANY_POKECENTER_1F, 1
	warp_event  9,  1, ROUTE_43_MAHOGANY_GATE, 3

	def_coord_events
	coord_event 19,  8, SCENE_MAHOGANYTOWN_TRY_LAVA_COOKIE, MahoganyTownTryALavaCookieScript
	coord_event 19,  9, SCENE_MAHOGANYTOWN_TRY_LAVA_COOKIE, MahoganyTownTryALavaCookieScript

	def_bg_events
	bg_event  1,  5, BGEVENT_READ, MahoganyTownSign
	bg_event  9,  7, BGEVENT_READ, MahoganyTownLavaCookieSign
	bg_event  3, 13, BGEVENT_READ, MahoganyGymSign
	bg_event 16, 13, BGEVENT_READ, MahoganyTownPokecenterSign

	def_object_events
	object_event 19,  8, SPRITE_POKEFAN_M, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, MahoganyTownPokefanMScript, EVENT_MAHOGANY_TOWN_POKEFAN_M_BLOCKS_EAST
	object_event  6,  9, SPRITE_GRAMPS, SPRITEMOVEDATA_WALK_LEFT_RIGHT, 1, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, MahoganyTownGrampsScript, -1
	object_event  6, 14, SPRITE_FISHER, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_SCRIPT, 0, MahoganyTownFisherScript, EVENT_MAHOGANY_TOWN_POKEFAN_M_BLOCKS_GYM
	object_event 12,  8, SPRITE_LASS, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, MahoganyTownLassScript, EVENT_MAHOGANY_MART_OWNERS
