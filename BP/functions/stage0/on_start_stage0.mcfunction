scoreboard objectives add st1_main1_clear dummy

scoreboard players set dummy stage 0
scoreboard players set dummy st1_main1_clear 0
scoreboard players set dummy mainquest_start 1
scoreboard players set dummy keyquest_start 0
scoreboard players set dummy expansionquest_start 0
scoreboard players set dummy delay_quest_message 0
function stage0/create_dealership0
event entity @e[x=13,y=-24,z=134,dx=100,dy=24,dz=60] bridge:despawn
summon bridge:empty_area 105 -24 164
scriptevent q:quest_update 0


