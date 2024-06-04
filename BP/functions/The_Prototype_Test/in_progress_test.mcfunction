execute if score dummy test_start_time matches 60 run title @a[tag=Tester] title systemUI_three_show
execute if score dummy test_start_time matches 80 run ride @p[tag=Tester] start_riding @e[family=car,c=1,x=-51,y=-24,z=-40,dx=36,dy=5,dz=168] teleport_rider
execute if score dummy test_start_time matches 40 run title @a[tag=Tester] title systemUI_two_show
execute if score dummy test_start_time matches 80 run event entity @e[family=car,c=1,x=-51,y=-24,z=-40,dx=36,dy=5,dz=168] bridge:set_test
execute if score dummy test_start_time matches 20 run title @a[tag=Tester] title systemUI_one_show
execute if score dummy test_start_time matches 1 run title @p[tag=Tester] title START
execute if score dummy test_start_time matches 60 run inputpermission set @p[tag=Tester] movement disabled
execute if score dummy test_start_time matches 1 run inputpermission set @p[tag=Tester] movement enabled
execute if score dummy test_start_time matches 0 run scoreboard players add dummy score_time_players_temp 1
execute if score dummy test_start_time matches 20 run function The_Prototype_Test/set_waypoint
execute if score dummy test_state matches 18.. run scoreboard players set dummy test_clear 1
execute if score dummy test_state matches 18.. run function The_Prototype_Test/summary_result
execute if score dummy test_start_time matches 60 run scoreboard players set dummy delay_quest_message 0
execute if score dummy test_start_time matches 1 run playsound mob.phototype.bgm @a[tag=Tester] 
scoreboard objectives setdisplay sidebar score_time_players_temp
title @p[tag=Tester] title @@
execute if score dummy test_start_time matches 1.. run scoreboard players remove dummy test_start_time 1


