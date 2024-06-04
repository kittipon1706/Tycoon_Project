execute if score dummy MN_start_time matches 60..100 run inputpermission set @p[tag=MN] movement disabled
execute if score dummy MN_start_time matches 60 run title @a title systemUI_three_show
execute if score dummy MN_start_time matches 40 run title @a title systemUI_two_show
execute if score dummy MN_start_time matches 20 run title @a title systemUI_one_show
execute if score dummy MN_start_time matches 1.. run scoreboard players remove dummy MN_start_time 1

execute if score dummy MN_start_time matches 1 run inputpermission set @p[tag=MN] movement enabled

execute if score dummy MN_start_time matches 20 run function The_Midnight_Racer/set_waypoint_MN

execute if score dummy MN_objective_player matches 25 run function The_Midnight_Racer/on_clear_MN
execute if score dummy MN_objective_enemy matches 25 run function The_Midnight_Racer/on_clear_MN