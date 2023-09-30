	object_const_def
	const HOLLOWEDCAVERN_POKE_BALL1
	const HOLLOWEDCAVERN_ROCK1
	const HOLLOWEDCAVERN_ROCK2
	const HOLLOWEDCAVERN_ROCK3
	const HOLLOWEDCAVERN_ROCK4
	const HOLLOWEDCAVERN_POKE_BALL2
	const HOLLOWEDCAVERN_POKE_BALL3
	const HOLLOWEDCAVERN_POKE_BALL4

HollowedCavern_MapScripts:
	def_scene_scripts

	def_callbacks

HollowedCavernPotion:
	itemball POTION

HollowedCavernFullHeal:
	itemball FULL_HEAL

HollowedCavernHyperPotion:
	itemball HYPER_POTION

HollowedCavernDireHit:
	itemball DIRE_HIT

HollowedCavernRock:
	jumpstd SmashRockScript

HollowedCavernHiddenElixer:
	hiddenitem ELIXER, EVENT_DARK_CAVE_VIOLET_ENTRANCE_HIDDEN_ELIXER

HollowedCavern_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  7, 33, ROAD_A03, 1
	warp_event 17,  1, DARK_CAVE_BLACKTHORN_ENTRANCE, 2
	warp_event 35, 33, ROUTE_46, 1
	warp_event 11, 25, HOLLOWED_CAVERN, 5
	warp_event  3, 15, HOLLOWED_CAVERN, 4

	def_coord_events

	def_bg_events
	bg_event 26,  3, BGEVENT_ITEM, HollowedCavernHiddenElixer

	def_object_events
	object_event  6,  8, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, HollowedCavernPotion, EVENT_DARK_CAVE_VIOLET_ENTRANCE_POTION
	object_event 16, 14, SPRITE_ROCK, SPRITEMOVEDATA_SMASHABLE_ROCK, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, HollowedCavernRock, -1
	object_event 27,  6, SPRITE_ROCK, SPRITEMOVEDATA_SMASHABLE_ROCK, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, HollowedCavernRock, -1
	object_event  7, 14, SPRITE_ROCK, SPRITEMOVEDATA_SMASHABLE_ROCK, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, HollowedCavernRock, -1
	object_event 36, 31, SPRITE_ROCK, SPRITEMOVEDATA_SMASHABLE_ROCK, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, HollowedCavernRock, -1
	object_event 36, 22, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, HollowedCavernFullHeal, EVENT_DARK_CAVE_VIOLET_ENTRANCE_FULL_HEAL
	object_event 35,  9, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, HollowedCavernHyperPotion, EVENT_DARK_CAVE_VIOLET_ENTRANCE_HYPER_POTION
	object_event 30, 28, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, HollowedCavernDireHit, EVENT_DARK_CAVE_VIOLET_ENTRANCE_DIRE_HIT
