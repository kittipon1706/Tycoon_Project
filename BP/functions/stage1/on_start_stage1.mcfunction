#score
scoreboard objectives add st1_main1_clear dummy
scoreboard objectives add st1_main2_clear dummy
scoreboard objectives add st1_main3_clear dummy
scoreboard objectives add st1_keyquest_clear dummy

scoreboard players set dummy stage 1
scoreboard players set dummy cartype_generate 0

scoreboard players set dummy MN_clear 0
scoreboard players set dummy st1_main1_clear 0
scoreboard players set dummy st1_main2_clear 0
scoreboard players set dummy st1_main3_clear 0
scoreboard players set dummy st1_keyquest_clear 0

event entity @e[x=13,y=-24,z=134,dx=100,dy=24,dz=60] bridge:despawn
fill 13 -24 134 113 0 194 air
structure load building0_1 13 -24 134
structure load building0_2 64 -24 134

function stage1/The_Midnight_Racer/on_clear_MN
summon bridge:empty_area 102 -24 164
