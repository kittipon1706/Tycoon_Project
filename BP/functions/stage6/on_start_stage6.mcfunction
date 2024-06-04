#score
scoreboard objectives add st6_keyquest_clear dummy
scoreboard objectives add st6_main_clear dummy
scoreboard objectives add st6_expansionquest_clear dummy

scoreboard players set dummy stage 6
scoreboard players set dummy mainquest_start 1
scoreboard players set dummy keyquest_start 0
scoreboard players set dummy expansionquest_start 0
scoreboard players set dummy delay_quest_message 0
scoreboard players set dummy st6_expansionquest_clear 0
scoreboard players set dummy st6_keyquest_clear 0
scoreboard players set dummy st6_main_clear 0
spawnpoint @a 105 -23 -10 
function showroom6/remove_showroom6
function stage5/create_dealership5
scriptevent q:quest_update 0
title @a title STAGE6

