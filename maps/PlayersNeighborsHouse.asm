	object_const_def
	const PLAYERSNEIGHBORSHOUSE_GRAMPS
	const PLAYERSNEIGHBORSHOUSE_GRANNY

PlayersNeighborsHouse_MapScripts:
	def_scene_scripts

	def_callbacks

PlayersNeighborsGrannyScript:
	faceplayer
	opentext
	checkevent EVENT_GOT_LOTUS_TOWN_LAVA_COOKIE
	iftrue .AlreadyGotItem
	writetext PlayersNeighborsGrannyIntroText
	promptbutton
	verbosegiveitem LAVA_COOKIE
	iffalse .NoRoom
	setevent EVENT_GOT_LOTUS_TOWN_LAVA_COOKIE
	writetext PlayersNeighborsGrannyMidText
	promptbutton
.NoRoom:
	closetext
	end
.AlreadyGotItem:
	writetext PlayersNeighborsGrannyPostText
	waitbutton
	closetext
	end

PlayersNeighborGrampsScript:
	jumptextfaceplayer PlayersNeighborGrampsText

PlayersNeighborsGrannyIntroText:
	text "I just made some"
	line "LAVA COOKIES!"

	para "Here, try some!"
	done

PlayersNeighborsGrannyMidText:
	text "It's an old family"
	line "recipe, and a"

	para "delicacy in HOENN's"
	line "LAVARIDGE TOWN,"
	cont "southwest from us."

	para "Enjoy!"
	done

PlayersNeighborsGrannyPostText:
	text "How's the cookie?"

	para "Makes your tongue"
	line "sizzle, doesn't it?"
	done

PlayersNeighborGrampsText:
	text "Oh? You're heading"
	line "off from home?"

	para "Just be safe and"
	line "sound. You hear?"

	para "Youth is not to be"
	line "wasted unwisely."
	done

PlayersNeighborsHouse_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  1,  7, LOTUS_TOWN, 3
	warp_event  2,  7, LOTUS_TOWN, 3

	def_coord_events

	def_bg_events

	def_object_events
	object_event  1,  2, SPRITE_GRANNY, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, PAL_NPC_PINK, OBJECTTYPE_SCRIPT, 0, PlayersNeighborsGrannyScript, -1
	object_event  9,  5, SPRITE_GRAMPS, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, PlayersNeighborGrampsScript, -1
