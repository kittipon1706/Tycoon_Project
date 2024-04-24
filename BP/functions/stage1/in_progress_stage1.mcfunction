execute if score dummy stage matches 1 run function stage1/stage1_car_generator
execute if score dummy stage matches 1 if entity @e[family=salesman1,x=13,y=-24,z=134,dx=100,dy=24,dz=60] if score dummy cartype_generate matches 1.. run function stage1/stage1_customer_generator
execute if score dummy stage matches 1 run function stage1/The_Midnight_Racer/in_progress_MN
execute if score dummy stage matches 1 run function stage1/Key_Quest/in_progress_keyquest_stage1
execute if score dummy stage matches 1 if entity @e[family=customer1,x=13,y=-24,z=134,dx=100,dy=24,dz=60]  run function stage1/stage1_queue_customer
execute if score dummy cartype_generate matches 1.. run scoreboard players set dummy st1_main3_clear 1

execute unless entity @e[family=expoorganizer] if score dummy st1_keyquest_clear matches 1 run function stage1/on_clear_stage1