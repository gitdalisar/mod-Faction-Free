/* 
This SQL script is part of the mod-Faction-Free AzerothCore module hosted at:
https://github.com/gitdalisar/mod-Faction-Free

Maintained by GitDalisar

This script is designed to check for any exisisting gameobjects, npcs, or texts that may already be in use. 
If you get a result from any of these queries, you will need to modify the FactionFree.sql script to use 
different numbers to avoid conflict.

To run this script:
1. Ensure that you are logged into MySQL Database 
2. Change to the acore_world database with:  USE acore_world;
3. Run this using this command: SOURCE <path to .sql>;
*/


/*Check to see if entry 500000 and 500001 are free to add the creature templates for the Teleport Network*/
SELECT `entry`, `name`, `subname`, `faction`, `npcflag` FROM `acore_world`.`creature_template` WHERE `entry` IN (500000, 500001);
/*Check to see if GUIDs 500000000-500000019 are free to add the creature objects for the Teleport Network*/
SELECT `guid`, `id1`, `map`, `zoneId`, `areaId` FROM `acore_world`.`creature` WHERE `guid` BETWEEN 5000000 AND 5000019;
/*Check to see if entry 500000, 500001, and 500003 are free to add the broadcast text entries for the Teleport Network*/
SELECT `ID`, `LanguageID`, `MaleText`, `FemaleText` FROM `acore_world`.`broadcast_text` WHERE `ID` IN (500000, 500001, 500003);
/*Check to see if entry 500000, 500001, and 500003 are free to add the npc text entries for the Teleport Network*/
SELECT `ID`, `text0_0`, `text0_1`, `lang0` FROM `acore_world`.`npc_text` WHERE `ID` IN (500000, 500001, 500003);
/*Check to see if entry 500000-500004 are free to add the gameobject templates for the Teleport Network*/
SELECT `entry`, `type`, `displayId`, `name` FROM `acore_world`.`gameobject_template` WHERE `entry` BETWEEN 500000 AND 500004;
/*Check to see if GUIDs 500000000-500000049 are free to add the gameobjects for the Teleport Network*/
SELECT `guid`, `id`, `map`, `zoneId`, `areaId` FROM `acore_world`.`gameobject` WHERE `guid` BETWEEN 5000000 AND 5000049;

/*AGAIN: Please note that if you have any results back from these queries you will need to modify the FactionFree.sql
to use new and free entry, id, or GUID values.*/