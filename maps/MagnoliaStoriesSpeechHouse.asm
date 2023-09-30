	object_const_def
	const MAGNOLIASTORIESSPEECHHOUSE_POKEFAN_M
	const MAGNOLIASTORIESSPEECHHOUSE_LITTLE_BOY

MagnoliaStoriesSpeechHouse_MapScripts:
	def_scene_scripts

	def_callbacks

MagnoliaStoriesSpeechHousePokefanMScript:
	jumptextfaceplayer MagnoliaStoriesSpeechHousePokefanMText

MagnoliaStoriesSpeechHouseLittleBoyScript:
	jumptextfaceplayer MagnoliaStoriesSpeechHouseLittleBoyText

MagnoliaStoriesSpeechHouseBookshelf:
	jumptext MagnoliaStoriesSpeechHouseBookshelfText

MagnoliaStoriesSpeechHousePokefanMText:
	text "Every so often, I"
	line "read stories about"
	cont "#MON to my son."

	para "He is so engaged"
	line "with such things,"
	cont "regardless of it's"
	cont "folklore or facts."
	done

MagnoliaStoriesSpeechHouseLittleBoyText:
	text "Daddy told me some"
	line "#mon evolve"
	cont "when traded."

	para "What's the deal"
	line "with the trading"
	cont "process to cause"
	cont "such a thing?"
	done

MagnoliaStoriesSpeechHouseBookshelfText:
	text "Books are neatly"
	line "assorted here!"
	done

MagnoliaStoriesSpeechHouse_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  4,  9, MAGNOLIA_CITY, 6
	warp_event  5,  9, MAGNOLIA_CITY, 6

	def_coord_events

	def_bg_events
	bg_event 11,  3, BGEVENT_READ, MagnoliaStoriesSpeechHouseBookshelf

	def_object_events
	object_event 10,  4, SPRITE_POKEFAN_M, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, MagnoliaStoriesSpeechHousePokefanMScript, -1
	object_event  2,  6, SPRITE_LITTLE_BOY, SPRITEMOVEDATA_WANDER, 1, 1, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, MagnoliaStoriesSpeechHouseLittleBoyScript, -1
