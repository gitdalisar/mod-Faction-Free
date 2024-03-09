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
This is not a module that you need to place within that directory, but rather a replacement to 3 server side DBC files, modification of the acore_world database with 2 SQL commands, and the inclusion of a custom .MPQ file to ensure the DBC changes are represented correctly in your client. You will need to do the following:

1. Download all relevant files
2. Replace the existing Achievement.dbc, Faction.dbc, and Faction_Template.dbc in your build data directory with the 3 included here
   - **NOTE**: If you have made modifications to these DBC files, such as your own custom factions or achievements, you will need to add thoes back in
4. Add the Patch-F.MPQ to your client data directory
   - **NOTE**: If you already have a Patch-F.MPQ file in use, simply change the "F" to an unused letter. I chose F as all of these changes are tied to Faction.
5. Log into MySQL and run the attached .SQL file against the acore_world database
   - Make sure that once you log in you are on the acore_world database by running _use acore_world;_ 
 
## Contact Info
If you would like to ask any questions, you can find me on the AzerothCore Discord as @Dalisar so feel free to DM me there!
