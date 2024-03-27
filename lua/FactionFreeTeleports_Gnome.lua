--[[
Teleport LUA for the Faction Free Module. This will map to the goblin NPC
so that the menu items can correspond to their different npc_text Gossip Headers
when calling the GossipSendMenu option.

All references to creature, npc_text, and broadcast_text will share the same
number. For the Golbin NPC this will be 500000, for the Gnome NPC, this will be 500001.

LUA is part of the mod-Faction-Free AzerothCore module hosted at:
https://github.com/gitdalisar/mod-Faction-Free

Maintained by GitDalisar
]]--

--This will correspond to the NPC you wish to use this LUA script with
local creatureID = 500001

--Main menu to go into the area of the map and type of instance you are looking for
local function OnGossipHello(event, player, object)
  player:GossipMenuAddItem(0, "Capital Cities", 1, 100)
  player:GossipMenuAddItem(0, "Eastern Kingdom Dungeons", 1, 200)
  player:GossipMenuAddItem(0, "Eastern Kingdom Raids", 1, 300)
  player:GossipMenuAddItem(0, "Kalimdor Dungeons", 1, 400)
  player:GossipMenuAddItem(0, "Kalimdor Raids", 1, 500)
  player:GossipMenuAddItem(0, "Outland Dungeons", 1, 600)
  player:GossipMenuAddItem(0, "Outland Raids", 1, 700)
  player:GossipMenuAddItem(0, "Northrend Dungeons", 1, 800)
  player:GossipMenuAddItem(0, "Northrend Raids", 1, 900)
  player:GossipSendMenu(500001, object, MenuId)
end

--Sub menu options based on the above selection
local function OnGossipSelect(event, player, object, sender, intid, code, menuid)
  if (intid == 100) then
    -- Capital Cities
    player:GossipMenuAddItem(0, "Dalaran", 1, intid + 1) -- Dalaran = 101
    player:GossipMenuAddItem(0, "Darnassus", 1, intid + 2) -- Darnassus = 102
    player:GossipMenuAddItem(0, "Exodar", 1, intid + 3) -- Exodar = 103
    player:GossipMenuAddItem(0, "Ironforge", 1, intid + 4) -- Ironforge = 104
    player:GossipMenuAddItem(0, "Orgrimmar", 1, intid + 5) -- Orgrimmar = 105
    player:GossipMenuAddItem(0, "Silvermoon", 1, intid + 6) -- Silvermoon = 106
    player:GossipMenuAddItem(0, "Shattrath", 1, intid + 7) -- Shattrath = 107
    player:GossipMenuAddItem(0, "Stormwind", 1, intid + 8) -- Stormwind = 108
    player:GossipMenuAddItem(0, "Thunder Bluff", 1, intid + 9) -- Thunder Bluff = 109
    player:GossipMenuAddItem(0, "Undercity", 1, intid + 10) -- Undercity = 110
  elseif (intid == 200) then
    -- Eastern Kingdom Dungeons
    player:GossipMenuAddItem(0, "Blackrock Depths - Blackrock Mountain", 1, intid + 1) -- Blackrock Depths = 201
    player:GossipMenuAddItem(0, "Blackrock Spire - Blackrock Mountain", 1, intid + 2) -- Blackrock Spire = 202
    player:GossipMenuAddItem(0, "Deadmines - Westfall", 1, intid + 3) -- Deadmines = 203
    player:GossipMenuAddItem(0, "Gnomeregan - Dun Morogh", 1, intid + 4) -- Gnomeregan = 204
    player:GossipMenuAddItem(0, "Scarlet Monastery - Tirisfal Glades", 1, intid + 5) -- Scarlet Monastery = 205
    player:GossipMenuAddItem(0, "Scholomance - Western Plaguelands", 1, intid + 6) -- Scholomance = 206
    player:GossipMenuAddItem(0, "Shadowfang Keep - Silverpine Forest", 1, intid + 7) -- Shadowfang Keep = 207
    player:GossipMenuAddItem(0, "Stockades - Stormwind City", 1, intid + 8) -- Stockades = 208
    player:GossipMenuAddItem(0, "Stratholme - Eastern Plaguelands", 1, intid + 9) -- Stratholme = 209
    player:GossipMenuAddItem(0, "Sunken Temple - Swamp of Sorrows", 1, intid + 10) -- Sunken Temple = 210
    player:GossipMenuAddItem(0, "Uldaman - Badlands", 1, intid + 11) -- Uldaman = 211
  elseif (intid == 300) then
    -- Eastern Kingdom Raids
    player:GossipMenuAddItem(0, "Blackwing Lair - Blackrock Mountain", 1, intid + 1) -- Blackwing Lair = 301
    player:GossipMenuAddItem(0, "Karazhan - Deadwind Pass", 1, intid + 2) -- Karazhan = 302
    player:GossipMenuAddItem(0, "Molten Core - Blackrock Mountain", 1, intid + 3) -- Molten Core = 303
    player:GossipMenuAddItem(0, "Zul'Gurub - Stranglethorn Vale", 1, intid + 4) -- Zul'Gurub = 304   
  elseif (intid == 400) then
    -- Kalimdor Dungeons
    player:GossipMenuAddItem(0, "Black Morass - Caverns of Time (Tanaris)", 1, intid + 1) -- Black Morass = A
    player:GossipMenuAddItem(0, "Blackfathom Deeps - Ashenvale", 1, intid + 2) -- Blackfathom Deeps = A
    player:GossipMenuAddItem(0, "Culling of Stratholme - Caverns of Time (Tanaris)", 1, intid + 3) -- Culling  of Stratholme = 403
    player:GossipMenuAddItem(0, "Dire Maul East - Feralas", 1, intid + 4) -- Dire Mau East = 404
    player:GossipMenuAddItem(0, "Dire Maul West - Feralas", 1, intid + 5) -- Dire Mau lWest = 405
    player:GossipMenuAddItem(0, "Dire Maul North - Feralas", 1, intid + 6) -- Dire Maul North = 406
    player:GossipMenuAddItem(0, "Maraudon - Desolace", 1, intid + 7) -- Maraudon = 407
    player:GossipMenuAddItem(0, "Old Hillsbrad Foothills - Caverns of Time (Tanaris)", 1, intid + 8) -- Old Hillsbrad Foothills = 408
    player:GossipMenuAddItem(0, "Ragefire Chasm - Orgrimmar", 1, intid + 9) -- Ragefire Chasm = 409
    player:GossipMenuAddItem(0, "Razorfen Downs - Southern Barrens", 1, intid + 10) -- Razorfen Downs = 410
    player:GossipMenuAddItem(0, "Razorfen Kraul - Southern Barrens", 1, intid + 11) -- Razorfen Kraul = 411
    player:GossipMenuAddItem(0, "Wailing Caverns - The Barrens", 1, intid + 12) -- Wailing Caverns = 412
    player:GossipMenuAddItem(0, "Zul'Farrak - Tanaris", 1, intid + 13) -- Zul'Farrak = 413
  elseif (intid == 500) then
    -- Kalimdor Raids
    player:GossipMenuAddItem(0, "Ahn'Qiraj - Silithus", 1, intid + 1) -- Ahn'Qiraj = 501
    player:GossipMenuAddItem(0, "Hyjal Summit - Caverns of Time (Tanaris)", 1, intid + 2) -- Hyjal Summit = 502
    player:GossipMenuAddItem(0, "Ruins of Ahn'Qiraj - Silithus", 1, intid + 3) -- Ruins of Ahn'Qiraj = 503    
  elseif (intid == 600) then
    -- Outland Dungeons
    player:GossipMenuAddItem(0, "Arcatraz - Netherstorm", 1, intid + 1) -- Arcatraz Crypts = 601
    player:GossipMenuAddItem(0, "Auchenai Crypts - Terokkar Forest", 1, intid + 2) -- Auchenai Crypts = 602
    player:GossipMenuAddItem(0, "Blood Furnace - Hellfire Peninsula", 1, intid + 3) -- Blood Furnace = 603
    player:GossipMenuAddItem(0, "Botanica - Netherstorm", 1, intid + 4) -- Botanica = 604
    player:GossipMenuAddItem(0, "Hellfire Ramparts - Hellfire Peninsula", 1, intid + 5) -- Hellfire Ramparts = 605
    player:GossipMenuAddItem(0, "Magisters Terrace - Isle of Quel'Danas", 1, intid + 6) -- Magisters Terrace = 606
    player:GossipMenuAddItem(0, "Mana Tombs - Terokkar Forest", 1, intid + 7) -- Mana Tombs = 607
    player:GossipMenuAddItem(0, "Mechanar - Netherstorm", 1, intid + 8) -- Mechanar = 608
    player:GossipMenuAddItem(0, "Serpentshrine Cavern - Zangarmarsh", 1, intid + 9) -- Serpentshrine Cavern = 609
    player:GossipMenuAddItem(0, "Sethekk Halls - Terokkar Forest", 1, intid + 10) -- Sethekk Halls = 610
    player:GossipMenuAddItem(0, "Shadow Labyrinth - Terokkar Forest", 1, intid + 11) -- Shadow Labyrinth = 611
    player:GossipMenuAddItem(0, "Shattered Halls - Hellfire Peninsula", 1, intid + 12) -- Shattered Halls = 612
    player:GossipMenuAddItem(0, "Slave Pens - Zangarmarsh", 1, intid + 13) -- Slave Pens = 613
    player:GossipMenuAddItem(0, "Steamvault - Coilfang Reservoir (Zangarmarsh)", 1, intid + 14) -- Steamvault = 614
    player:GossipMenuAddItem(0, "Underbog - Coilfang Reservoir (Zangarmarsh)", 1, intid + 15) -- Underbog = 615
    elseif (intid == 700) then
    -- Outland Raids
    player:GossipMenuAddItem(0, "Black Temple - Shadowmoon Valley", 1, intid + 1) -- Black Temple = 701
    player:GossipMenuAddItem(0, "Gruul's Lair - Blade's Edge Mountains", 1, intid + 2) -- Gruul's Lair = 702
    player:GossipMenuAddItem(0, "Magtheridon's Lair - Hellfire Peninsula", 1, intid + 3) -- Magtheridon's Lair = 703
    player:GossipMenuAddItem(0, "Sunwell Plateau - Isle of Quel'Danas", 1, intid + 4) -- Sunwell Plateau = 704
    player:GossipMenuAddItem(0, "Tempest Keep - Netherstorm", 1, intid + 5) -- Tempest Keep = 705
    player:GossipMenuAddItem(0, "Zul'Aman - Ghostlands", 1, intid + 6) -- Zul'Aman = 706
  elseif (intid == 800) then
    -- Northrend Dungeons
    player:GossipMenuAddItem(0, "Ahn'Kahet - Dragonblight", 1, intid + 1) -- Ahn'Kahet = 801
    player:GossipMenuAddItem(0, "Azjol-Nerub - Dragonblight", 1, intid + 2) -- Azjol-Nerub = 802
    player:GossipMenuAddItem(0, "Drak'Tharon Keep - Grizzly Hills", 1, intid + 3) -- Drak'Tharon Keep = 803
    player:GossipMenuAddItem(0, "Gundrak - Zul'Drak", 1, intid + 4) -- Gundrak = 804
    player:GossipMenuAddItem(0, "Halls of Lightning - Storm Peaks", 1, intid + 5) -- Halls of Lightning = 805
    player:GossipMenuAddItem(0, "Halls of Reflection - Icecrown Citadel", 1, intid + 6) -- Halls of Reflection = 806
    player:GossipMenuAddItem(0, "Halls of Stone - Storm Peaks", 1, intid + 7) -- Halls of Stone = 807
    player:GossipMenuAddItem(0, "Nexus - Coldara (Borean Tundra)", 1, intid + 8) -- Nexus = 808
    player:GossipMenuAddItem(0, "Oculus - Coldara (Borean Tundra)", 1, intid + 9) -- Oculus = 809
    player:GossipMenuAddItem(0, "Pit of Saron - Icecrown Citadel", 1, intid + 10) -- Pit of Saron = 810
    player:GossipMenuAddItem(0, "Trial of the Champion - Icecrown Citadel", 1, intid + 11) -- Trial of the Champion = 811
    player:GossipMenuAddItem(0, "Utgarde Keep - Howling Fjord", 1, intid + 12) -- Utgarde Keep = 812
    player:GossipMenuAddItem(0, "Utgarde Pinnacle - Howling Fjord", 1, intid + 13) -- Utgarde Pinnacle = 803
    player:GossipMenuAddItem(0, "Violet Hold - Dalaran (Northrend)", 1, intid + 14) -- Violet Hold = 814
  elseif (intid == 900) then
    -- Northrend Raids   
    player:GossipMenuAddItem(0, "Eye of Eternity - Coldara (Borean Tundra)", 1, intid + 1) -- EyeOfEternity = 901
    player:GossipMenuAddItem(0, "Icecrown Citadel - Icecrown", 1, intid + 2) -- IcecrownCitadelRaid = 902
    player:GossipMenuAddItem(0, "Naxxramas - Dragonblight", 1, intid + 3) -- Naxxramas = 903
    player:GossipMenuAddItem(0, "Obsidian Sanctum - Dragonblight", 1, intid + 4) -- ObsidianSanctum = 904
    player:GossipMenuAddItem(0, "Onyxia's Lair - Dustwallow Marsh", 1, intid + 5) -- OnyxiasLair = 905
    player:GossipMenuAddItem(0, "Ruby Sanctum - Dragonblight", 1, intid + 6) -- RubySanctum = 906
    player:GossipMenuAddItem(0, "Trial of the Champion - Icecrown", 1, intid + 7) -- TrialOfTheCrusader = 907
    player:GossipMenuAddItem(0, "Ulduar - Storm Peaks", 1, intid + 8) -- Ulduar = 908
  end
  player:GossipSendMenu(500003,object,MenuId)
end

--Tertiary sub menu that instead of presenting options will simply teleport the player
local function OnGossipSelectTeleport(event, player, object, sender, intid, code, menuid)
  -- Capital Cities
  if (intid == 101) then
    player:Teleport(571, 5788.603, 472.3689, 657.658, 3.1) --Dalaran Faction-Free Teleporter Network Node
  elseif (intid == 102) then
    player:Teleport(1, 9870.397, 2496.041, 1315.8765, 3.1) --Darnassus Faction-Free Teleporter Network Node
  elseif (intid == 103) then
    player:Teleport(530, -4036.6772, -11807.044, 9.058392, 0.7) --Exodar Faction-Free Teleporter Network Node
  elseif (intid == 104) then
    player:Teleport(0, -4907.117, -932.803, 501.56082, 2.7) --Ironforge Faction-Free Teleporter Network Node
  elseif (intid == 105) then
      player:Teleport(1, 1660.9198, -4325.259, 61.936188, 3.1) --Orgrimmar Faction-Free Teleporter Network Node
  elseif (intid == 106) then
      player:Teleport(530, 9477.896, -7297.8223, 14.354342, 4.6) --Silvermoon Faction-Free Teleporter Network Node
  elseif (intid == 107) then
    player:Teleport(530, -1811.6487, 5289.13, -12.428035, 6.2) --Shattrath Faction-Free Teleporter Network Node
  elseif (intid == 108) then
    player:Teleport(0, -8842.421, 472.01294, 109.62057, 5.9) --Stormind Faction-Free Teleporter Network Node
  elseif (intid == 109) then
    player:Teleport(1, -1217.6161, 57.625187, 129.6397, 1) --Thunder Bluff Faction-Free Teleporter Network Node
  elseif (intid == 110) then
    player:Teleport(0, 1580.2351, 242.97531, -62.07735, 3.5) --Undercity Faction-Free Teleporter Network Node
    -- Eastern Kingdom Dungeons
  elseif (intid == 201) then
    player:Teleport(0, -7179.34, -921.212, 165.821, 5.09599) --Blackrock Depths
  elseif (intid == 202) then
    player:Teleport(0, -7527.05, -1226.77, 285.732, 5.29626) --Blackrock Spire
  elseif (intid == 203) then
    player:Teleport(0, -11208.7, 1673.52, 24.6361, 1.51067) --Deadmines
  elseif (intid == 204) then
    player:Teleport(0, -5163.54, 925.423, 257.181, 1.57423) --Gnomeregan
  elseif (intid == 205) then
    player:Teleport(0, 2872.6, -764.398, 160.332, 5.05735) --Scarlet Monastery
  elseif (intid == 206) then
    player:Teleport(0, 1269.64, -2556.21, 93.6088, 0.620623) --Scholomance
  elseif (intid == 207) then
    player:Teleport(0, -234.675, 1561.63, 76.8921, 1.24031) --Shadowfang Keep
  elseif (intid == 208) then
    player:Teleport(0, -8815.661, 805.7985, 98.6486, 0.7) --Stockades
  elseif (intid == 209) then
    player:Teleport(0, 3352.92, -3379.03, 144.782, 6.25978) --Stratholme
  elseif (intid == 210) then
    player:Teleport(0, -10177.9, -3994.9, -111.239, 6.01885) --Sunken Temple
  elseif (intid == 211) then
    player:Teleport(0, -6071.37, -2955.16, 209.782, 0.015708) --Uldaman
    -- Eastern Kingdom Raids
  elseif (intid == 301) then
    player:Teleport(0, -7656.0894, -1222.044, 287.7938 , 2.7) --Blackwing Lair
  elseif (intid == 302) then
    player:Teleport(0, -11118.9, -2010.33, 47.0819, 0.649895) --Karazhan
  elseif (intid == 303) then
    player:Teleport(230, 1126.64, -459.94, -102.535, 3.46095) --Molten Core
  elseif (intid == 304) then
    player:Teleport(0, -11916.7, -1215.72, 92.289, 4.72454) --Zul'Gurub
    -- Kalimdor Dungeons
  elseif (intid == 401) then
    player:Teleport(1, -8734.3, -4230.11, -209.5, 2.16212) --Black Morass
  elseif (intid == 402) then
    player:Teleport(1, 4249.99, 740.102, -25.671, 1.34062) --Blackfathom Deeps
  elseif (intid == 403) then
    player:Teleport(1, -8750.76, -4442.2, -199.26, 4.37694) --Culling  of Stratholme
  elseif (intid == 404) then
    player:Teleport(1, -3980.8, 789.005, 161.007, 4.71945) --Dire Mau East
  elseif (intid == 405) then
    player:Teleport(1, -3828.01, 1250.22, 160.226, 3.20835) --Dire Mau lWest
  elseif (intid == 406) then
    player:Teleport(1, -3521.29, 1085.2, 161.097, 4.7281) --Dire Maul North
  elseif (intid == 407) then
    player:Teleport(1, -1419.13, 2908.14, 137.464, 1.57366) --Maraudon
  elseif (intid == 408) then
    player:Teleport(1, -8404.3, -4070.62, -208.586, 0.237038) --Old Hillsbrad Foothills
  elseif (intid == 409) then
    player:Teleport(1, 1811.78, -4410.5, -18.4704, 5.20165) --Ragefire Chasm
  elseif (intid == 410) then
    player:Teleport(1, -4657.3, -2519.35, 81.0529, 4.54808) --Razorfen Downs
  elseif (intid == 411) then
    player:Teleport(1, -4470.28, -1677.77, 81.3925, 1.16302) --Razorfen Kraul
  elseif (intid == 412) then
    player:Teleport(1, -804.5271, -2133.6702, 91.76987, 6.2) --Wailing Caverns
  elseif (intid == 413) then
    player:Teleport(1, -6801.19, -2893.02, 9.00388, 0.158639) --Zul'Farrak
    -- Kalimdor Raids
  elseif (intid == 501) then
    player:Teleport(1, -8248.499, 1982.7864, 129.0719, 1.3) --Ahn'Qiraj
  elseif (intid == 502) then
    player:Teleport(1, -8177.89, -4181.23, -167.552, 0.913338) --Hyjal Summit
  elseif (intid == 503) then
    player:Teleport(1, -8406.917, 1495.1635, 25.65622, 2.4) --Ruins of Ahn'Qiraj
    -- Outland Dungeons
  elseif (intid == 601) then
    player:Teleport(530, 3308.92, 1340.72, 505.56, 4.94686) --Arcatraz
  elseif (intid == 602) then
    player:Teleport(530, -3362.04, 5209.85, -101.05, 1.60924) --Auchenai Crypts
  elseif (intid == 603) then
    player:Teleport(530, -291.324, 3149.1, 31.5541, 2.27147) --Blood Furnace
  elseif (intid == 604) then
    player:Teleport(530, 3407.11, 1488.48, 182.838, 5.59559) --Botanica
  elseif (intid == 605) then
    player:Teleport(530, -360.671, 3071.9, -15.0977, 1.89389) --Hellfire Ramparts
  elseif (intid == 606) then
    player:Teleport(530, 12884.6, -7317.69, 65.5023, 4.799) --Magisters Terrace
  elseif (intid == 607) then
    player:Teleport(530, -3104.18, 4945.52, -101.507, 6.22344) --Mana Tombs
  elseif (intid == 608) then
    player:Teleport(530, 2867.12, 1549.42, 252.159, 3.82218) --Mechanar
  elseif (intid == 609) then
    player:Teleport(530, 820.025, 6864.93, -66.7556, 6.28127) --Serpentshrine Cavern
  elseif (intid == 610) then
    player:Teleport(530, -3362.2, 4664.12, -101.049, 4.6605) --Sethekk Halls
  elseif (intid == 611) then
    player:Teleport(530, -3627.9, 4941.98, -101.049, 3.16039) --Shadow Labyrinth
  elseif (intid == 612) then
    player:Teleport(530, -305.79, 3061.63, -2.53847, 1.88888) --Shattered Halls
  elseif (intid == 613) then
    player:Teleport(530, 717.282, 6979.87, -73.0281, 1.50287) --Slave Pens
  elseif (intid == 614) then
    player:Teleport(530, 794.537, 6927.81, -80.4757, 0.159089) --Steamvault
  elseif (intid == 615) then
    player:Teleport(530, 763.307, 6767.81, -67.7695, 5.99726) --Underbog
  -- Outland Raids
  elseif (intid == 701) then
    player:Teleport(530, -3649.92, 317.469, 35.2827, 2.94285) --Black Temple
  elseif (intid == 702) then
    player:Teleport(530, 3530.06, 5104.08, 3.50861, 5.51117) --Gruul's Lair
  elseif (intid == 703) then
    player:Teleport(530, -312.7, 3087.26, -116.52, 5.19026) --Magtheridon's Lair
  elseif (intid == 704) then
    player:Teleport(530, 12574.1, -6774.81, 15.0904, 3.13788) --Sunwell Plateau
  elseif (intid == 705) then
    player:Teleport(530, 3099.36, 1518.73, 190.3, 4.72592) --Tempest Keep
  elseif (intid == 706) then
    player:Teleport(530, 6851.78, -7972.57, 179.242, 4.64691) --Zul'Aman
    -- Northrend Dungeons
  elseif (intid == 801) then
    player:Teleport(571, 3643.31, 2036.51, 1.78742, 4.33919) --Ahn'Kahet
  elseif (intid == 802) then
    player:Teleport(571, 3677.53, 2166.7, 35.808, 2.30108) --Azjol-Nerub
  elseif (intid == 803) then
    player:Teleport(571, 4774.6, -2032.92, 229.15, 1.59) --Drak'Tharon Keep
  elseif (intid == 804) then
    player:Teleport(571, 6898.72, -4584.94, 451.12, 2.34455) --Gundrak
  elseif (intid == 805) then
    player:Teleport(571, 9182.92, -1384.82, 1110.21, 5.57779) --Halls of Lightning
  elseif (intid == 806) then
    player:Teleport(571, 5630.44, 1994.01, 798.059, 4.58756) --Halls of Reflection
  elseif (intid == 807) then
    player:Teleport(571, 8921.91, -993.503, 1039.41, 1.55263) --Halls of Stone
  elseif (intid == 808) then
    player:Teleport(571, 3781.81, 6953.65, 104.82, 0.467432) --Nexus
  elseif (intid == 809) then
    player:Teleport(571, 3879.96, 6984.62, 106.312, 3.19669) --Oculus
  elseif (intid == 810) then
    player:Teleport(571, 5598.74, 2015.85, 798.042, 3.81001) --Pit of Saron
  elseif (intid == 811) then
    player:Teleport(571, 8588.42, 791.888, 558.236, 3.23819) --Trial of the Champion
  elseif (intid == 812) then
    player:Teleport(571, 1219.72, -4865.28, 41.2479, 0.313228) --Utgarde Keep
  elseif (intid == 813) then
    player:Teleport(571, 1259.33, -4852.02, 215.763, 3.48293) --Utgarde Pinnacle
  elseif (intid == 814) then
    player:Teleport(571, 5696.73, 507.4, 652.97, 4.03) --Violet Hold
    -- Northrend Raids
  elseif (intid == 901) then
    player:Teleport(571, 3859.44, 6989.85, 152.041, 5.79635) --Eye Of Eternity
  elseif (intid == 902) then
    player:Teleport(571, 5873.82, 2110.98, 636.011, 3.5523) --Icecrown Citadel
  elseif (intid == 903) then
    player:Teleport(571, 3668.72, -1262.46, 243.622, 4.785) --Naxxramas
  elseif (intid == 904) then
    player:Teleport(571, 3457.11, 262.394, -113.819, 3.28258) --Obsidian Sanctum
  elseif (intid == 905) then
    player:Teleport(1, -4708.27, -3727.64, 54.5589, 3.72786) --Onyxia's Lair
  elseif (intid == 906) then
    player:Teleport(571, 3600.5, 197.34, -113.76, 5.29905) --Ruby Sanctum
  elseif (intid == 907) then
    player:Teleport(571, 8515.68, 716.982, 558.248, 1.57315) --Trial of the Crusader
  elseif (intid == 908) then
    player:Teleport(571, 9049.37, -1282.35, 1060.19, 5.8395) --Ulduar
  end
end

--Register the three Gossip Events to call them appropriately
RegisterCreatureGossipEvent(creatureID, 1, OnGossipHello)
RegisterCreatureGossipEvent(creatureID, 2, OnGossipSelect)
RegisterCreatureGossipEvent(creatureID, 2, OnGossipSelectTeleport)