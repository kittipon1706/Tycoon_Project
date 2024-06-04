scoreboard players set dummy test_start 0
scoreboard players set dummy delay_quest_message 0
scoreboard objectives setdisplay sidebar time_scoreboard ascending
execute if score dummy show_score_time matches 200 run camera @a[tag=Tester] fade time 0.5 1 1
execute if score dummy show_score_time matches 200 run inputpermission set @p[tag=Tester] movement disabled
execute if score dummy show_score_time matches 200 run inputpermission set @p[tag=Tester] camera disabled
execute if score dummy show_score_time matches 200 run title @p[tag=Tester] title Time out!!!
execute if score dummy show_score_time matches 0 run inputpermission set @p[tag=Tester] movement enabled
execute if score dummy show_score_time matches 0 run inputpermission set @p[tag=Tester] camera enabled
execute if score dummy show_score_time matches 180 run title @p[tag=Tester] title show_test_score 
execute if score dummy show_score_time matches 180 run title @p[tag=Tester] title show_test_score 
execute if score dummy show_score_time matches 0 run event entity @e[family=test_car] bridge:despawn
execute if score dummy show_score_time matches 0 run title @p[tag=Tester] title @@
execute if score dummy show_score_time matches 0 run tag @a[tag=Tester] add Tested
execute if score dummy show_score_time matches 0 run tag @a remove Tester
execute if score dummy show_score_time matches 0 run scoreboard players set dummy test_clear 0
execute if score dummy show_score_time matches 1.. run scoreboard players remove dummy show_score_time 1
tickingarea remove phototype_test


