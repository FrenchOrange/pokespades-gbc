MACRO landmark
; x, y, name
	db \1 + 8, \2 + 16
	dw \3
ENDM

Landmarks:
; entries correspond to constants/landmark_constants.asm
	table_width 4, Landmarks
	landmark  -8, -16, SpecialMapName
	landmark 116, 116, LotusTownName
	landmark 132, 116, RoadA00Name
	landmark 116, 104, RoadA01Name
	landmark 124, 100, ApricotTownName
	landmark 136, 100, RoadA02Name
	landmark 108, 100, RoadA03Name
	landmark 140,  92, SerenityForestName
	landmark 140,  84, RoadA04Name
	landmark 140,  76, MagnoliaCityName
	landmark 108,  92, HollowedCavernName
	landmark  85,  58, SproutTowerName 	; Vanilla
	landmark  76,  76, RuinsOfAlphName	; Vanilla
	landmark  84, 124, UnionCaveName	; Vanilla
	landmark  82, 124, Route33Name 		; Vanilla
	landmark  68, 124, AzaleaTownName	; Vanilla
	landmark  70, 122, SlowpokeWellName 	; Vanilla
	landmark  52, 112, Route34Name		; Vanilla
	landmark  52,  92, GoldenrodCityName 	; Vanilla
	landmark  50,  92, RadioTowerName	; Vanilla
	landmark  52,  76, Route35Name 		; Vanilla
	landmark  52,  60, NationalParkName	; Vanilla
	landmark  64,  60, Route36Name		; Vanilla
	landmark  68,  52, Route37Name		; Vanilla
	landmark  68,  44, EcruteakCityName	; Vanilla
	landmark  70,  42, TinTowerName		; Vanilla
	landmark  66,  42, BurnedTowerName	; Vanilla
	landmark  52,  44, Route38Name 		; Vanilla
	landmark  36,  48, Route39Name		; Vanilla
	landmark  36,  60, OlivineCityName	; Vanilla
	landmark  38,  62, LighthouseName	; Vanilla
	landmark  28,  56, BattleTowerName 	; Vanilla
	landmark  28,  64, Route40Name		; Vanilla
	landmark  28,  92, WhirlIslandsName 	; Vanilla
	landmark  28, 100, Route41Name 		; Vanilla
	landmark  20, 100, CianwoodCityName	; Vanilla
	landmark  92,  44, Route42Name 		; Vanilla
	landmark  84,  44, MtMortarName 	; Vanilla
	landmark 108,  44, MahoganyTownName 	; Vanilla
	landmark 108,  36, Route43Name		; Vanilla
	landmark 108,  28, LakeOfRageName 	; Vanilla
	landmark 120,  44, Route44Name		; Vanilla
	landmark 130,  38, IcePathName 		; Vanilla
	landmark 132,  44, BlackthornCityName 	; Vanilla
	landmark 132,  36, DragonsDenName 	; Vanilla
	landmark 132,  64, Route45Name 		; Vanilla
	landmark 124,  88, Route46Name 		; Vanilla
	landmark 148, 116, VictoryRoadName
	landmark 156, 116, PokemonLeagueName
	assert_table_length KANTO_LANDMARK
	landmark  52, 108, PalletTownName 	; Vanilla
	landmark  52,  92, Route1Name 		; Vanilla
	landmark  52,  76, ViridianCityName 	; Vanilla
	landmark  52,  64, Route2Name 		; Vanilla
	landmark  52,  52, PewterCityName 	; Vanilla
	landmark  64,  52, Route3Name 		; Vanilla
	landmark  76,  52, MtMoonName 		; Vanilla
	landmark  88,  52, Route4Name 		; Vanilla
	landmark 100,  52, CeruleanCityName	; Vanilla
	landmark 100,  44, Route24Name 		; Vanilla
	landmark 108,  36, Route25Name		; Vanilla
	landmark 100,  60, Route5Name 		; Vanilla
	landmark 108,  76, UndergroundName 	; Vanilla
	landmark 100,  76, Route6Name 		; Vanilla
	landmark 100,  84, VermilionCityName 	; Vanilla
	landmark  88,  60, DiglettsCaveName	; Vanilla
	landmark  88,  68, Route7Name		; Vanilla
	landmark 116,  68, Route8Name		; Vanilla
	landmark 116,  52, Route9Name		; Vanilla
	landmark 132,  52, RockTunnelName 	; Vanilla
	landmark 132,  56, Route10Name 		; Vanilla
	landmark 132,  60, PowerPlantName 	; Vanilla
	landmark 132,  68, LavenderTownName	; Vanilla
	landmark  76,  68, CeladonCityName	; Vanilla
	landmark 100,  68, SaffronCityName	; Vanilla
	landmark 116,  84, Route11Name		; Vanilla
	landmark 132,  80, Route12Name		; Vanilla
	landmark 124, 100, Route13Name		; Vanilla
	landmark 116, 112, Route14Name		; Vanilla
	landmark 104, 116, Route15Name 		; Vanilla
	landmark  68,  68, Route16Name		; Vanilla
	landmark  68,  92, Route17Name		; Vanilla
	landmark  80, 116, Route18Name		; Vanilla
	landmark  92, 116, FuchsiaCityName 	; Vanilla
	landmark  92, 128, Route19Name		; Vanilla
	landmark  76, 132, Route20Name		; Vanilla
	landmark  68, 132, SeafoamIslandsName	; Vanilla
	landmark  52, 132, CinnabarIslandName	; Vanilla
	landmark  52, 120, Route21Name		; Vanilla
	landmark  36,  68, Route22Name		; Vanilla
	landmark  28,  44, Route23Name 		; Vanilla
	landmark  28,  92, Route26Name 		; Vanilla
	landmark  12, 100, TohjoFallsName 	; Vanilla
	landmark  20,  68, Route28Name 		; Vanilla
	landmark 140, 100, SilverCaveName 	; Vanilla
	landmark 140, 116, FastShipName 	; Vanilla
	assert_table_length NUM_LANDMARKS

LotusTownName:       db "LOTUS TOWN@"
ApricotTownName:     db "APRICOT TOWN@"
MagnoliaCityName:    db "MAGNOLIA CITY@"
AzaleaTownName:      db "AZALEA TOWN@"
GoldenrodCityName:   db "GOLDENROD CITY@"
EcruteakCityName:    db "ECRUTEAK CITY@"
OlivineCityName:     db "OLIVINE CITY@"
CianwoodCityName:    db "CIANWOOD CITY@"
MahoganyTownName:    db "MAHOGANY TOWN@"
BlackthornCityName:  db "BLACKTHORN CITY@"
LakeOfRageName:      db "LAKE OF RAGE@"
HollowedCavernName:  db "HOLLOWED CAVERN@"
SerenityForestName:  db "SERENITY FOREST@"
SilverCaveName:      db "SILVER CAVE@"
SproutTowerName:     db "SPROUT TOWER@"
RuinsOfAlphName:     db "RUINS OF ALPH@"
UnionCaveName:       db "UNION CAVE@"
SlowpokeWellName:    db "SLOWPOKE WELL@"
RadioTowerName:      db "RADIO TOWER@"
PowerPlantName:      db "POWER PLANT@"
NationalParkName:    db "NATIONAL PARK@"
TinTowerName:        db "TIN TOWER@"
LighthouseName:      db "LIGHTHOUSE@"
WhirlIslandsName:    db "WHIRL ISLANDS@"
MtMortarName:        db "MT.MORTAR@"
DragonsDenName:      db "DRAGON'S DEN@"
IcePathName:         db "ICE PATH@"
PalletTownName:      db "PALLET TOWN@"
ViridianCityName:    db "VIRIDIAN CITY@"
PewterCityName:      db "PEWTER CITY@"
CeruleanCityName:    db "CERULEAN CITY@"
LavenderTownName:    db "LAVENDER TOWN@"
VermilionCityName:   db "VERMILION CITY@"
CeladonCityName:     db "CELADON CITY@"
SaffronCityName:     db "SAFFRON CITY@"
FuchsiaCityName:     db "FUCHSIA CITY@"
CinnabarIslandName:  db "CINNABAR ISLAND@"
PokemonLeagueName:   db "#MON LEAGUE@"
VictoryRoadName:     db "VICTORY ROAD@"
MtMoonName:          db "MT.MOON@"
RockTunnelName:      db "ROCK TUNNEL@"
Route1Name:          db "ROUTE 1@"
Route2Name:          db "ROUTE 2@"
Route3Name:          db "ROUTE 3@"
Route4Name:          db "ROUTE 4@"
Route5Name:          db "ROUTE 5@"
Route6Name:          db "ROUTE 6@"
Route7Name:          db "ROUTE 7@"
Route8Name:          db "ROUTE 8@"
Route9Name:          db "ROUTE 9@"
Route10Name:         db "ROUTE 10@"
Route11Name:         db "ROUTE 11@"
Route12Name:         db "ROUTE 12@"
Route13Name:         db "ROUTE 13@"
Route14Name:         db "ROUTE 14@"
Route15Name:         db "ROUTE 15@"
Route16Name:         db "ROUTE 16@"
Route17Name:         db "ROUTE 17@"
Route18Name:         db "ROUTE 18@"
Route19Name:         db "ROUTE 19@"
Route20Name:         db "ROUTE 20@"
Route21Name:         db "ROUTE 21@"
Route22Name:         db "ROUTE 22@"
Route23Name:         db "ROUTE 23@"
Route24Name:         db "ROUTE 24@"
Route25Name:         db "ROUTE 25@"
Route26Name:         db "ROUTE 26@"
Route28Name:         db "ROUTE 28@"
RoadA00Name:         db "ROAD A00@"
RoadA01Name:         db "ROAD A01@"
RoadA02Name:         db "ROAD A02@"
RoadA03Name:         db "ROAD A03@"
RoadA04Name:         db "ROAD A04@"
Route33Name:         db "ROUTE 33@"
Route34Name:         db "ROUTE 34@"
Route35Name:         db "ROUTE 35@"
Route36Name:         db "ROUTE 36@"
Route37Name:         db "ROUTE 37@"
Route38Name:         db "ROUTE 38@"
Route39Name:         db "ROUTE 39@"
Route40Name:         db "ROUTE 40@"
Route41Name:         db "ROUTE 41@"
Route42Name:         db "ROUTE 42@"
Route43Name:         db "ROUTE 43@"
Route44Name:         db "ROUTE 44@"
Route45Name:         db "ROUTE 45@"
Route46Name:         db "ROUTE 46@"
BurnedTowerName:     db "BURNED TOWER@"
FastShipName:        db "FAST SHIP@"
DiglettsCaveName:    db "DIGLETT'S CAVE@"
SeafoamIslandsName:  db "SEAFOAM ISLANDS@"
TohjoFallsName:      db "TOHJO FALLS@"
UndergroundName:     db "UNDERGROUND@"
BattleTowerName:     db "BATTLE TOWER@"
SpecialMapName:      db "SPECIAL@"
