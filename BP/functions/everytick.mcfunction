function playerDeath
execute if score dummy money matches ..0 run scoreboard players set dummy money 0
scoreboard objectives setdisplay sidebar money

execute if score dummy stage matches 1 if entity @e[family=salesman1,x=27,y=-38,z=137,dx=69,dy=30,dz=36] run function other/showroom2_generator

#stage 1
function stage1/in_progress_stage1

#stage2
execute if score dummy Boss2_start matches 1 run function stage2/in_progess_boss2