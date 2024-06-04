execute if score dummy delay_quest_message matches ..60 run tickingarea add 9 -46 -62 73 -36 7 boos_stage3_area
execute if score dummy delay_quest_message matches ..60 run tickingarea add 48 -19 28 82 -8 58 quest_stage3_area
execute if score dummy delay_quest_message matches ..60 run tickingarea add 13 -24 -48 114 6 15 showroom4 true
execute if score dummy delay_quest_message matches ..60 run tickingarea add -636 -60 -35 -535 -29 38 building4_1 true
execute if score dummy delay_quest_message matches ..60 run tickingarea add -610 -32 10 -550 0 36 building4_2 true
execute if score dummy delay_quest_message matches ..60 run structure save building4_1 -636 -60 -35 -586 6 0 false disk
execute if score dummy delay_quest_message matches ..60 run structure save building4_2 -636 -60 1 -586 6 38 false disk
execute if score dummy delay_quest_message matches ..60 run structure save building4_3 -587 -60 -35 -535 6 0 false disk
execute if score dummy delay_quest_message matches ..60 run structure save building4_4 -587 -60 1 -535 6 38 false disk
execute if score dummy delay_quest_message matches ..60 run structure save building4_5 -610 -32 10 -550 0 36 false disk
execute if score dummy delay_quest_message matches ..60 run scoreboard players add dummy delay_quest_message 1
execute if score dummy delay_quest_message matches 60.. run function stage3/stage3_quest_checker 

execute if entity @e[family=dynamite] run scoreboard players set dummy st3_dynamic_couting 0
execute as @e[family=dynamite,x=15,y=-46,z=-36,dx=57,dy=5,dz=17] run scoreboard players add dummy st3_dynamic_couting 1

execute if entity @e[family=hand_engine] run scoreboard players set dummy st3_hand_engine_couting 0
execute as @e[family=hand_engine,x=27,y=-23,z=18,dx=76,dy=26,dz=68] run scoreboard players add dummy st3_hand_engine_couting 1

execute if score dummy st3_expansionquest_clear matches 1 run scoreboard players add dummy st3_transition_time 1
execute if score dummy st3_transition_time matches 100.. run function stage4/on_start_stage4
