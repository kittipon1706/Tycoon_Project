execute if score dummy mainquest_start matches 1 unless score dummy st1_main1_clear matches 1 run scriptevent q:quest_update -1
execute if score dummy mainquest_start matches 1 if score dummy st1_main1_clear matches 1 run scriptevent q:quest_update 1

execute if score dummy mainquest_start matches 1 unless entity @e[family=salesman1,x=13,y=-24,z=134,dx=100,dy=24,dz=60] run scoreboard players set dummy st1_main2_clear 0
execute if score dummy mainquest_start matches 1 if entity @e[family=salesman1,x=13,y=-24,z=134,dx=100,dy=24,dz=60] run scoreboard players set dummy st1_main2_clear 1
execute if score dummy mainquest_start matches 1 if entity @e[family=salesman1,x=13,y=-24,z=134,dx=100,dy=24,dz=60] run scriptevent q:quest_update 2
execute if score dummy mainquest_start matches 1 unless entity @e[family=salesman1,x=13,y=-24,z=134,dx=100,dy=24,dz=60] run scriptevent q:quest_update -2

execute if score dummy mainquest_start matches 1 unless score dummy cartype_generate matches 1.. run scoreboard players set dummy st1_main3_clear 0
execute if score dummy mainquest_start matches 1 unless score dummy cartype_generate matches 1.. run scriptevent q:quest_update -3
execute if score dummy mainquest_start matches 1 if score dummy cartype_generate matches 1.. run scoreboard players set dummy st1_main3_clear 1
execute if score dummy mainquest_start matches 1 if score dummy cartype_generate matches 1.. run scriptevent q:quest_update 3

execute if score dummy st1_keyquest_state matches 2.. if score dummy st1_keyquest_clear matches 1 run scriptevent q:quest_update 4
execute if score dummy st1_keyquest_state matches 2.. run function stage1/Key_Quest/on_clear_keyquest_stage1
execute if score dummy st1_keyquest_state matches 2.. run scriptevent q:quest_update 4
execute unless score dummy st1_keyquest_state matches 2.. run scriptevent q:quest_update -4

execute if score dummy mainquest_start matches 1 if score dummy st1_main1_clear matches 1 if score dummy st1_main2_clear matches 1 if score dummy st1_main3_clear matches 1 run function stage1/Key_Quest/on_start_keyquest_stage1
execute if score dummy st1_keyquest_clear matches 1 if score dummy keyquest_start matches 1 run function stage1/Expansion_Quest/on_start_expansionquest_stage1