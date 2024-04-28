execute if score dummy Boss2_start_time matches 60 run title @a[x=161,y=-36,z=-32,dx=51,dy=10,dz=44] title systemUI_three_show
execute if score dummy Boss2_start_time matches 40 run title @a[x=161,y=-36,z=-32,dx=51,dy=10,dz=44] title systemUI_two_show
execute if score dummy Boss2_start_time matches 20 run title @a[x=161,y=-36,z=-32,dx=51,dy=10,dz=44] title systemUI_one_show
execute if score dummy Boss2_start_time matches ..60 if score dummy Boss2_start_time matches 1.. run scoreboard players remove dummy Boss2_start_time 1
execute if score dummy Boss2_start_time matches 1 run event entity @e[family=boss_stage2] bridge:set_attack_player
