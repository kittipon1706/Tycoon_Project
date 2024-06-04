execute if score dummy delay_quest_message matches ..60 run tickingarea add 14 -24 16 114 6 70 showroom3 true
execute if score dummy delay_quest_message matches ..60 run tickingarea add -508 -34 28 -408 -60 112 building3_1 true
execute if score dummy delay_quest_message matches ..60 run tickingarea add -488 -43 100 -426 -24 146 building3_2 true
execute if score dummy delay_quest_message matches ..60 run tickingarea add -187 -21 21 -214 -15 1 boss_st2 true
execute if score dummy delay_quest_message matches ..60 run structure save building3_1 -508 -34 29 -457 -60 70 false disk
execute if score dummy delay_quest_message matches ..60 run structure save building3_2 -508 -34 71 -457 -60 112 false disk
execute if score dummy delay_quest_message matches ..60 run structure save building3_3 -458 -34 29 -408 -60 70 false disk
execute if score dummy delay_quest_message matches ..60 run structure save building3_4 -458 -34 71 -408 -60 112 false disk
execute if score dummy delay_quest_message matches ..60 run structure save building3_5 -488 -43 95 -426 -24 146 false disk
execute if score dummy delay_quest_message matches ..60 run structure save showroom3_1 14 -24 17 64 6 70 false disk
execute if score dummy delay_quest_message matches ..60 run structure save showroom3_2 65 -24 17 114 6 70 false disk
execute if score dummy delay_quest_message matches ..60 run scoreboard players add dummy delay_quest_message 1
execute if score dummy delay_quest_message matches 60.. run function stage2/stage2_quest_checker 
execute if score dummy st2_expansionquest_clear matches 1 run scoreboard players add dummy st2_transition_time 1
execute if score dummy st2_transition_time matches 100.. run function stage3/on_start_stage3