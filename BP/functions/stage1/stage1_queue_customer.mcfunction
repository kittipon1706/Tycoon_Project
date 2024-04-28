scoreboard objectives add Inqueue dummy
scoreboard objectives add Getqueue dummy
scoreboard players set dummy Inqueue 0 
scoreboard players set dummy Getqueue 0 
execute as @e[family=customer1,tag=queue,x=13,y=-24,z=134,dx=100,dy=24,dz=60] run scoreboard players add dummy Inqueue 1
execute if score dummy Inqueue matches 1 run event entity @e[family=customer1_waiting,tag=queue,c=1,x=13,y=-24,z=134,dx=100,dy=24,dz=60] bridge:get_queue1 
execute if score dummy Inqueue matches 2 run event entity @e[family=customer1_waiting,tag=queue,c=1,x=13,y=-24,z=134,dx=100,dy=24,dz=60] bridge:get_queue2
execute if score dummy Inqueue matches 3 run event entity @e[family=customer1_waiting,tag=queue,c=1,x=13,y=-24,z=134,dx=100,dy=24,dz=60] bridge:get_queue3
#Your Commands Here (examples)
#not
execute if score dummy Inqueue matches 4.. run scoreboard players add dummy Getqueue 0
#can 
execute unless score dummy Inqueue matches 4.. run scoreboard players add dummy Getqueue 1
execute if score dummy Inqueue matches ..3 if score dummy Getqueue matches 1 run tag @e[family=customer1_waiting,tag=!queue,c=1,x=13,y=-24,z=134,dx=100,dy=24,dz=60] add queue

