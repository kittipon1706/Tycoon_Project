execute if score dummy delay_quest_message matches ..60 run tickingarea add -908 -60 -166 -807 -15 -89 building6 true
execute if score dummy delay_quest_message matches ..60 run tickingarea add 13 -24 -175 114 22 -112 showroom6 true
execute if score dummy delay_quest_message matches ..60 run structure save building6_1 -908 -60 -166 -858 -15 -128 false disk
execute if score dummy delay_quest_message matches ..60 run structure save building6_2 -859 -60 -166 -807 -15 -128 false disk
execute if score dummy delay_quest_message matches ..60 run structure save building6_3 -908 -60 -129 -858 -15 -89 false disk
execute if score dummy delay_quest_message matches ..60 run structure save building6_4 -859 -60 -129 -807 -15 -89 false disk
execute if score dummy delay_quest_message matches ..60 run structure save showroom6_1 13 -24 -175 63 22 -112 false disk 
execute if score dummy delay_quest_message matches ..60 run structure save showroom6_2 64 -24 -175 114 22 -112 false disk 
execute if score dummy delay_quest_message matches ..60 run scoreboard players add dummy delay_quest_message 1
execute if score dummy delay_quest_message matches 60.. run function stage5/stage5_quest_checker
execute if entity @e[family=truck,family=!truck_fill,x=272,y=-24,z=-257,dx=5,dy=5,dz=14] run event entity @e[family=truck,family=!truck_fill,x=272,y=-24,z=-257,dx=5,dy=5,dz=14] bridge:set_fill

execute if score dummy is_day matches 1 if entity @e[family=bodyguard_stage5,family=!bodyguard_stage5_day] run event entity @e[family=bodyguard_stage5,family=!bodyguard_stage5_day] bridge:set_find_all
execute if score dummy is_day matches 0 if entity @e[family=bodyguard_stage5,family=!bodyguard_stage5_night] run event entity @e[family=bodyguard_stage5,family=!bodyguard_stage5_night] bridge:set_find_conditon
scoreboard players set dummy st5_alarm_clock_couting 0
scoreboard players set dummy st5_truck_fill_couting 0
execute as @e[family=truck_fill,x=71,y=-23,z=-173,dx=27,dy=5,dz=58] run scoreboard players add dummy st5_truck_fill_couting 1
execute as @e[family=alarm_clock] run scoreboard players add dummy st5_alarm_clock_couting 1

