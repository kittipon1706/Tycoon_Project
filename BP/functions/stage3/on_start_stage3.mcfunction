#score
scoreboard objectives add st3_keyquest_clear dummy
scoreboard objectives add st3_main1_clear dummy
scoreboard objectives add st3_main2_clear dummy
scoreboard objectives add st3_main3_clear dummy
scoreboard objectives add st3_expansionquest_state dummy
scoreboard objectives add st3_expansionquest_clear dummy
scoreboard objectives add st3_dynamic_couting dummy
scoreboard objectives add st3_hand_engine_couting dummy
scoreboard objectives add st3_transition_time dummy

scoreboard players set dummy st3_transition_time 0
scoreboard players set dummy stage 3
scoreboard players set dummy st3_dynamic_couting 0
scoreboard players set dummy st3_hand_engine_couting 0
scoreboard players set dummy delay_quest_message 0
scoreboard players set dummy mainquest_start 1
scoreboard players set dummy keyquest_start 0
scoreboard players set dummy expansionquest_start 0
scoreboard players set dummy st3_expansionquest_state 0
scoreboard players set dummy st3_expansionquest_clear 0
scoreboard players set dummy st3_keyquest_clear 0
scoreboard players set dummy st3_main1_clear 0
scoreboard players set dummy st3_main2_clear 0
scoreboard players set dummy st3_main3_clear 0
function showroom3/remove_showroom3
function stage3/create_dealership3
tag @a remove Tested
event entity @e[family=dynamite_marker] bridge:despawn
event entity @e[family=dynamite] bridge:despawn
event entity @e[family=hand_engine_marker] bridge:despawn
event entity @e[family=hand_engine] bridge:despawn
summon bridge:hand_engine_marker 57 -19 51 90 0 bridge:set_quest
summon bridge:hand_engine_marker 57 -19 41 135 0 bridge:set_quest 
summon bridge:hand_engine_marker 57 -19 31 45 0 bridge:set_quest
summon bridge:hand_engine_marker 49 -19 36 -90 0 bridge:set_quest
summon bridge:hand_engine_marker 49 -19 46 -45 0 bridge:set_quest
fill 75 -21 86 75 -21 86 bridge:control_panel_1
fill 74 -21 86 74 -21 86 bridge:control_panel_2
fill 73 -21 86 73 -21 86 bridge:control_panel_3
fill 72 -21 86 72 -21 86 bridge:control_panel_4
scriptevent q:quest_update 0
title @a title STAGE3

