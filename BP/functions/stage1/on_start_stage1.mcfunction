#score
scoreboard objectives add st1_keyquest_clear dummy
scoreboard objectives add st1_keyquest_state dummy
scoreboard objectives add st1_main2_clear dummy
scoreboard objectives add st1_main3_clear dummy
scoreboard objectives add st1_expansionquest_clear dummy
scoreboard objectives add st1_transition_time dummy

scoreboard players set dummy st1_transition_time 0
scoreboard players set dummy stage 1
scoreboard players set dummy cartype_generate 0
scoreboard players set dummy st1_keyquest_state 0
scoreboard players set dummy MN_clear 0
scoreboard players set dummy st1_main2_clear 0
scoreboard players set dummy st1_main3_clear 0
scoreboard players set dummy st1_keyquest_clear 0
scoreboard players set dummy st1_expansionquest_clear 0
scoreboard players set dummy delay_quest_message 0

scriptevent q:quest_update 0
function stage1/create_dealership1
function showroom2/create_showroom2
title @a title STAGE1

