# car generator ----------------------------------------------------------
scoreboard objectives add showroom3_car_generate_timer1 dummy
scoreboard objectives add showroom3_car_generate_timer2 dummy
scoreboard objectives add showroom3_car_generate_timer3 dummy
scoreboard objectives add showroom3_car_generate_timer4 dummy

# slot 1 counter
execute if entity @e[family=car,x=55,y=-21,z=43,dx=8,dy=3,dz=4] run scoreboard players set dummy showroom3_car_generate_timer1 0
execute unless entity @e[family=car,x=55,y=-21,z=43,dx=8,dy=3,dz=4] run scoreboard players add dummy showroom3_car_generate_timer1 1
# slot 2 counter
execute if entity @e[family=car,x=55,y=-21,z=49,dx=8,dy=3,dz=4] run scoreboard players set dummy showroom3_car_generate_timer2 0
execute unless entity @e[family=car,x=55,y=-21,z=49,dx=8,dy=3,dz=4] run scoreboard players add dummy showroom3_car_generate_timer2 1
# slot 3 counter
execute if entity @e[family=car,x=55,y=-21,z=55,dx=8,dy=3,dz=4] run scoreboard players set dummy showroom3_car_generate_timer3 0
execute unless entity @e[family=car,x=55,y=-21,z=55,dx=8,dy=3,dz=4] run scoreboard players add dummy showroom3_car_generate_timer3 1


#slote1
execute unless entity @e[family=car,x=55,y=-21,z=43,dx=8,dy=3,dz=4] if score dummy showroom3_car_generate_timer1 >= dummy car_generate_time run summon bridge:mid_car4 58 -21 45 -90 
#slote2
execute unless entity @e[family=car,x=55,y=-21,z=49,dx=8,dy=3,dz=4] if score dummy showroom3_car_generate_timer2 >= dummy car_generate_time run summon bridge:mid_car5 58 -21 51 -90 
#slote3
execute unless entity @e[family=car,x=55,y=-21,z=55,dx=8,dy=3,dz=4] if score dummy showroom3_car_generate_timer3 >= dummy car_generate_time run summon bridge:mid_car6 58 -21 57 -90


#set family's car in all slote to onsell_car 
#slote1
event entity @e[family=car,x=55,y=-21,z=43,dx=8,dy=3,dz=4] bridge:set_sellable
#slote2
event entity @e[family=car,x=55,y=-21,z=49,dx=8,dy=3,dz=4] bridge:set_sellable
#slote3
event entity @e[family=car,x=55,y=-21,z=55,dx=8,dy=3,dz=4] bridge:set_sellable

#queue ----------------------------------------------
scoreboard objectives add showroom3_Inqueue dummy
scoreboard objectives add showroom3_Getqueue dummy
scoreboard players set dummy showroom3_Inqueue 0 
scoreboard players set dummy showroom3_Getqueue 0 

execute as @e[family=customer1,tag=queue,x=14,y=-24,z=16,dx=100,dy=24,dz=54] run scoreboard players add dummy showroom3_Inqueue 1
execute if entity @e[family=car,x=55,y=-21,z=43,dx=8,dy=3,dz=4] run event entity @e[family=customer1_waiting,tag=queue,c=1,x=14,y=-24,z=16,dx=100,dy=24,dz=54] bridge:get_queue1 
execute if entity @e[family=car,x=55,y=-21,z=49,dx=8,dy=3,dz=4] run event entity @e[family=customer1_waiting,tag=queue,c=1,x=14,y=-24,z=16,dx=100,dy=24,dz=54] bridge:get_queue2
execute if entity @e[family=car,x=55,y=-21,z=55,dx=8,dy=3,dz=4] run event entity @e[family=customer1_waiting,tag=queue,c=1,x=14,y=-24,z=16,dx=100,dy=24,dz=54] bridge:get_queue3
#not
execute if score dummy showroom3_Inqueue matches 4.. run scoreboard players add dummy showroom3_Getqueue 0
#can 
execute unless score dummy showroom3_Inqueue matches 4.. run scoreboard players add dummy showroom3_Getqueue 1
execute if score dummy showroom3_Getqueue matches 1 run tag @e[family=customer1_waiting,tag=!queue,c=1,x=14,y=-24,z=16,dx=100,dy=24,dz=54] add queue
execute unless entity @e[family=customer1_move_into,x=14,y=-24,z=16,dx=100,dy=24,dz=54] if score dummy stage1_Getqueue matches 1 if entity @e[family=salesman1,x=14,y=-24,z=16,dx=100,dy=24,dz=54] run function showroom3/showroom3_customer_generator
