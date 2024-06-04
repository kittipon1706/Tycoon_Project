execute if score dummy delay_quest_message matches ..60 run tickingarea add 13 -24 -48 114 6 15 showroom5 true
execute if score dummy delay_quest_message matches ..60 run tickingarea add -764 -60 -98 -663 -30 -31 building5 true
execute if score dummy delay_quest_message matches ..60 run structure save building5_1 -764 -60 -98 -714 -30 -65 false disk
execute if score dummy delay_quest_message matches ..60 run structure save building5_2 -715 -60 -98 -663 -30 -65 false disk
execute if score dummy delay_quest_message matches ..60 run structure save building5_3 -764 -60 -66 -714 -30 -25 false disk
execute if score dummy delay_quest_message matches ..60 run structure save building5_4 -715 -60 -66 -663 -30 -25 false disk
execute if score dummy delay_quest_message matches ..60 run scoreboard players add dummy delay_quest_message 1
execute if score dummy delay_quest_message matches 60.. run function stage4/stage4_quest_checker
scoreboard players set dummy st4_billboard_painted_couting 0
execute as @e[family=billboard_paintball_painted] run scoreboard players add dummy st4_billboard_painted_couting 1
scoreboard objectives add st4_expansionquest2_state dummy
scoreboard players set dummy st4_expansionquest2_state 0
execute as @e[tag=Boss4] run scoreboard players add dummy st4_expansionquest2_state 1

execute unless entity @e[family=bossquest_st4,x=33,y=14,z=-102,dx=55,dy=5,dz=60] if score dummy st4_expansionquest2_clear matches 0 if score dummy st4_expansionquest1_clear matches 1 run summon bridge:bossquest 45 14 -70 180 0 bridge:set_stage4
execute if entity @e[family=bossquest_st4,x=33,y=14,z=-102,dx=55,dy=5,dz=60] if score dummy st4_expansionquest2_clear matches 0 unless score dummy st4_expansionquest1_clear matches 1 run event entity @e[family=bossquest_st4,c=1] bridge:despawn
