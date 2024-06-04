scoreboard objectives add stage1_Inqueue dummy
# scoreboard objectives add stage1_Getqueue dummy
scoreboard players set dummy stage1_Inqueue 0 
# scoreboard players set dummy stage1_Getqueue 0 
execute as @e[family=customer1,x=13,y=-24,z=134,dx=100,dy=24,dz=60] run scoreboard players add dummy stage1_Inqueue 1
execute if entity @e[family=car,x=67,y=-21,z=160,dx=8,dy=3,dz=4] run event entity @e[family=customer1_waiting,c=1,x=13,y=-24,z=134,dx=100,dy=24,dz=60] bridge:get_queue1 
execute if entity @e[family=car,x=67,y=-21,z=166,dx=8,dy=3,dz=4] run event entity @e[family=customer1_waiting,c=1,x=13,y=-24,z=134,dx=100,dy=24,dz=60] bridge:get_queue2
execute if entity @e[family=car,x=67,y=-21,z=172,dx=8,dy=3,dz=4] run event entity @e[family=customer1_waiting,c=1,x=13,y=-24,z=134,dx=100,dy=24,dz=60] bridge:get_queue3
# #Your Commands Here (examples)
# #not
# execute if score dummy stage1_Inqueue matches 4.. run scoreboard players add dummy stage1_Getqueue 0
# #can 
# execute unless score dummy stage1_Inqueue matches 4.. run scoreboard players add dummy stage1_Getqueue 1
# execute if score dummy stage1_Getqueue matches 1 run tag @e[family=customer1_waiting,tag=!queue,c=1,x=13,y=-24,z=134,dx=100,dy=24,dz=60] add queue
# execute unless entity @e[family=customer1_move_into,x=13,y=-24,z=134,dx=100,dy=24,dz=60] if score dummy stage1_Getqueue matches 1 if entity @e[family=salesman1,x=13,y=-24,z=134,dx=100,dy=24,dz=60] if score dummy cartype_generate matches 1.. run function stage1/stage1_customer_generator
#-------------
execute if score dummy stage1_Inqueue matches ..2 if entity @e[family=salesman1,x=13,y=-24,z=134,dx=100,dy=24,dz=60] if score dummy cartype_generate matches 1.. run function stage1/stage1_customer_generator
