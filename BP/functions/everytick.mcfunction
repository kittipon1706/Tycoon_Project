function playerDeath
execute if score dummy money matches ..0 run scoreboard players set dummy money 0
execute unless score dummy test_start matches 1 unless score dummy test_clear matches 1 run scoreboard objectives setdisplay sidebar money
#car_generator
execute if score dummy busy matches 0 if score dummy stage matches 1.. run function stage1/stage1_car_generator
execute if score dummy busy matches 0 if score dummy stage matches 2.. run function stage2/stage2_car_generator

#busy check
execute if score dummy busy matches 0 if entity @e[family=boss_stage2] run scoreboard players set dummy busy 1
execute if score dummy busy matches 0 if entity @e[family=test_car] run scoreboard players set dummy busy 1
execute if score dummy busy matches 0 if entity @e[family=MN_enemy_car] run scoreboard players set dummy busy 1
execute if score dummy busy matches 1 unless entity @e[family=boss_stage2] unless entity @e[family=test_car] run scoreboard players set dummy busy 0

#stage 0
execute if score dummy stage matches 0 if score dummy busy matches 0 run function stage0/in_progress_stage0

#stage 1
execute if score dummy stage matches 1 if score dummy busy matches 0  run function stage1/in_progress_stage1
execute if score dummy stage matches 1.. if score dummy busy matches 0  run function stage1/stage1_queue_customer
execute if score dummy MN_start matches 1 run function The_Midnight_Racer/in_progress_MN

#stage2
execute if score dummy stage matches 2 if score dummy busy matches 0  run function stage2/in_progress_stage2
execute if score dummy stage matches 2.. if score dummy busy matches 0  run function stage2/stage2_queue_customer
execute if score dummy expansionquest_start matches 1 run function stage2/Expansion_Quest/in_progess_expansionquest_stage2

#stage3
execute if score dummy stage matches 3 if score dummy busy matches 0  run function stage3/in_progress_stage3

#stage4
execute if score dummy stage matches 4 if score dummy busy matches 0  run function stage4/in_progress_stage4

#stage5
execute if score dummy stage matches 5 if score dummy busy matches 0  run function stage5/in_progress_stage5

#test
execute if score dummy test_start matches 1 run function The_Prototype_Test/in_progress_test
execute if entity @e[family=test_car,c=1] if entity @e[family=car,family=!test_car,x=-51,y=-24,z=-40,dx=36,dy=5,dz=168] run event entity @e[family=car,family=!test_car,x=-51,y=-24,z=-40,dx=36,dy=5,dz=168] bridge:despawn
execute if score dummy test_start matches 0 if entity @e[family=car,family=!test_car,x=-51,y=-24,z=-40,dx=36,dy=5,dz=168] run event entity @e[family=car,family=!test_car,x=-51,y=-24,z=-40,dx=36,dy=5,dz=168] bridge:despawn
execute if score dummy test_clear matches 1 run function The_Prototype_Test/on_clear_test

#showroom2
#execute unless entity @e[family=salesman1,c=1,x=14,y=-24,z=70,dx=100,dy=24,dz=64] if score dummy stage matches ..1 run function showroom2/create_showroom2
execute  if score dummy busy matches 0 if entity @e[family=salesman1,c=1,x=14,y=-24,z=70,dx=100,dy=24,dz=64] if score dummy stage matches ..1 run function showroom2/showroom2_car_generator
#showroom3
#execute unless entity @e[family=salesman1,c=1,x=14,y=-24,z=16,dx=100,dy=24,dz=54] if score dummy stage matches ..2 run function showroom3/create_showroom3
execute  if score dummy busy matches 0 if entity @e[family=salesman1,c=1,x=14,y=-24,z=16,dx=100,dy=24,dz=54] if score dummy stage matches ..2 run function showroom3/showroom3_car_generator

execute if score dummy st4_key1_clear matches 1 if score dummy st4_key2_clear matches 1 unless entity @e[family=airship_nestorio,x=45,y=-8,z=0,dx=16,dy=10,dz=16] run summon bridge:airship_nestorio 53 -7 8 0 0 bridge:set_nestorio

function shop_update

#function save_structure
#playanimation @e[type=npc] animation.creeper.swelling jsjs 9999999

gamerule commandblockoutput false
