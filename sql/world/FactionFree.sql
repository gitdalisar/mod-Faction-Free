/* 
1. Ensure that you are logged into the Database instance
2. Change to the acore_world database with USE acore_world;
3. Run this using the SOURCE <path to .sql>; command
*/
UPDATE quest_template SET AllowableRaces = 1791 WHERE AllowableRaces = 1101;
UPDATE quest_template SET AllowableRaces = 1791 WHERE AllowableRaces = 690;
