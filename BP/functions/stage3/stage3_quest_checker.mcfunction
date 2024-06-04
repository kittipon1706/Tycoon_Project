execute if score dummy st3_main1_clear matches 0 if score dummy st3_main2_clear matches 0 if score dummy st3_main3_clear matches 0 run scoreboard players set dummy mainquest_start 1
execute if score dummy st3_main1_clear matches 0 if score dummy st3_main2_clear matches 0 if score dummy st3_main3_clear matches 0 run scoreboard players set dummy keyquest_start 0
execute if score dummy st3_main1_clear matches 0 if score dummy st3_main2_clear matches 0 if score dummy st3_main3_clear matches 0 run scoreboard players set dummy expansionquest_start 0

execute if score dummy mainquest_start matches 1 if score dummy st3_hand_engine_couting matches 0 run scriptevent q:quest_update 10
execute if score dummy mainquest_start matches 1 if score dummy st3_hand_engine_couting matches 1 run scriptevent q:quest_update 11
execute if score dummy mainquest_start matches 1 if score dummy st3_hand_engine_couting matches 2 run scriptevent q:quest_update 12
execute if score dummy mainquest_start matches 1 if score dummy st3_hand_engine_couting matches 3 run scriptevent q:quest_update 13
execute if score dummy mainquest_start matches 1 if score dummy st3_hand_engine_couting matches 4 run scriptevent q:quest_update 14
execute if score dummy mainquest_start matches 1 if score dummy st3_hand_engine_couting matches 5 run scriptevent q:quest_update 15
execute if score dummy mainquest_start matches 1 if score dummy st3_hand_engine_couting matches 5 if score dummy st3_main1_clear matches 0 run scoreboard players set dummy st3_main1_clear 1 
execute if score dummy mainquest_start matches 1 unless score dummy st3_hand_engine_couting matches 5 if score dummy st3_main1_clear matches 1 run scoreboard players set dummy st3_main1_clear 0 

execute if score dummy mainquest_start matches 1 if block 75 -21 86 bridge:control_panel_1_ani run scriptevent q:quest_update 2
execute if score dummy mainquest_start matches 1 if block 75 -21 86 bridge:control_panel_1_ani if score dummy st3_main2_clear matches 0 run scoreboard players set dummy st3_main2_clear 1
execute if score dummy mainquest_start matches 1 unless block 75 -21 86 bridge:control_panel_1_ani run scriptevent q:quest_update -2
execute if score dummy mainquest_start matches 1 unless block 75 -21 86 bridge:control_panel_1_ani if score dummy st3_main2_clear matches 1 run scoreboard players set dummy st3_main2_clear 0 

execute if score dummy keyquest_start matches 1 if entity @p[tag=Tested] run scriptevent q:quest_update 3
execute if score dummy keyquest_start matches 1 if entity @p[tag=Tested] run scoreboard players set dummy st3_keyquest_clear 1
execute if score dummy keyquest_start matches 1 if entity @p[tag=Tested] run function stage3/Key_Quest/on_clear_keyquest_stage3
execute if score dummy keyquest_start matches 1 unless entity @p[tag=Tested] run scriptevent q:quest_update -3
execute if score dummy keyquest_start matches 1 unless entity @p[tag=Tested] run scoreboard players set dummy st3_keyquest_clear 0

execute if score dummy expansionquest_start matches 1 if score dummy st3_dynamic_couting matches ..0 run scriptevent q:quest_update 40
execute if score dummy expansionquest_start matches 1 if score dummy st3_dynamic_couting matches 1 run scriptevent q:quest_update 41
execute if score dummy expansionquest_start matches 1 if score dummy st3_dynamic_couting matches 2 run scriptevent q:quest_update 42
execute if score dummy expansionquest_start matches 1 if score dummy st3_dynamic_couting matches 3 run scriptevent q:quest_update 43
execute if score dummy expansionquest_start matches 1 if score dummy st3_dynamic_couting matches 4 run scriptevent q:quest_update 44
execute if score dummy expansionquest_start matches 1 if score dummy st3_dynamic_couting matches 5 run scriptevent q:quest_update 45
execute if score dummy expansionquest_start matches 1 if score dummy st3_dynamic_couting matches 6 run scriptevent q:quest_update 46

execute if score dummy st3_expansionquest_clear matches 0 if score dummy st3_dynamic_couting matches 6 unless entity @e[family=transformer_car] run summon bridge:transformer_car 61 -46 -28
execute if score dummy expansionquest_start matches 1 unless score dummy st3_dynamic_couting matches 6 run event entity @e[family=transformer_car] bridge:despawn

execute if score dummy expansionquest_start matches 1 if score dummy st3_expansionquest_clear matches 1 run scriptevent q:quest_update 5
execute if score dummy expansionquest_start matches 1 unless score dummy st3_expansionquest_clear matches 1 run scriptevent q:quest_update -5

execute if score dummy mainquest_start matches 1 if score dummy st3_main1_clear matches 1 if score dummy st3_main2_clear matches 1 run function stage3/Key_Quest/on_start_keyquest_stage3
execute if score dummy st3_keyquest_clear matches 1 unless entity @e[family=dynamite_marker] if score dummy st3_dynamic_couting matches ..0 run function stage3/Expansion_Quest/on_start_expansionquest_stage3

execute if score dummy stage matches 3 if score dummy st3_expansionquest_clear matches 1 run function stage3/on_clear_stage3 

