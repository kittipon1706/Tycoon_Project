execute if score dummy MN_objective_player matches 14 run say Victory
execute if score dummy MN_objective_player matches 14 run scoreboard players set dummy MN_clear 1
execute if score dummy MN_objective_enemy matches 20 run say Failed
execute if score dummy MN_objective_enemy matches 20 run scoreboard players set dummy MN_clear 0

event entity @e[family=MN,c=1] bridge:set_despawn
summon bridge:mn_racer 25 -60 0
kill @e[family=waypoint_midnight_racing]
kill @e[family=waypoint_midnight_racing_player]

execute if score dummy MN_clear matches 0 run dialogue change @e[family=MN] MN_racer_diag
execute if score dummy MN_clear matches 1 run dialogue change @e[family=MN] MN_racer_clear_diag

scoreboard players set dummy MN_objective_enemy 0
scoreboard players set dummy MN_objective_player 0

kill @e[family=MN_enemy_car,c=1]
kill @e[family=MN_player_car,c=1]
