	object_const_def
	const APRICOTPIKACHUSPEECHHOUSE_LITTLE_GIRL
	const APRICOTPIKACHUSPEECHHOUSE_PIKACHU

ApricotPikachuSpeechHouse_MapScripts:
	def_scene_scripts

	def_callbacks
	callback MAPCALLBACK_TILES, LayoutBlockCallback

LayoutBlockCallback:
	changeblock  0,  0, $07
	changeblock  2,  0, $39
	changeblock  8,  0, $34
	changeblock 10,  0, $43
	changeblock 10,  2, $47
	endcallback

ApricotPikachuSpeechHouseLittleGirlScript:
	jumptextfaceplayer ApricotPikachuSpeechHouseLittleGirlText

ApricotPikachuSpeechHousePikachuScript:
	opentext
	writetext ApricotPikachuSpeechHousePikachuText
	cry PIKACHU
	waitbutton
	closetext
	end

ApricotPikachuSpeechHouseLittleGirlText:
	text "My PIKACHU is very"
	line "special to me."

	para "It has been with"
	line "me since it were"
	cont "a PICHU, and I was"
	cont "a baby!"
	done

ApricotPikachuSpeechHousePikachuText:
	text "Pika pika!"
	done

ApricotPikachuSpeechHouse_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  5,  7, APRICOT_TOWN, 3
	warp_event  6,  7, APRICOT_TOWN, 3

	def_coord_events

	def_bg_events

	def_object_events
	object_event  5,  3, SPRITE_LITTLE_GIRL, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_SCRIPT, 0, ApricotPikachuSpeechHouseLittleGirlScript, -1
	object_event  5,  4, SPRITE_PIKACHU, SPRITEMOVEDATA_POKEMON, 1, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, ApricotPikachuSpeechHousePikachuScript, -1
