event entity @e[family=airship,x=45,y=-8,z=0,dx=16,dy=10,dz=16] bridge:despawn
event entity @e[family=keyquest_st4] bridge:despawn
event entity @e[family=billboard_paintball] bridge:despawn
summon bridge:airship_nestorio 53 -7 8 0 0 bridge:set_empty
summon bridge:keyquest 67 -8 8 0 0 bridge:set_stage4
summon bridge:billboard_paintball 89 6 -59 0 0
summon bridge:billboard_paintball 95 6 -82 -90 0
summon bridge:billboard_paintball 96 -9 -90 -90 0
summon bridge:billboard_paintball 73 21 -72 0 0
scoreboard players set dummy st4_keyquest_clear 0
scoreboard players set dummy keyquest_start 1
scoreboard players set dummy mainquest_start 0
scoreboard players set dummy expansionquest_start 0
scoreboard players set dummy st4_key1_clear 0
scoreboard players set dummy st4_key2_clear 0
scoreboard players set dummy st4_key3_clear 0
scriptevent q:quest_update 0
