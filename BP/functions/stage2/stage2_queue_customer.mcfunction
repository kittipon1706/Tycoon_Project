scoreboard objectives add stage2_Inqueue dummy
# scoreboard objectives add stage2_Getqueue dummy
scoreboard players set dummy stage2_Inqueue 0 
# scoreboard players set dummy stage2_Getqueue 0 
execute as @e[family=customer1,x=18,y=-24,z=70,dx=92,dy=30,dz=60] run scoreboard players add dummy stage2_Inqueue 1
execute if entity @e[family=car,x=77,y=-21,z=89,dx=8,dy=3,dz=4] run event entity @e[family=customer1_waiting,c=1,x=18,y=-24,z=70,dx=92,dy=30,dz=60] bridge:get_queue1 
execute if entity @e[family=car,x=77,y=-21,z=95,dx=8,dy=3,dz=4] run event entity @e[family=customer1_waiting,c=1,x=18,y=-24,z=70,dx=92,dy=30,dz=60] bridge:get_queue2
execute if entity @e[family=car,x=77,y=-21,z=102,dx=8,dy=3,dz=4] run event entity @e[family=customer1_waiting,c=1,x=18,y=-24,z=70,dx=92,dy=30,dz=60] bridge:get_queue3
execute if entity @e[family=car,x=77,y=-21,z=108,dx=8,dy=3,dz=4] run event entity @e[family=customer1_waiting,c=1,x=18,y=-24,z=70,dx=92,dy=30,dz=60] bridge:get_queue4
# #Your Commands Here (examples)
# #not
# execute if score dummy stage2_Inqueue matches 5.. run scoreboard players add dummy stage2_Getqueue 0
# #can 
# execute unless score dummy stage2_Inqueue matches 5.. run scoreboard players add dummy stage2_Getqueue 1
# execute if score dummy stage2_Getqueue matches 1 run tag @e[family=customer1_waiting,tag=!queue,c=1,x=18,y=-24,z=70,dx=92,dy=30,dz=60] add queue
# execute unless entity @e[family=customer1_move_into,x=18,y=-24,z=70,dx=92,dy=30,dz=60] if score dummy stage2_Getqueue matches 1 if entity @e[family=salesman1,x=18,y=-24,z=70,dx=92,dy=30,dz=60] if score dummy cartype_generate matches 1.. run function stage2/stage2_customer_generator
# execute unless entity @e[family=customer1_move_into,x=18,y=-24,z=70,dx=92,dy=30,dz=60] if entity @e[family=salesman1,x=18,y=-24,z=70,dx=92,dy=30,dz=60] if score dummy cartype_generate matches 1.. run summon bridge:customer_1 104 -23 74
execute if score dummy stage2_Inqueue matches ..3 if entity @e[family=salesman1,x=18,y=-24,z=70,dx=92,dy=30,dz=60] if score dummy cartype_generate matches 1.. run function stage2/stage2_customer_generator