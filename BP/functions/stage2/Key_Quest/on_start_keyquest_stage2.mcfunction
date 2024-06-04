execute unless entity @e[family=salesman1,x=14,y=-24,z=16,dx=100,dy=24,dz=54] run function showroom3/create_showroom3
event entity @e[family=billboard] bridge:despawn
summon bridge:billboard 86 -9 64 0 0 bridge:set_quest
event entity @e[family=keyquest_st2] bridge:despawn 
event entity @e[family=bodyguard3_1] bridge:despawn 
event entity @e[family=bodyguard3_2] bridge:despawn 
summon bridge:keyquest_st2 106 -23 70
summon bridge:bodyguard_1 100 -23 51
summon bridge:bodyguard_1 100 -23 35
scoreboard players set dummy st2_keyquest_clear 0
scoreboard players set dummy keyquest_start 1
scoreboard players set dummy mainquest_start 0
scoreboard players set dummy expansionquest_start 0
scriptevent q:quest_update 0
