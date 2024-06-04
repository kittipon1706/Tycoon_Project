scoreboard players set dummy test_start 0
scoreboard players set dummy delay_quest_message 0
camera @a[tag=Tester] fade time 0.5 1 1
title @p[tag=Tester] title Faild!!!
title @p[tag=Tester] title @@
event entity @e[family=test_car] bridge:despawn
scoreboard players set dummy test_clear 0
inputpermission set @p[tag=Tester] movement enabled
inputpermission set @p[tag=Tester] camera enabled
tag @a remove Tester

