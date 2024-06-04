execute if score dummy mainquest_start matches 1 if score dummy st4_main1_clear matches 1 run scriptevent q:quest_update 1
execute if score dummy mainquest_start matches 1 if score dummy st4_main1_clear matches 0 run scriptevent q:quest_update -1

execute if score dummy mainquest_start matches 1 if score dummy st4_main1_clear matches 1 if score dummy st4_main2_clear matches 0 if entity @e[family=player,x=45,y=-8,z=0,dx=50,dy=10,dz=20] run scoreboard players set dummy st4_main2_clear 1 
execute if score dummy mainquest_start matches 1 if score dummy st4_main2_clear matches 1 run scriptevent q:quest_update 2
execute if score dummy mainquest_start matches 1 if score dummy st4_main2_clear matches 0 run scriptevent q:quest_update -2

execute if score dummy keyquest_start matches 1 if score dummy st4_key1_clear matches 1 run scriptevent q:quest_update 3
execute if score dummy keyquest_start matches 1 if score dummy st4_key1_clear matches 0 run scriptevent q:quest_update -3

execute if score dummy keyquest_start matches 1 if score dummy st4_key2_clear matches 1 run scriptevent q:quest_update 4
execute if score dummy keyquest_start matches 1 if score dummy st4_key2_clear matches 0 run scriptevent q:quest_update -4

execute if score dummy keyquest_start matches 1 if score dummy st4_billboard_painted_couting matches 4.. run scoreboard players set dummy st4_key3_clear 1
execute if score dummy keyquest_start matches 1 unless score dummy st4_billboard_painted_couting matches 4.. run scoreboard players set dummy st4_key3_clear 0
execute if score dummy keyquest_start matches 1 if score dummy st4_billboard_painted_couting matches 0 run scriptevent q:quest_update 50
execute if score dummy keyquest_start matches 1 if score dummy st4_billboard_painted_couting matches 1 run scriptevent q:quest_update 51
execute if score dummy keyquest_start matches 1 if score dummy st4_billboard_painted_couting matches 2 run scriptevent q:quest_update 52
execute if score dummy keyquest_start matches 1 if score dummy st4_billboard_painted_couting matches 3 run scriptevent q:quest_update 53
execute if score dummy keyquest_start matches 1 if score dummy st4_billboard_painted_couting matches 4 run scriptevent q:quest_update 54

execute if score dummy expansionquest_start matches 1 if entity @e[family=airship_nestorio,x=38,y=17,z=-97,dx=20,dy=10,dz=20] run scriptevent q:quest_update 6
execute if score dummy expansionquest_start matches 1 if entity @e[family=airship_nestorio,x=38,y=17,z=-97,dx=20,dy=10,dz=20] run scoreboard players set dummy st4_expansionquest1_clear 1

execute if score dummy expansionquest_start matches 1 unless entity @e[tag=Boss4] run scoreboard players set dummy st4_expansionquest2_clear 1
execute if score dummy expansionquest_start matches 1 if entity @e[tag=Boss4] run scoreboard players set dummy st4_expansionquest2_clear 0
execute if score dummy expansionquest_start matches 1 if score dummy st4_expansionquest2_clear matches 1 run scriptevent q:quest_update 7
execute if score dummy expansionquest_start matches 1 unless score dummy st4_expansionquest2_clear matches 1 run scriptevent q:quest_update -7

execute if score dummy mainquest_start matches 1 if score dummy st4_main1_clear matches 1 if score dummy st4_main2_clear matches 1 run function stage4/Key_Quest/on_start_keyquest_stage4
execute if score dummy keyquest_start matches 1 if score dummy st4_key1_clear matches 1 if score dummy st4_key2_clear matches 1 if score dummy st4_key3_clear matches 1 run function stage4/Expansion_Quest/on_start_expansionquest_stage4
execute if score dummy expansionquest_start matches 1 if score dummy st4_expansionquest1_clear matches 1 if score dummy st4_expansionquest2_clear matches 1 run function stage4/Expansion_Quest/on_clear_expansionquest_stage4 