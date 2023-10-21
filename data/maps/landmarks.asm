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
	landmark 140, 116, FastShipName 	; Vanilla
	assert_table_length NUM_LANDMARKS

SpecialMapName:      db "SPECIAL@"
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
HollowedCavernName:  db "HOLLOWED CAVERN@"
SerenityForestName:  db "SERENITY FOREST@"
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
SproutTowerName:     db "SPROUT TOWER@"
RuinsOfAlphName:     db "RUINS OF ALPH@"
UnionCaveName:       db "UNION CAVE@"
SlowpokeWellName:    db "SLOWPOKE WELL@"
RadioTowerName:      db "RADIO TOWER@"
NationalParkName:    db "NATIONAL PARK@"
TinTowerName:        db "TIN TOWER@"
BurnedTowerName:     db "BURNED TOWER@"
LighthouseName:      db "LIGHTHOUSE@"
BattleTowerName:     db "BATTLE TOWER@"
WhirlIslandsName:    db "WHIRL ISLANDS@"
MtMortarName:        db "MT.MORTAR@"
LakeOfRageName:      db "LAKE OF RAGE@"
IcePathName:         db "ICE PATH@"
DragonsDenName:      db "DRAGON'S DEN@"
VictoryRoadName:     db "VICTORY ROAD@"
PokemonLeagueName:   db "#MON LEAGUE@"
FastShipName:        db "FAST SHIP@"
