execute if score dummy delay_quest_message matches ..60 run tickingarea add 13 -24 134 113 0 194 building0 true
execute if score dummy delay_quest_message matches ..60 run tickingarea add -225 -60 140 -125 -34 200 building1 true
execute if score dummy delay_quest_message matches ..60 run structure save building1_1 -225 -60 140 -175 -34 200 false disk
execute if score dummy delay_quest_message matches ..60 run structure save building1_2 -176 -60 140 -125 -34 200 false disk
execute if score dummy delay_quest_message matches ..60 run structure save building0_1 13 -24 134 63 0 194 false disk
execute if score dummy delay_quest_message matches ..60 run structure save building0_2 64 -24 134 113 0 194 false disk
execute if score dummy delay_quest_message matches ..60 run scoreboard players add dummy delay_quest_message 1
execute if score dummy delay_quest_message matches 60.. run function stage1/stage1_quest_checker