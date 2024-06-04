execute if score dummy st2_main1_clear matches 0 if score dummy st2_main2_clear matches 0 if score dummy st2_main3_clear matches 0 run scoreboard players set dummy mainquest_start 1
execute if score dummy st2_main1_clear matches 0 if score dummy st2_main2_clear matches 0 if score dummy st2_main3_clear matches 0 run scoreboard players set dummy keyquest_start 0
execute if score dummy st2_main1_clear matches 0 if score dummy st2_main2_clear matches 0 if score dummy st2_main3_clear matches 0 run scoreboard players set dummy expansionquest_start 0

execute if score dummy mainquest_start matches 1 if score dummy st2_main1_clear matches 0 run scriptevent q:quest_update -1
execute if score dummy mainquest_start matches 1 if score dummy st2_main1_clear matches 1 run scriptevent q:quest_update 1

execute if score dummy mainquest_start matches 1 unless entity @e[family=manager1,x=18,y=-24,z=70,dx=92,dy=30,dz=60] run scoreboard players set dummy st2_main2_clear 0
execute if score dummy mainquest_start matches 1 if entity @e[family=manager1,x=18,y=-24,z=70,dx=92,dy=30,dz=60] run scoreboard players set dummy st2_main2_clear 1
execute if score dummy mainquest_start matches 1 if entity @e[family=manager1,x=18,y=-24,z=70,dx=92,dy=30,dz=60] run scriptevent q:quest_update 2
execute if score dummy mainquest_start matches 1 unless entity @e[family=manager1,x=18,y=-24,z=70,dx=92,dy=30,dz=60] run scriptevent q:quest_update -2

execute if score dummy mainquest_start matches 1 if score dummy cartype_generate matches ..3 run scoreboard players set dummy st2_main3_clear 0
execute if score dummy mainquest_start matches 1 if score dummy cartype_generate matches ..3 run scriptevent q:quest_update -3
execute if score dummy mainquest_start matches 1 if score dummy cartype_generate matches 4.. run scoreboard players set dummy st2_main3_clear 1
execute if score dummy mainquest_start matches 1 if score dummy cartype_generate matches 4.. run scriptevent q:quest_update 3

execute if score dummy keyquest_start matches 1 unless entity @e[family=billboard_altered] run scoreboard players set dummy st2_keyquest_clear 0
execute if score dummy keyquest_start matches 1 if entity @e[family=billboard_altered] run scoreboard players set dummy st2_keyquest_clear 1
execute if score dummy keyquest_start matches 1 unless entity @e[family=billboard_altered] run scriptevent q:quest_update -4
execute if score dummy keyquest_start matches 1 if entity @e[family=billboard_altered] run scriptevent q:quest_update 4
execute if score dummy keyquest_start matches 1 if entity @e[family=billboard_altered] run function stage2/Key_Quest/on_clear_keyquest_stage2

execute if score dummy st2_expansionquest_clear matches 1 run scriptevent q:quest_update 5
execute if score dummy st2_expansionquest_clear matches 0 run scriptevent q:quest_update -5

execute if score dummy stage matches 2 if score dummy st2_expansionquest_clear matches 1 run function stage2/on_clear_stage2 
execute if score dummy mainquest_start matches 1 if score dummy st2_main1_clear matches 1 if score dummy st2_main2_clear matches 1 if score dummy st2_main3_clear matches 1 run function stage2/Key_Quest/on_start_keyquest_stage2
execute if score dummy st2_keyquest_clear matches 1 if score dummy keyquest_start matches 1 run function stage2/Expansion_Quest/on_start_expansionquest_stage2