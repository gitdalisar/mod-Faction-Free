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


/*Check to see if entry 500000 and 500001 are free to add the NPC templates for the Teleport Network*/
SELECT `entry`, `name`, `subname`, `faction`, `npcflag` FROM `acore_world`.`creature_template` WHERE `entry` IN (500000, 500001);
/*Check to see if the following GUIDs are free to add the NPC objects for the Teleport Network*/
SELECT `guid`, `id1`, `map`, `zoneId`, `areaId` FROM `acore_world`.`creature` WHERE `guid` IN (3110435, 3110438, 3110444, 3110445, 3110449, 3110452, 3110453, 3110455, 3110483, 3110490, 3110434, 3110437, 3110443, 3110446, 3110450, 3110451, 3110454, 3110456, 3110482, 3110489);
/*Check to see if entry 500000, 500001, and 500003 are free to add the broadcast text entries for the Teleport Network*/
SELECT `ID`, `LanguageID`, `MaleText`, `FemaleText` FROM `acore_world`.`broadcast_text` WHERE `ID` IN (500000, 500001, 500003);
/*Check to see if entry 500000, 500001, and 500003 are free to add the npc text entries for the Teleport Network*/
SELECT `ID`, `text0_0`, `text0_1`, `lang0` FROM `acore_world`.`npc_text` WHERE `ID` IN (500000, 500001, 500003);
/*Check to see if entry 500000 and 500001 are free to add the NPC templates for the Teleport Network*/
SELECT `entry`, `type`, `displayId`, `name` FROM `acore_world`.`gameobject_template` WHERE `entry` BETWEEN 500000 AND 500004;
/*Check to see if the following GUIDs are free to add the gameobjects for the Teleport Network*/
SELECT `guid`, `id`, `map`, `zoneId`, `areaId` FROM `acore_world`.`gameobject` WHERE `guid` BETWEEN 2135556 AND 2135565 OR `guid` BETWEEN 2135590 AND 2135599 OR `guid` BETWEEN 2135624 AND 2135628 OR `guid` BETWEEN 2135635 AND 2135649 OR `guid` BETWEEN 2135707 AND 2135711 OR `guid` BETWEEN 2135736 AND 2135740;

/*AGAIN: Please note that if you have any results back from these queries you will need to modify the FactionFree.sql
to use new and free entry, id, or GUID values.*/