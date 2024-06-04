scoreboard objectives add  stage2_car_generate_timer1 dummy
scoreboard objectives add  stage2_car_generate_timer2 dummy
scoreboard objectives add  stage2_car_generate_timer3 dummy
scoreboard objectives add  stage2_car_generate_timer4 dummy

# slot 1 counter
execute if entity @e[family=car,x=77,y=-21,z=89,dx=8,dy=3,dz=4] run scoreboard players set dummy stage2_car_generate_timer1 0
execute unless entity @e[family=car,x=77,y=-21,z=89,dx=8,dy=3,dz=4] if score dummy cartype_generate matches 1.. run scoreboard players add dummy stage2_car_generate_timer1 1
# slot 2 counter
execute if entity @e[family=car,x=77,y=-21,z=95,dx=8,dy=3,dz=4] run scoreboard players set dummy stage2_car_generate_timer2 0
execute unless entity @e[family=car,x=77,y=-21,z=95,dx=8,dy=3,dz=4] if score dummy cartype_generate matches 1.. run scoreboard players add dummy stage2_car_generate_timer2 1
# slot 3 counter
execute if entity @e[family=car,x=77,y=-21,z=102,dx=8,dy=3,dz=4] run scoreboard players set dummy stage2_car_generate_timer3 0
execute unless entity @e[family=car,x=77,y=-21,z=102,dx=8,dy=3,dz=4] if score dummy cartype_generate matches 1.. run scoreboard players add dummy stage2_car_generate_timer3 1
# slot 4 counter
execute if entity @e[family=car,x=77,y=-21,z=108,dx=8,dy=3,dz=4] run scoreboard players set dummy stage2_car_generate_timer4 0
execute unless entity @e[family=car,x=77,y=-21,z=108,dx=8,dy=3,dz=4] if score dummy cartype_generate matches 1.. run scoreboard players add dummy stage2_car_generate_timer4 1

#type 1
#slote1
execute unless entity @e[family=car,x=77,y=-21,z=89,dx=8,dy=3,dz=4] if score dummy cartype_generate matches 1 if score dummy stage2_car_generate_timer1 >= dummy car_generate_time run summon bridge:normal_car1 80 -21 91 -90 
#slote2
execute unless entity @e[family=car,x=77,y=-21,z=95,dx=8,dy=3,dz=4] if score dummy cartype_generate matches 1 if score dummy stage2_car_generate_timer2 >= dummy car_generate_time run summon bridge:normal_car1 80 -21 97 -90 
#slote3
execute unless entity @e[family=car,x=77,y=-21,z=102,dx=8,dy=3,dz=4] if score dummy cartype_generate matches 1 if score dummy stage2_car_generate_timer3 >= dummy car_generate_time run summon bridge:normal_car1 80 -21 104 -90  
#slote4
execute unless entity @e[family=car,x=77,y=-21,z=108,dx=8,dy=3,dz=4] if score dummy cartype_generate matches 1 if score dummy stage2_car_generate_timer4 >= dummy car_generate_time run summon bridge:normal_car1 80 -21 110 -90 

#type 2
#slote1
execute unless entity @e[family=car,x=77,y=-21,z=89,dx=8,dy=3,dz=4] if score dummy cartype_generate matches 2 if score dummy stage2_car_generate_timer1 >= dummy car_generate_time run summon bridge:normal_car2 80 -21 91 -90 
#slote2
execute unless entity @e[family=car,x=77,y=-21,z=95,dx=8,dy=3,dz=4] if score dummy cartype_generate matches 2 if score dummy stage2_car_generate_timer2 >= dummy car_generate_time run summon bridge:normal_car2 80 -21 97 -90 
#slote3
execute unless entity @e[family=car,x=77,y=-21,z=102,dx=8,dy=3,dz=4] if score dummy cartype_generate matches 2 if score dummy stage2_car_generate_timer3 >= dummy car_generate_time run summon bridge:normal_car2 80 -21 104 -90  
#slote4
execute unless entity @e[family=car,x=77,y=-21,z=108,dx=8,dy=3,dz=4] if score dummy cartype_generate matches 2 if score dummy stage2_car_generate_timer4 >= dummy car_generate_time run summon bridge:normal_car2 80 -21 110 -90 

#type 3
#slote1
execute unless entity @e[family=car,x=77,y=-21,z=89,dx=8,dy=3,dz=4] if score dummy cartype_generate matches 3 if score dummy stage2_car_generate_timer1 >= dummy car_generate_time run summon bridge:normal_car3 80 -21 91 -90 
#slote2
execute unless entity @e[family=car,x=77,y=-21,z=95,dx=8,dy=3,dz=4] if score dummy cartype_generate matches 3 if score dummy stage2_car_generate_timer2 >= dummy car_generate_time run summon bridge:normal_car3 80 -21 97 -90 
#slote3
execute unless entity @e[family=car,x=77,y=-21,z=102,dx=8,dy=3,dz=4] if score dummy cartype_generate matches 3 if score dummy stage2_car_generate_timer3 >= dummy car_generate_time run summon bridge:normal_car3 80 -21 104 -90  
#slote4
execute unless entity @e[family=car,x=77,y=-21,z=108,dx=8,dy=3,dz=4] if score dummy cartype_generate matches 3 if score dummy stage2_car_generate_timer4 >= dummy car_generate_time run summon bridge:normal_car3 80 -21 110 -90

#type 4
#slote1
execute unless entity @e[family=car,x=77,y=-21,z=89,dx=8,dy=3,dz=4] if score dummy cartype_generate matches 4 if score dummy stage2_car_generate_timer1 >= dummy car_generate_time run summon bridge:mid_car4 80 -21 91 -90 
#slote2
execute unless entity @e[family=car,x=77,y=-21,z=95,dx=8,dy=3,dz=4] if score dummy cartype_generate matches 4 if score dummy stage2_car_generate_timer2 >= dummy car_generate_time run summon bridge:mid_car4 80 -21 97 -90 
#slote3
execute unless entity @e[family=car,x=77,y=-21,z=102,dx=8,dy=3,dz=4] if score dummy cartype_generate matches 4 if score dummy stage2_car_generate_timer3 >= dummy car_generate_time run summon bridge:mid_car4 80 -21 104 -90  
#slote4
execute unless entity @e[family=car,x=77,y=-21,z=108,dx=8,dy=3,dz=4] if score dummy cartype_generate matches 4 if score dummy stage2_car_generate_timer4 >= dummy car_generate_time run summon bridge:mid_car4 80 -21 110 -90

#type 5
#slote1
execute unless entity @e[family=car,x=77,y=-21,z=89,dx=8,dy=3,dz=4] if score dummy cartype_generate matches 5 if score dummy stage2_car_generate_timer1 >= dummy car_generate_time run summon bridge:mid_car5 80 -21 91 -90 
#slote2
execute unless entity @e[family=car,x=77,y=-21,z=95,dx=8,dy=3,dz=4] if score dummy cartype_generate matches 5 if score dummy stage2_car_generate_timer2 >= dummy car_generate_time run summon bridge:mid_car5 80 -21 97 -90 
#slote3
execute unless entity @e[family=car,x=77,y=-21,z=102,dx=8,dy=3,dz=4] if score dummy cartype_generate matches 5 if score dummy stage2_car_generate_timer3 >= dummy car_generate_time run summon bridge:mid_car5 80 -21 104 -90  
#slote4
execute unless entity @e[family=car,x=77,y=-21,z=108,dx=8,dy=3,dz=4] if score dummy cartype_generate matches 5 if score dummy stage2_car_generate_timer4 >= dummy car_generate_time run summon bridge:mid_car5 80 -21 110 -90

#type 6
#slote1
execute unless entity @e[family=car,x=77,y=-21,z=89,dx=8,dy=3,dz=4] if score dummy cartype_generate matches 6 if score dummy stage2_car_generate_timer1 >= dummy car_generate_time run summon bridge:mid_car6 80 -21 91 -90 
#slote2
execute unless entity @e[family=car,x=77,y=-21,z=95,dx=8,dy=3,dz=4] if score dummy cartype_generate matches 6 if score dummy stage2_car_generate_timer2 >= dummy car_generate_time run summon bridge:mid_car6 80 -21 97 -90 
#slote3
execute unless entity @e[family=car,x=77,y=-21,z=102,dx=8,dy=3,dz=4] if score dummy cartype_generate matches 6 if score dummy stage2_car_generate_timer3 >= dummy car_generate_time run summon bridge:mid_car6 80 -21 104 -90  
#slote4
execute unless entity @e[family=car,x=77,y=-21,z=108,dx=8,dy=3,dz=4] if score dummy cartype_generate matches 6 if score dummy stage2_car_generate_timer4 >= dummy car_generate_time run summon bridge:mid_car6 80 -21 110 -90

#type 7
#slote1
execute unless entity @e[family=car,x=77,y=-21,z=89,dx=8,dy=3,dz=4] if score dummy cartype_generate matches 7 if score dummy stage2_car_generate_timer1 >= dummy car_generate_time run summon bridge:mid_car7 80 -21 91 -90 
#slote2
execute unless entity @e[family=car,x=77,y=-21,z=95,dx=8,dy=3,dz=4] if score dummy cartype_generate matches 7 if score dummy stage2_car_generate_timer2 >= dummy car_generate_time run summon bridge:mid_car7 80 -21 97 -90 
#slote3
execute unless entity @e[family=car,x=77,y=-21,z=102,dx=8,dy=3,dz=4] if score dummy cartype_generate matches 7 if score dummy stage2_car_generate_timer3 >= dummy car_generate_time run summon bridge:mid_car7 80 -21 104 -90  
#slote4
execute unless entity @e[family=car,x=77,y=-21,z=108,dx=8,dy=3,dz=4] if score dummy cartype_generate matches 7 if score dummy stage2_car_generate_timer4 >= dummy car_generate_time run summon bridge:mid_car7 80 -21 110 -90

#set family's car in all slote to onsell_car 
#slote1
event entity @e[family=car,x=77,y=-21,z=89,dx=8,dy=3,dz=4] bridge:set_my_sellable
#slote2
event entity @e[family=car,x=77,y=-21,z=95,dx=8,dy=3,dz=4] bridge:set_my_sellable
#slote3
event entity @e[family=car,x=77,y=-21,z=102,dx=8,dy=3,dz=4] bridge:set_my_sellable
#slote4
event entity @e[family=car,x=77,y=-21,z=108,dx=8,dy=3,dz=4] bridge:set_my_sellable
