-- Magatha Grimtotem
DELETE FROM `creature_text` WHERE `CreatureID`=4046 AND `GroupID` IN (0,1);
INSERT INTO `creature_text` (`CreatureID`, `GroupID`, `ID`, `Text`, `Type`, `Language`, `Probability`, `Emote`, `Duration`, `Sound`, `BroadcastTextId`, `TextRange`, `comment`) VALUES
(4046,0,0,"%s listens to $n's plea.",16,0,100,0,0,0,1416,0,"Magatha Grimtotem"),
(4046,1,0,"You were right to come.  My wisdom will be yours.",12,0,100,273,0,0,1417,0,"Magatha Grimtotem");

UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=4046;
DELETE FROM `smart_scripts` WHERE `entryorguid`=4046 AND `source_type`=0 AND `id`=0;
DELETE FROM `smart_scripts` WHERE `entryorguid`=404600 AND `source_type`=9;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES
(4046,0,0,0,20,0,100,0,1063,0,0,0,80,404600,0,0,0,0,0,1,0,0,0,0,0,0,0,"Magatha Grimtotem - On Quest 'The Elder Crone' finished - Run Script"),
(404600,9,0,0,0,0,100,0,0,0,0,0,83,2,0,0,0,0,0,1,0,0,0,0,0,0,0,"Magatha Grimtotem - On Script - Remove Npc Flag Questgiver"),
(404600,9,1,0,0,0,100,0,1000,1000,0,0,1,0,0,0,0,0,0,7,0,0,0,0,0,0,0,"Magatha Grimtotem - On Script - Say Line 0"),
(404600,9,2,0,0,0,100,0,4000,4000,0,0,1,1,0,0,0,0,0,7,0,0,0,0,0,0,0,"Magatha Grimtotem - On Script - Say Line 1"),
(404600,9,3,0,0,0,100,0,2000,2000,0,0,82,2,0,0,0,0,0,1,0,0,0,0,0,0,0,"Magatha Grimtotem - On Script - Add Npc Flag Questgiver");
