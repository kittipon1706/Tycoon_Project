function playerDeath
execute if score dummy money matches ..0 run scoreboard players set dummy money 0
scoreboard objectives setdisplay sidebar money

execute if score dummy stage matches 1.. run function car_generator
#stage 0
execute if score dummy stage matches ..1 run function stage0/in_progress_stage0

#stage 1
execute if score dummy stage matches 1 run function stage1/in_progress_stage1

#stage2
#execute if score dummy Boss2_start matches 1 run function stage2/in_progess_boss2

#showroom2
execute if entity @e[family=salesman1,c=1,x=14,y=-24,z=70,dx=100,dy=24,dz=64] run function showroom2/showroom2_generator
