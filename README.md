# Faction Free
Name:   mod-Faction-Free \
Author:   gitdalisar \
Repository:   https://github.com/gitdalisar/mod-Faction-Free \
Download:   https://github.com/gitdalisar/mod-Faction-Free/archive/refs/heads/main.zip \
License:   GNU Affero General Public License v3.0


## Purpose
The goal of these changes are to allow for players of either faction to be able to gain repuatation for, take quests from, use cities of, earn the achievements for, and all other such features of the opposing faction. The concept was to truly be **_The Saviour of Azeroth_** and be able to assist and gain favor for all races and cities across the lands. Playing WOW you are always hailed as the hero, but if you _truly_ were the hero everyone says you are, then wouldn't you maybe even be welcome in opposing faciton cities? The threats you have contained surely benefited them as well. These series of changes are to make that happen!

Please note though that these changes are **strictly** to the "Player-to-NPC" relationship. For the ability to have cross-faction groups, trade, guilds, etc. you will simply need to modify the worldserver.conf settings within your build path.

## How it works
This is not a module that you need to place within that directory, but rather a replacement to server side DBC files, modification of the acore_world database, use of LUA scripts, and the inclusion of a custom .MPQ file to ensure the DBC changes are represented correctly in your client. You will need to do the following:

1. Ensure that your server supports LUA scripts by confirming the existance of the /build/bin/lua_scripts directory
   - If this is not present, please install mod-Eluna from this location: https://github.com/azerothcore/mod-eluna
2. Make the appropriate backups
3. Download all relevant files
4. Replace the existing Achievement.dbc, Faction.dbc, and Faction_Template.dbc in your build data directory with the 3 included here
   - **NOTE**: If you have made modifications to these DBC files, such as your own custom factions or achievements, you will need to add thoes back in
5. Add the Patch-F.MPQ to your client data directory
   - **NOTE**: If you already have a Patch-F.MPQ file in use, simply change the "F" to an unused letter. I chose F as all of these changes are tied to Faction.
6. Log into MySQL and run the attached .SQL files against the acore_world database
   - First, run the EntryChecker.sql file to determine if any of the id, entry, or guid are currently in use
   - If things are found, please modify the FactionFree.sql to use values that are not in use
   - After ensuring no values are already in use, or after changing to ones that are free, run the FactionFree.sql against acore_world 

The list of entry, ID, and GUID values used in this module can be seen below:
|Location (table)|Column (attribute)|Values Used|
|----------------|------------------|-----------|
|creature_template|entry|500,000-500,001|
|gameobject_template|entry|500,000-500,004|
|broadcast_text|ID|500,000-500,001 and 500,003|
|npc_text|ID|500,000-500,001 and 500,003|
|creature|GUID|500,000,000-500,000,019|
|gameobject|GUID|500,000,000-500,000,049|


## Contact Info
If you would like to ask any questions, you can find me on the AzerothCore Discord as @Dalisar so feel free to DM me there!

## Special Thanks!
Special thanks to the AC and WOW Modding communities for their support. Also, special shout out to those assisting in testing and code review:
@Finntastic, @GitVenyce, and @Aldori15

## Change Log
v1.0.0: March 4, 2024
- Initial Release

v1.1.0: March 24, 2024
- Teleport Network now included (Capital Cities and Instances) with NPCs, GObjects, and LUA scrpits
- Players now know all player languages at character creation
- Inns are now factionless and will give rested XP to any player regardless to faction
- Players can now understand NPC/Creatures when they speak a Player-native language to ensure cross-faction language support

v1.1.1: March 25, 2024
- Fixed issue where FactionFree.sql did not have the INSERT statements for creature table in acore_world
- Adjusted GUIDs to be more predictable and high range like the Entry/ID values used
