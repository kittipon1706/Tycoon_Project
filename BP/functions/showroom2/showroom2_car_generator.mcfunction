# car generator ----------------------------------------------------------
scoreboard objectives add showroom2_car_generate_timer1 dummy
scoreboard objectives add showroom2_car_generate_timer2 dummy
scoreboard objectives add showroom2_car_generate_timer3 dummy
scoreboard objectives add showroom2_car_generate_timer4 dummy

# slot 1 counter
execute if entity @e[family=car,x=67,y=-22,z=111,dx=8,dy=3,dz=4] run scoreboard players set dummy showroom2_car_generate_timer1 0
execute unless entity @e[family=car,x=67,y=-22,z=111,dx=8,dy=3,dz=4] run scoreboard players add dummy showroom2_car_generate_timer1 1
# slot 2 counter
execute if entity @e[family=car,x=67,y=-22,z=120,dx=8,dy=3,dz=4] run scoreboard players set dummy showroom2_car_generate_timer2 0
execute unless entity @e[family=car,x=67,y=-22,z=120,dx=8,dy=3,dz=4] run scoreboard players add dummy showroom2_car_generate_timer2 1
# slot 3 counter
execute if entity @e[family=car,x=46,y=-21,z=111,dx=8,dy=3,dz=4] run scoreboard players set dummy showroom2_car_generate_timer3 0
execute unless entity @e[family=car,x=46,y=-32,z=111,dx=8,dy=3,dz=4] run scoreboard players add dummy showroom2_car_generate_timer3 1

# slot 4 counter
execute if entity @e[family=car,x=46,y=-21,z=119,dx=8,dy=3,dz=4] run scoreboard players set dummy showroom2_car_generate_timer4 0
execute unless entity @e[family=car,x=46,y=-32,z=119,dx=8,dy=3,dz=4] run scoreboard players add dummy showroom2_car_generate_timer4 1

#slote1
execute unless entity @e[family=car,x=67,y=-22,z=111,dx=8,dy=3,dz=4] if score dummy showroom2_car_generate_timer1 >= dummy car_generate_time run summon bridge:normal_car1 71 -22 113 -90 
#slote2
execute unless entity @e[family=car,x=67,y=-22,z=120,dx=8,dy=3,dz=4] if score dummy showroom2_car_generate_timer2 >= dummy car_generate_time run summon bridge:normal_car2 71 -22 122 -90 
#slote3
execute unless entity @e[family=car,x=46,y=-21,z=111,dx=8,dy=3,dz=4] if score dummy showroom2_car_generate_timer3 >= dummy car_generate_time run summon bridge:normal_car3 49 -21 113 270 
#slote4
execute unless entity @e[family=car,x=46,y=-21,z=119,dx=8,dy=3,dz=4] if score dummy showroom2_car_generate_timer4 >= dummy car_generate_time run summon bridge:normal_car1 49 -21 121 270


#set family's car in all slote to onsell_car 
#slote1
event entity @e[family=car,x=67,y=-22,z=111,dx=8,dy=3,dz=4] bridge:set_sellable
#slote2
event entity @e[family=car,x=67,y=-22,z=120,dx=8,dy=3,dz=4] bridge:set_sellable
#slote3
event entity @e[family=car,x=46,y=-21,z=119,dx=8,dy=3,dz=4] bridge:set_sellable
#slote4
event entity @e[family=car,x=46,y=-21,z=119,dx=8,dy=3,dz=4] bridge:set_sellable

#queue ----------------------------------------------
scoreboard objectives add showroom2_Inqueue dummy
#scoreboard objectives add showroom2_Getqueue dummy
scoreboard players set dummy showroom2_Inqueue 0 
#scoreboard players set dummy showroom2_Getqueue 0 

execute as @e[family=customer1,x=14,y=-24,z=70,dx=100,dy=24,dz=64] run scoreboard players add dummy showroom2_Inqueue 1
execute if entity @e[family=car,x=67,y=-22,z=111,dx=8,dy=3,dz=4] run event entity @e[family=customer1_waiting,c=1,x=14,y=-24,z=70,dx=100,dy=24,dz=64] bridge:get_queue1 
execute if entity @e[family=car,x=67,y=-22,z=120,dx=8,dy=3,dz=4] run event entity @e[family=customer1_waiting,c=1,x=14,y=-24,z=70,dx=100,dy=24,dz=64] bridge:get_queue2
execute if entity @e[family=car,x=46,y=-21,z=119,dx=8,dy=3,dz=4] run event entity @e[family=customer1_waiting,c=1,x=14,y=-24,z=70,dx=100,dy=24,dz=64] bridge:get_queue3
execute if entity @e[family=car,x=46,y=-21,z=119,dx=8,dy=3,dz=4] run event entity @e[family=customer1_waiting,c=1,x=14,y=-24,z=70,dx=100,dy=24,dz=64] bridge:get_queue3
#not
#execute if score dummy showroom2_Inqueue matches 5.. run scoreboard players add dummy showroom2_Getqueue 0
#can 
#execute unless score dummy showroom2_Inqueue matches 5.. run scoreboard players add dummy showroom2_Getqueue 1
#execute if score dummy showroom2_Getqueue matches 1 run tag @e[family=customer1_waiting,tag=!queue,c=1,x=14,y=-24,z=70,dx=100,dy=24,dz=64] add queue
#execute unless entity @e[family=customer1_move_into,x=14,y=-24,z=70,dx=100,dy=24,dz=64] if score dummy stage1_Getqueue matches 1 if entity @e[family=salesman1,x=14,y=-24,z=70,dx=100,dy=24,dz=64] run function showroom2/showroom2_customer_generator
execute if score dummy showroom2_Inqueue matches ..3 if entity @e[family=salesman1,x=14,y=-24,z=70,dx=100,dy=24,dz=64] run function showroom2/showroom2_customer_generator