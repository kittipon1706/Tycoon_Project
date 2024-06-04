scoreboard players set dummy MN_start 0
execute if score dummy MN_objective_player matches 14 run say Victory
execute if score dummy MN_objective_player matches 14 run scoreboard players set dummy MN_clear 1
execute if score dummy MN_objective_enemy matches 20 run say Failed
execute if score dummy MN_objective_enemy matches 20 run scoreboard players set dummy MN_clear 0
event entity @e[family=MN] bridge:despawn
summon bridge:mn_racer -2 -23 171 180
teleport @p[tag=MN]  2 -23 171 90
tag @p[tag=MN] remove MN
event entity @e[family=waypoint_midnight_racing] bridge:despawn
event entity @e[family=waypoint_midnight_racing_player] bridge:despawn

execute if score dummy MN_clear matches 0 run dialogue change @e[family=MN] MN_racer_diag
execute if score dummy MN_clear matches 1 run dialogue change @e[family=MN] MN_racer_clear_diag

scoreboard players set dummy MN_objective_enemy 0
scoreboard players set dummy MN_objective_player 0

event entity @e[family=MN_enemy_car] bridge:despawn
event entity @e[family=MN_player_car] bridge:despawn

tickingarea remove MN_racing

