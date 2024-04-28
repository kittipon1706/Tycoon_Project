scoreboard objectives add  stage1_car_generate_timer1 dummy
scoreboard objectives add  stage1_car_generate_timer2 dummy
scoreboard objectives add  stage1_car_generate_timer3 dummy


# slot 1 counter
execute if entity @e[family=car,x=67,y=-21,z=160,dx=8,dy=3,dz=4] run scoreboard players set dummy stage1_car_generate_timer1 0
execute unless entity @e[family=car,x=67,y=-21,z=160,dx=8,dy=3,dz=4] if score dummy cartype_generate matches 1.. run scoreboard players add dummy stage1_car_generate_timer1 1
# slot 2 counter
execute if entity @e[family=car,x=67,y=-21,z=166,dx=8,dy=3,dz=4] run scoreboard players set dummy stage1_car_generate_timer2 0
execute unless entity @e[family=car,x=67,y=-21,z=166,dx=8,dy=3,dz=4] if score dummy cartype_generate matches 1.. run scoreboard players add dummy stage1_car_generate_timer2 1
# slot 3 counter
execute if entity @e[family=car,x=67,y=-21,z=172,dx=8,dy=3,dz=4] run scoreboard players set dummy stage1_car_generate_timer3 0
execute unless entity @e[family=car,x=67,y=-21,z=172,dx=8,dy=3,dz=4] if score dummy cartype_generate matches 1.. run scoreboard players add dummy stage1_car_generate_timer3 1

#type 1
#slote1
execute unless entity @e[family=car,x=67,y=-21,z=160,dx=8,dy=3,dz=4] if score dummy cartype_generate matches 1 if score dummy stage1_car_generate_timer1 >= dummy car_generate_time run summon bridge:normal_car1 71 -21 162 -90 
#slote2
execute unless entity @e[family=car,x=67,y=-21,z=166,dx=8,dy=3,dz=4] if score dummy cartype_generate matches 1 if score dummy stage1_car_generate_timer2 >= dummy car_generate_time run summon bridge:normal_car1 71 -21 168 -90 
#slote3
execute unless entity @e[family=car,x=67,y=-21,z=172,dx=8,dy=3,dz=4] if score dummy cartype_generate matches 1 if score dummy stage1_car_generate_timer3 >= dummy car_generate_time run summon bridge:normal_car1 71 -21 174 -90 

#type 2
#slote1
execute unless entity @e[family=car,x=67,y=-21,z=160,dx=8,dy=3,dz=4] if score dummy cartype_generate matches 2 if score dummy stage1_car_generate_timer1 >= dummy car_generate_time run summon bridge:normal_car2 71 -21 162 -90 
#slote2
execute unless entity @e[family=car,x=67,y=-21,z=166,dx=8,dy=3,dz=4] if score dummy cartype_generate matches 2 if score dummy stage1_car_generate_timer2 >= dummy car_generate_time run summon bridge:normal_car2 71 -21 168 -90  
#slote3
execute unless entity @e[family=car,x=67,y=-21,z=172,dx=8,dy=3,dz=4] if score dummy cartype_generate matches 2 if score dummy stage1_car_generate_timer3 >= dummy car_generate_time run summon bridge:normal_car2 71 -21 174 -90 

#type 3
#slote1
execute unless entity @e[family=car,x=67,y=-21,z=160,dx=8,dy=3,dz=4] if score dummy cartype_generate matches 3 if score dummy stage1_car_generate_timer1 >= dummy car_generate_time run summon bridge:normal_car3 71 -21 162 -90
#slote2
execute unless entity @e[family=car,x=67,y=-21,z=166,dx=8,dy=3,dz=4] if score dummy cartype_generate matches 3 if score dummy stage1_car_generate_timer2 >= dummy car_generate_time run summon bridge:normal_car3 71 -21 168 -90 
#slote3
execute unless entity @e[family=car,x=67,y=-21,z=172,dx=8,dy=3,dz=4] if score dummy cartype_generate matches 3 if score dummy stage1_car_generate_timer3 >= dummy car_generate_time run summon bridge:normal_car3 71 -21 174 -90 


#set family's car in all slote to onsell_car 
#slote1
event entity @e[family=car,x=67,y=-21,z=160,dx=8,dy=3,dz=4] bridge:set_my_sellable
#slote2
event entity @e[family=car,x=67,y=-21,z=166,dx=8,dy=3,dz=4] bridge:set_my_sellable
#slote3
event entity @e[family=car,x=67,y=-21,z=172,dx=8,dy=3,dz=4] bridge:set_my_sellable
