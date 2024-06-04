#score
scoreboard objectives add st5_keyquest_clear dummy
scoreboard objectives add st5_main1_clear dummy
scoreboard objectives add st5_main2_clear dummy
scoreboard objectives add st5_expansionquest_clear dummy
scoreboard objectives add st5_alarm_clock_couting dummy
scoreboard objectives add st5_truck_fill_couting dummy

scoreboard players set dummy stage 5
scoreboard players set dummy st5_alarm_clock_couting 0
scoreboard players set dummy st5_truck_fill_couting 0
scoreboard players set dummy mainquest_start 1
scoreboard players set dummy keyquest_start 0
scoreboard players set dummy expansionquest_start 0
scoreboard players set dummy delay_quest_message 0
scoreboard players set dummy st5_expansionquest_clear 0
scoreboard players set dummy st5_keyquest_clear 0
scoreboard players set dummy st5_main1_clear 0
scoreboard players set dummy st5_main2_clear 0
spawnpoint @a 105 -23 -10 
function showroom5/remove_showroom5
function stage5/create_dealership5
scriptevent q:quest_update 0
title @a title STAGE5
function showroom6/set_bodyguard
event entity @e[family=truck] bridge:despawn
event entity @e[family=animal] bridge:despawn
event entity @e[family=alarm_clock] bridge:despawn
event entity @e[family=alarm_clock_marker] bridge:despawn

