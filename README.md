# Faction Free
Name:   mod-Faction-Free \
Author:   gitdalisar \
Repository:   https://github.com/gitdalisar/mod-Faction-Free \
Download:   https://github.com/gitdalisar/mod-Faction-Free/archive/refs/heads/main.zip \
License:   GNU Affero General Public License v3.0

Designed and Implemented for AzerothCore (https://azerothcore.org). If you are running a different server version, please review the files before loading into your environment!

## Purpose
The goal of these changes are to allow for players of either faction to be able to gain repuatation for, take quests from, use cities of, earn the achievements for, and all other such features of the opposing faction. The concept was to truly be **_The Saviour of Azeroth_** and be able to assist and gain favor for all races and cities across the lands. Playing WOW you are always hailed as the hero, but if you _truly_ were the hero everyone says you are, then wouldn't you maybe even be welcome in opposing faciton cities? The threats you have contained surely benefited them as well. These series of changes are to make that happen!

Please note though that these changes are **strictly** to the "Player-to-NPC" relationship. For the ability to have cross-faction groups, trade, guilds, etc. you will simply need to modify the worldserver.conf settings within your build path.

## How it works
This is not a module that you need to place within that directory, but rather a replacement to server side DBC files, modification of the acore_world database, use of LUA scripts, and the inclusion of a custom .MPQ file to ensure the DBC changes are represented correctly in your client. You will need to do the following:

1. Ensure that your server supports LUA scripts by confirming the existance of the /build/bin/lua_scripts directory
   - If this is not present, please install mod-Eluna from this location: https://github.com/azerothcore/mod-eluna
2. Stop the Auth and Worldserver services just to keep things clean
3. Make the appropriate backups
4. Download all relevant files
5. Replace the existing Achievement.dbc, Faction.dbc, and Faction_Template.dbc in your build data directory with the 3 included here
   - **NOTE**: If you have made modifications to these DBC files, such as your own custom factions or achievements, you will need to add thoes back in
6. Add the Patch-F.MPQ to your client data directory
   - **NOTE**: If you already have a Patch-F.MPQ file in use, simply change the "F" to an unused letter. I chose F as all of these changes are tied to Faction.
7. Log into MySQL and run the attached .SQL files against the acore_world database
   - First, run the EntryChecker.sql file to determine if any of the id, entry, or guid are currently in use
   - If things are found, please modify the FactionFree.sql to use values that are not in use
   - After ensuring no values are already in use, or after changing to ones that are free, run the FactionFree.sql against acore_world
8. Navigate to the directory shown under the cpp directory in this repo, copy the EXISTING PlayerUpdates.cpp file to something like PlayerUpdates.cpp.bkup
   to keep the original file incase you need it in the future. Then copy the PlayerUpdates.cpp file from the repo into that location.
9. Recompile and Remake the server as normal and enjoy!

The list of entry, ID, and GUID values used in this module can be seen below:
|Location (table)|Column (attribute)|Values Used|
|----------------|------------------|-----------|
|creature_template|entry|500,000-500,001|
|gameobject_template|entry|500,000-500,004|
|broadcast_text|ID|500,000-500,001 and 500,003|
|npc_text|ID|500,000-500,001 and 500,003|
|creature|GUID|5,000,000-5,000,019|
|gameobject|GUID|5,000,000-5,000,049|


## Contact Info
If you would like to ask any questions, you can find me on the AzerothCore Discord (https://discord.gg/s8wwRYGaUT) as well as the WoW Modding Community Discord (https://discord.gg/zqSaT95fk2) as @Dalisar so feel free to DM me there!

## Special Thanks!
Special thanks to the AC and WOW Modding communities for their support. Also, special shout out to those assisting in testing and code review:
@GitFinntastic, @GitVenyce, and @Aldori15, @DarkLava, @Ghostsupthere

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

v1.2.0: March 28, 2024
- Fixed issue where FactionFree.sql did not have the lang0 definition for npc_text to ensure cross-faction legibility of NPC speech
- Added a .cpp file to be used in recompile to remove a player being flagged as PVP when in opposing faction's city
- Players can now purchase faction locked mounts and recieve faction locked quest items regardless of player faction

v1.3.0: April 7, 2024
- Resolved various factions that would attack a player despite being friendly
- Moved NPCs in airship battle to monster faction to allow for proper cross-faction combat

v1.3.1: April 16, 2024
- Corrected two factions that were still attacking players despite being freindly, 1735 for Horde and 1732 for Alliance

v1.3.2: April 26, 2024
- Updated Duskwood Nightwatch to Stormwind faction to remove aggression towards Horde players
- Corrected all factional item issues to ensure pvp gear and facitonal gear in a mixed faction raid could be earned by all
- Set NPCs required to be attackable for _The Battered Hilt_ quest to creature faction ensure completion is possible
- Updated FactionFree.sql to include DELETE statements ahead of INSERT statments for easier reuse of file as patches are released

v1.3.3: May 1, 2024
- Rebuilt server from master for code refresh, updated the clean PlayerUpdates.cpp to new version here
- Removed two unnecessary factions from FactionTemplate.dbc as reported in discord release forum
- Recreated Patch-F.MPQ to have the updated FactionTemplate.dbc post corrections

v1.3.4: May 6, 2024
- Updated Raventusk Village to Orgrimmar to avoid NPCs attacking Alliance players
