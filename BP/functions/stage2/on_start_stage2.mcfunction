#score
scoreboard objectives add st2_keyquest_clear dummy
scoreboard objectives add st2_main1_clear dummy
scoreboard objectives add st2_main2_clear dummy
scoreboard objectives add st2_main3_clear dummy
scoreboard objectives add st2_expansionquest_start_time dummy
scoreboard objectives add st2_expansionquest_clear dummy
scoreboard objectives add st2_transition_time dummy

scoreboard players set dummy st2_transition_time 0
scoreboard players set dummy stage 2
scoreboard players set dummy delay_quest_message 0
scoreboard players set dummy mainquest_start 1
scoreboard players set dummy keyquest_start 0
scoreboard players set dummy expansionquest_start 0
scoreboard players set dummy st2_expansionquest_start_time 0
scoreboard players set dummy st2_expansionquest_clear 0
scoreboard players set dummy st2_keyquest_clear 0
scoreboard players set dummy st2_main1_clear 0
scoreboard players set dummy st2_main2_clear 0
scoreboard players set dummy st2_main3_clear 0
event entity @e[x=14,y=-24,z=70,dx=100,dy=24,dz=64] bridge:despawn
function showroom2/remove_showroom2
function stage2/create_dealership2
event entity @e[family=magnet] bridge:despawn
event entity @e[family=bossquest_st2] bridge:despawn
event entity @e[family=boss_stage2] bridge:despawn
fill 50 -21 81 50 -21 81 air
fill 50 -21 89 50 -21 89 air
event entity @e[family=normal_car1,family=quest_car] bridge:despawn
event entity @e[family=keyquest_st1] bridge:despawn
summon bridge:expoorganizer 107 -23 119 270 0 bridge:varaint_2
scriptevent q:quest_update 0
title @a title STAGE2
