	object_const_def
	const PLAYERSHOUSE2F_CONSOLE
	const PLAYERSHOUSE2F_DOLL_1
	const PLAYERSHOUSE2F_DOLL_2
	const PLAYERSHOUSE2F_BIG_DOLL

PlayersHouse2F_MapScripts:
	def_scene_scripts

	def_callbacks
	callback MAPCALLBACK_NEWMAP, PlayersHouse2FInitializeRoomCallback
	callback MAPCALLBACK_TILES, PlayersHouse2FSetUpTileDecorationsCallback

PlayersHouse2FNoopScene: ; unreferenced
	end

PlayersHouse2FInitializeRoomCallback:
	special ToggleDecorationsVisibility
	setevent EVENT_TEMPORARY_UNTIL_MAP_RELOAD_8
	checkevent EVENT_INITIALIZED_EVENTS
	iftrue .SkipInitialization
	jumpstd InitializeEventsScript
	endcallback

.SkipInitialization:
	endcallback

PlayersHouse2FSetUpTileDecorationsCallback:
	special ToggleMaptileDecorations
	endcallback

	db 0, 0, 0 ; unused

PlayersHouseDoll1Script::
	describedecoration DECODESC_LEFT_DOLL

PlayersHouseDoll2Script:
	describedecoration DECODESC_RIGHT_DOLL

PlayersHouseBigDollScript:
	describedecoration DECODESC_BIG_DOLL

PlayersHouseGameConsoleScript:
	describedecoration DECODESC_CONSOLE

PlayersHousePosterScript:
	conditional_event EVENT_PLAYERS_ROOM_POSTER, .Script

.Script:
	describedecoration DECODESC_POSTER

PlayersHouseBonsaiTreeScript:
	jumptext BonsaiTreeText

PlayersHouseBedScript:
	jumptext PlayersHouseBedText

PlayersHousePCScript:
	opentext
	special PlayersHousePC
	iftrue .Warp
	closetext
	end
.Warp:
	warp NONE, 0, 0
	end

BonsaiTreeText:
	text "A bonsai plant!"
	para "Make sure to water"
	line "it regularly."
	done

PlayersHouseBedText:
	text "No time to sleep!"
	line "You have a #MON"
	cont "journey to start!"
	done

DebugSign:
	setflag ENGINE_POKEDEX
	setflag ENGINE_FLYPOINT_LOTUS
	setflag ENGINE_FLYPOINT_APRICOT
	setflag ENGINE_FLYPOINT_MAGNOLIA
	setflag ENGINE_ZEPHYRBADGE
	setflag ENGINE_HIVEBADGE
	setflag ENGINE_PLAINBADGE
	setflag ENGINE_FOGBADGE
	setflag ENGINE_MINERALBADGE
	setflag ENGINE_STORMBADGE
	setflag ENGINE_RISINGBADGE
	setflag ENGINE_GLACIERBADGE
	setflag ENGINE_BOULDERBADGE
	setflag ENGINE_CASCADEBADGE
	setflag ENGINE_THUNDERBADGE
	setflag ENGINE_RAINBOWBADGE
	setflag ENGINE_SOULBADGE
	setflag ENGINE_MARSHBADGE
	setflag ENGINE_VOLCANOBADGE
	setflag ENGINE_EARTHBADGE
	setevent EVENT_DECO_CARPET_1
	setevent EVENT_DECO_CARPET_2
	setevent EVENT_DECO_CARPET_3
	setevent EVENT_DECO_CARPET_4
	setevent EVENT_DECO_FAMICOM
	setevent EVENT_DECO_SNES
	setevent EVENT_DECO_N64
	giveitem MASTER_BALL, 99
	giveitem RARE_CANDY, 99
	giveitem MAX_REPEL, 99
	giveitem TOWN_MAP
	giveitem BICYCLE
	giveitem HM_CUT
	giveitem HM_FLY
	giveitem HM_SURF
	giveitem HM_STRENGTH
	giveitem HM_FLASH
	giveitem HM_WHIRLPOOL
	giveitem HM_WATERFALL
	giveitem TM_ROCK_SMASH
	opentext
	givepoke FERALIGATR, 100
	givepoke PIDGEOT, 100
	givepoke LAPRAS, 100
	givepoke PIKACHU, 100
	closetext
	setevent EVENT_GOT_RUNNING_SHOES
	setmapscene PLAYERS_HOUSE_1F, SCENE_PLAYERSHOUSE1F_NOOP
	end

PlayersHouse2F_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  6,  1, PLAYERS_HOUSE_1F, 3

	def_coord_events

	def_bg_events
	bg_event  0,  1, BGEVENT_UP, PlayersHousePCScript
	bg_event  8,  0, BGEVENT_IFSET, PlayersHousePosterScript
	bg_event  3,  0, BGEVENT_READ, PlayersHouseBonsaiTreeScript
	bg_event  1,  4, BGEVENT_READ, PlayersHouseBedScript
	bg_event  1,  5, BGEVENT_READ, PlayersHouseBedScript
	bg_event  7,  0, BGEVENT_READ, DebugSign

	def_object_events
	object_event  4,  1, SPRITE_CONSOLE, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, PlayersHouseGameConsoleScript, EVENT_PLAYERS_HOUSE_2F_CONSOLE
	object_event  1,  6, SPRITE_DOLL_1, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, PlayersHouseDoll1Script, EVENT_PLAYERS_HOUSE_2F_DOLL_1
	object_event  2,  6, SPRITE_DOLL_2, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, PlayersHouseDoll2Script, EVENT_PLAYERS_HOUSE_2F_DOLL_2
	object_event  5,  4, SPRITE_BIG_DOLL, SPRITEMOVEDATA_BIGDOLL, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, PlayersHouseBigDollScript, EVENT_PLAYERS_HOUSE_2F_BIG_DOLL
