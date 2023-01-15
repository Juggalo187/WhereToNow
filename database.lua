--[[
	Zone/Instance Database
	Version 1.1
]]

WhereToNowDatabase = {
-- 1-10
	["Dun Morogh"] = {
		["min"] = 1,
		["max"] = 10,
	},
	["Durotar"] = {
		["min"] = 1,
		["max"] = 10,
	},
	["Elwynn Forest"] = {
		["min"] = 1,
		["max"] = 10,
	},
	["Mulgore"] = {
		["min"] = 1,
		["max"] = 10,
	},
	["Teldrassil"] = {
		["min"] = 1,
		["max"] = 10,
	},
	["Tirisfal Glades"] = {
		["min"] = 1,
		["max"] = 10,
	},
-- 10-20
	["Darkshore"] = {
		["min"] = 10,
		["max"] = 20,
	},
	["Loch Modan"] = {
		["min"] = 10,
		["max"] = 20,
	},
	["Silverpine Forest"] = {
		["min"] = 10,
		["max"] = 20,
	},
	["Westfall"] = {
		["min"] = 10,
		["max"] = 20,
	},
-- 10-25
	["The Barrens"] = {
		["min"] = 10,
		["max"] = 25,
	},
	["Redridge Mountains"] = {
		["min"] = 15,
		["max"] = 25,
	},
-- 15-30
  	["Stonetalon Mountains"] = {
		["min"] = 15,
		["max"] = 27,
	},
  	["Ashenvale Forest"] = {
		["min"] = 18,
		["max"] = 30,
	},
  	["Duskwood"] = {
		["min"] = 18,
		["max"] = 30,
	},
	  ["Hillsbrad Foothills"] = {
		["min"] = 20,
		["max"] = 30,
	},
  	["Wetlands"] = {
		["min"] = 20,
		["max"] = 30,
	},
	["Thousand Needles"] = {
		["min"] = 25,
		["max"] = 35,
	},
	["Alterac Mountains"] = {
		["min"] = 30,
		["max"] = 40,
	},
  	["Arathi Highlands"] = {
		["min"] = 30,
		["max"] = 40,
	},
  	["Desolace"] = {
		["min"] = 30,
		["max"] = 40,
	},
  	["Stranglethorn Vale"] = {
		["min"] = 30,
		["max"] = 45,
	},
  	["Dustwallow Marsh"] = {
		["min"] = 35,
		["max"] = 45,
	},
  	["Badlands"] = {
		["min"] = 35,
		["max"] = 45,
	},
  	["Swamp of Sorrows"] = {
		["min"] = 35,
		["max"] = 45,
	},
  	["Feralas"] = {
		["min"] = 40,
		["max"] = 50,
	},
	["Hinterlands"] = {
		["min"] = 40,
		["max"] = 50,
	},
  	["Tanaris"] = {
		["min"] = 40,
		["max"] = 50,
	},
  	["Searing Gorge"] = {
		["min"] = 45,
		["max"] = 50,
	},
	["Azshara"] = {
		["min"] = 45,
		["max"] = 55,
	},
  	["Blasted Lands"] = {
		["min"] = 45,
		["max"] = 55,
	},
	["Un'goro Crater"] = {
		["min"] = 48,
		["max"] = 55,
	},
  	["Felwood"] = {
		["min"] = 48,
		["max"] = 55,
	},
	["Burning Steppes"] = {
		["min"] = 50,
		["max"] = 58,
	},
  	["Western Plaguelands"] = {
		["min"] = 51,
		["max"] = 58,
	},
  	["Eastern Plaguelands"] = {
		["min"] = 53,
		["max"] = 60,
	},
  	["Winterspring"] = {
		["min"] = 53,
		["max"] = 60,
	},
	["Deadwind Pass"] = {
		["min"] = 55,
		["max"] = 60,
	},
  	["Silithus"] = {
		["min"] = 55,
		["max"] = 60,
	},
}

WhereToNowDatabaseDungeon = {
	["Ragefire Chasm"] = {
		["zone"] = "Durotar",
		["limit"] = 10,
		["min"] = 13,
		["max"] = 18,
	},
	["Wailing Caverns"] = {
		["zone"] = "The Barrens",
		["limit"] = 10,
		["min"] = 17,
		["max"] = 24,
	},
	["The Deadmines"] = {
		["zone"] = "Westfall",
		["limit"] = 10,
		["min"] = 17,
		["max"] = 24,
	},
	["Shadowfang Keep"] = {
		["zone"] = "Silverpine Forest",
		["limit"] = 14,
		["min"] = 22,
		["max"] = 30,
	},
	["Blackfathom Deeps"] = {
		["zone"] = "Darkshore",
		["limit"] = 15,
		["min"] = 23,
		["max"] = 32,
	},
	["Stormwind Stockade"] = {
		["zone"] = "Elwynn Forest",
		["limit"] = 15,
		["min"] = 22,
		["max"] = 30,
	},
	["Razorfen Kraul"] = {
		["zone"] = "The Barrens",
		["limit"] = 25,
		["min"] = 29,
		["max"] = 38,
	},
	["The Crescent Grove"] = {
		["zone"] = "Ashenvale",
		["limit"] = 25,
		["min"] = 32,
		["max"] = 38,
	},
	["Gnomeregan"] = {
		["zone"] = "Dun Morogh",
		["limit"] = 19,
		["min"] = 29,
		["max"] = 38,
	},
	["Razorfen Downs"] = {
		["zone"] = "The Barrens",
		["limit"] = 35,
		["min"] = 36,
		["max"] = 46,
	},
	["The Scarlet Monastery: Graveyard"] = {
		["zone"] = "Tirisfal Glades",
		["limit"] = 20,
		["min"] = 27,
		["max"] = 36,
	},
	["The Scarlet Monastery: Library"] = {
		["zone"] = "Tirisfal Glades",
		["limit"] = 20,
		["min"] = 28,
		["max"] = 39,
	},
	["The Scarlet Monastery: Armory"] = {
		["zone"] = "Tirisfal Glades",
		["limit"] = 20,
		["min"] = 32,
		["max"] = 41,
	},
	["The Scarlet Monastery: Cathedral"] = {
		["zone"] = "Tirisfal Glades",
		["limit"] = 20,
		["min"] = 35,
		["max"] = 45,
	},
	["Uldaman"] = {
		["zone"] = "Badlands",
		["limit"] = 30,
		["min"] = 40,
		["max"] = 51,
	},
	["Maraudon Orange"] = {
		["zone"] = "Desolace",
		["limit"] = 30,
		["min"] = 47,
		["max"] = 55,
	},
	["Maraudon Purple"] = {
		["zone"] = "Desolace",
		["limit"] = 30,
		["min"] = 45,
		["max"] = 55,
	},
	["Maraudon Princess"] = {
		["zone"] = "Desolace",
		["limit"] = 30,
		["min"] = 47,
		["max"] = 55,
	},
	["Zul'Farrak"] = {
		["zone"] = "Tanaris",
		["limit"] = 35,
		["min"] = 44,
		["max"] = 54,
	},
	["Temple of Atal'Hakkar"] = {
		["zone"] = "Swamp of Sorrows",
		["limit"] = 45,
		["min"] = 50,
		["max"] = 60,
	},
	["Blackrock Depths"] = {
		["zone"] = "Searing Gorge",
		["limit"] = 45,
		["min"] = 52,
		["max"] = 60,
	},
	["Blackrock Depths Arena"] = {
		["zone"] = "Searing Gorge",
		["limit"] = 45,
		["min"] = 52,
		["max"] = 60,
	},
	["Blackrock Depths Emperor"] = {
		["zone"] = "Searing Gorge",
		["limit"] = 45,
		["min"] = 54,
		["max"] = 60,
	},
	["Dire Maul: East"] = {
		["zone"] = "Feralas",
		["limit"] = 45,
		["min"] = 55,
		["max"] = 60,
	},
	["Dire Maul: West"] = {
		["zone"] = "Feralas",
		["limit"] = 45,
		["min"] = 57,
		["max"] = 60,
	},
	["Dire Maul: North"] = {
		["zone"] = "Feralas",
		["limit"] = 45,
		["min"] = 57,
		["max"] = 60,
	},
	["Lower Blackrock Spire"] = {
		["zone"] = "Burning Steppes",
		["limit"] = 45,
		["min"] = 55,
		["max"] = 60,
	},
	["Stratholme"] = {
		["zone"] = "Eastern Plaguelands",
		["limit"] = 45,
		["min"] = 58,
		["max"] = 60,
	},
	["Scholomance"] = {
		["zone"] = "Western Plaguelands",
		["limit"] = 45,
		["min"] = 58,
		["max"] = 60,
	},
	--turtle
	["Karazhan Crypt"] = {
		["zone"] = "Deadwind Pass",
		["limit"] = 45,
		["min"] = 58,
		["max"] = 60,
	},
	["Caverns of Time: Black Morass"] = {
		["zone"] = "Tanaris",
		["limit"] = 45,
		["min"] = 60,
		["max"] = 60,
	},
	["Stormwind Vault"] = {
		["zone"] = "Elwynn Forest",
		["limit"] = 45,
		["min"] = 60,
		["max"] = 60,
	},
}