execute if score dummy MN_start_time matches 60 run title @a title systemUI_three_show
execute if score dummy MN_start_time matches 40 run title @a title systemUI_two_show
execute if score dummy MN_start_time matches 20 run title @a title systemUI_one_show
execute if score dummy MN_start_time matches ..60 if score dummy MN_start_time matches 1.. run scoreboard players remove dummy MN_start_time 1

execute if score dummy MN_start_time matches ..0 run event entity @e[family=MN_player_car,c=1] bridge:set_can_move
execute if score dummy MN_start_time matches ..0 run event entity @e[family=MN_enemy_car,c=1] bridge:set_can_move

execute if score dummy MN_start_time matches 20 run function stage1/The_Midnight_Racer/set_waypoint_MN

execute if score dummy MN_objective_player matches 14 run function stage1/The_Midnight_Racer/on_clear_MN
execute if score dummy MN_objective_enemy matches 20 run function stage1/The_Midnight_Racer/on_clear_MN