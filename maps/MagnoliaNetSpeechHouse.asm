	object_const_def
	const MAGNOLIANETSPEECHHOUSE_POKEFAN_F
	const MAGNOLIANETSPEECHHOUSE_BUG_CATCHER

MagnoliaNetSpeechHouse_MapScripts:
	def_scene_scripts

	def_callbacks

MagnoliaNetSpeechHousePokefanFScript:
	jumptextfaceplayer MagnoliaNetSpeechHousePokefanFText

MagnoliaNetSpeechHouseBugCatcherScript:
	jumptextfaceplayer MagnoliaNetSpeechHouseBugCatcherText

MagnoliaNetSpeechHouseBookshelf:
	jumptext MagnoliaNetSpeechHouseBookshelfText

MagnoliaNetSpeechHousePokefanFText:
	text "When playing, my"
	line "son keeps wearing"
	cont "out his net. So he"

	para "ends up fixing it"
	line "everyday."

	para "Oh well, kids will"
	line "be kids."
	done

MagnoliaNetSpeechHouseBugCatcherText:
	text "I want to go back"
	line "to the forest, but"
	cont "my net needs to be"
	cont "fixed first."
	done

MagnoliaNetSpeechHouseBookshelfText:
	text "Books are neatly"
	line "assorted here!"
	done

MagnoliaNetSpeechHouse_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  1,  9, MAGNOLIA_CITY, 4
	warp_event  2,  9, MAGNOLIA_CITY, 4

	def_coord_events

	def_bg_events
	bg_event  0,  3, BGEVENT_READ, MagnoliaNetSpeechHouseBookshelf
	bg_event  1,  3, BGEVENT_READ, MagnoliaNetSpeechHouseBookshelf

	def_object_events
	object_event 10,  4, SPRITE_POKEFAN_F, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_SCRIPT, 0, MagnoliaNetSpeechHousePokefanFScript, -1
	object_event  6,  6, SPRITE_BUG_CATCHER, SPRITEMOVEDATA_SPINRANDOM_SLOW, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_SCRIPT, 0, MagnoliaNetSpeechHouseBugCatcherScript, -1
