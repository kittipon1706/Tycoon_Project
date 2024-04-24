# customer genarator -----------------------------------------------------
scoreboard objectives add showroom2_customer_spawn_timer dummy
scoreboard players add dummy showroom2_customer_spawn_timer 1 
execute if score dummy showroom2_customer_spawn_timer matches 200.. run summon bridge:customer_1 106 -38 133
execute if score dummy showroom2_customer_spawn_timer matches 200.. run scoreboard players set dummy showroom2_customer_spawn_timer 0
# car generator ----------------------------------------------------------
scoreboard objectives add  other_car2_generate_timer1 dummy
scoreboard objectives add  other_car2_generate_timer2 dummy
scoreboard objectives add  other_car2_generate_timer3 dummy
scoreboard objectives add  other_car2_generate_timer4 dummy
scoreboard objectives add  other_car2_generate_timer5 dummy

# slot 1 counter
execute if entity @e[family=car,x=67,y=-37,z=124,dx=8,dy=3,dz=4] run scoreboard players set dummy other_car2_generate_timer1 0
execute unless entity @e[family=car,x=67,y=-37,z=124,dx=8,dy=3,dz=4] run scoreboard players add dummy other_car2_generate_timer1 1
# slot 2 counter
execute if entity @e[family=car,x=67,y=-37,z=117,dx=8,dy=3,dz=4] run scoreboard players set dummy other_car2_generate_timer2 0
execute unless entity @e[family=car,x=67,y=-37,z=117,dx=8,dy=3,dz=4] run scoreboard players add dummy other_car2_generate_timer2 1
# slot 3 counter
execute if entity @e[family=car,x=67,y=-37,z=110,dx=8,dy=3,dz=4] run scoreboard players set dummy other_car2_generate_timer3 0
execute unless entity @e[family=car,x=67,y=-37,z=110,dx=8,dy=3,dz=4] run scoreboard players add dummy other_car2_generate_timer3 1

#showroom2
#slote1
execute unless entity @e[family=car,x=67,y=-37,z=124,dx=8,dy=3,dz=4] if score dummy other_car2_generate_timer1 matches 200.. run summon bridge:normal_car1 71 -37 126 -90 
#slote2
execute unless entity @e[family=car,x=67,y=-37,z=117,dx=8,dy=3,dz=4] if score dummy other_car2_generate_timer2 matches 200.. run summon bridge:normal_car1 71 -37 119 -90 
#slote3
execute unless entity @e[family=car,x=67,y=-37,z=110,dx=8,dy=3,dz=4] if score dummy other_car2_generate_timer3 matches 200.. run summon bridge:normal_car1 71 -37 112 -90 


#set family's car in all slote to onsell_car 
#slote1
event entity @e[family=car,x=67,y=-37,z=124,dx=8,dy=3,dz=4] bridge:set_sellable
#slote2
event entity @e[family=car,x=67,y=-37,z=117,dx=8,dy=3,dz=4] bridge:set_sellable
#slote3
event entity @e[family=car,x=67,y=-37,z=110,dx=8,dy=3,dz=4] bridge:set_sellable

#queue ----------------------------------------------
scoreboard objectives add showroom2_Inqueue dummy
scoreboard objectives add showroom2_Getqueue dummy
scoreboard players set dummy showroom2_Inqueue 0 
scoreboard players set dummy showroom2_Getqueue 0 
execute as @e[family=customer1,tag=queue,x=40,y=-38,z=75,dx=60,dy=30,dz=51] run scoreboard players add dummy showroom2_Inqueue 1
execute if score dummy Inqueue matches 1 run event entity @e[family=customer1_waiting,tag=queue,c=1,x=40,y=-38,z=75,dx=60,dy=30,dz=51] bridge:get_queue1 
execute if score dummy Inqueue matches 2 run event entity @e[family=customer1_waiting,tag=queue,c=1,x=40,y=-38,z=75,dx=60,dy=30,dz=51] bridge:get_queue2
execute if score dummy Inqueue matches 3 run event entity @e[family=customer1_waiting,tag=queue,c=1,x=40,y=-38,z=75,dx=60,dy=30,dz=51] bridge:get_queue3
#not
execute if score dummy showroom2_Inqueue matches 4.. run scoreboard players add dummy showroom2_Getqueue 1
#can 
execute unless score dummy showroom2_Inqueue matches 4.. run scoreboard players add dummy showroom2_Getqueue 0
execute if score dummy showroom2_Inqueue matches ..3 if score dummy showroom2_Getqueue matches 0 run tag @e[family=customer1,tag=!queue,c=1,x=40,y=-38,z=75,dx=60,dy=30,dz=51] add queue