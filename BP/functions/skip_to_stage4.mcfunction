scoreboard players set dummy stage 3
scoreboard players set dummy st3_main1_clear 1
scoreboard players set dummy st3_main2_clear 1
scoreboard players set dummy st3_main3_clear 1
scoreboard players set dummy st3_keyquest_clear 1
scoreboard players set dummy st3_expansionquest_clear 1
event entity @e[family=hand_engine_marker] bridge:set_model
tag @a add Tested
fill 75 -21 86 75 -21 86 bridge:control_panel_1_ani
fill 74 -21 86 74 -21 86 bridge:control_panel_2_ani
fill 73 -21 86 73 -21 86 bridge:control_panel_3_ani
fill 72 -21 86 72 -21 86 bridge:control_panel_4_ani
function stage3/on_clear_stage3