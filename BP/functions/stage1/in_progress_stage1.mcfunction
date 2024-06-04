execute if score dummy delay_quest_message matches ..60 run tickingarea add -375 -60 70 -283 -30 158 building2 true
execute if score dummy delay_quest_message matches ..60 run tickingarea add 14 -24 70 114 0 134 showroom2 true
execute if score dummy delay_quest_message matches ..60 run tickingarea add 13 -24 134 113 0 194 showroom0 true
execute if score dummy delay_quest_message matches ..60 run structure save building2_1 -378 -60 82 -329 -30 120 false disk
execute if score dummy delay_quest_message matches ..60 run structure save building2_2 -378 -60 121 -329 -30 158 false disk
execute if score dummy delay_quest_message matches ..60 run structure save building2_3 -330 -60 82 -279 -30 120 false disk
execute if score dummy delay_quest_message matches ..60 run structure save building2_4 -330 -60 121 -279 -30 158 false disk
execute if score dummy delay_quest_message matches ..60 run structure save showroom2_1 14 -24 70 64 0 133 false disk
execute if score dummy delay_quest_message matches ..60 run structure save showroom2_2 65 -24 70 114 0 133 false disk
execute if score dummy delay_quest_message matches ..60 run scoreboard players add dummy delay_quest_message 1
execute if score dummy delay_quest_message matches 60.. run function stage1/stage1_quest_checker
execute if score dummy st1_expansionquest_clear matches 1 run scoreboard players add dummy st1_transition_time 1
execute if score dummy st1_transition_time matches 100.. run function stage2/on_start_stage2
