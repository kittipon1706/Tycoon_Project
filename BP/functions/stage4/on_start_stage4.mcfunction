#score
scoreboard objectives add st4_keyquest_clear dummy
scoreboard objectives add st4_main1_clear dummy
scoreboard objectives add st4_main2_clear dummy
scoreboard objectives add st4_key1_clear dummy
scoreboard objectives add st4_key2_clear dummy
scoreboard objectives add st4_key3_clear dummy
scoreboard objectives add st4_expansionquest1_clear dummy
scoreboard objectives add st4_expansionquest2_clear dummy
scoreboard objectives add st4_expansionquest2_state dummy
scoreboard objectives add st4_billboard_painted_couting dummy
scoreboard objectives add time_to_levitation dummy

scoreboard players set dummy stage 4
scoreboard players set dummy delay_quest_message 0
scoreboard players set dummy st4_billboard_painted_couting 0
scoreboard players set dummy mainquest_start 1
scoreboard players set dummy keyquest_start 0
scoreboard players set dummy expansionquest_start 0
scoreboard players set dummy st4_expansionquest2_state 0
scoreboard players set dummy st4_expansionquest1_clear 0
scoreboard players set dummy st4_expansionquest2_clear 0
scoreboard players set dummy st4_keyquest_clear 0
scoreboard players set dummy st4_main1_clear 0
scoreboard players set dummy st4_main2_clear 0
scoreboard players set dummy st4_key1_clear 0
scoreboard players set dummy st4_key2_clear 0
scoreboard players set dummy st4_key3_clear 0
spawnpoint @a 105 -23 -10 
function showroom5/clear_bodyguard
event entity @e[family=airship] bridge:despawn
event entity @e[family=boss_stage4] bridge:despawn
event entity @e[family=billboard_paintball] bridge:despawn
event entity @e[family=keyquest_st4] bridge:despawn
function showroom4/remove_showroom4
function stage4/create_dealership4
function showroom5/set_waypoint_bodyguard_1
function showroom5/set_bodyguard
summon bridge:airship_empty 63 3 -97 90 
scriptevent q:quest_update 0
title @a title STAGE4
