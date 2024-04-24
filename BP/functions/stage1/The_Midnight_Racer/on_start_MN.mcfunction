scoreboard objectives add MN_objective_player dummy
scoreboard objectives add MN_objective_enemy dummy
scoreboard objectives add MN_clear dummy
scoreboard objectives add MN_start_time dummy
scoreboard players set dummy MN_clear 0
scoreboard players set dummy MN_start_time 60
scoreboard players set dummy MN_objective_enemy 0
scoreboard players set dummy MN_objective_player 0

kill @e[family=MN_enemy_car,c=1]
kill @e[family=MN_player_car,c=1]

kill @e[family=waypoint_midnight_racing]
kill @e[family=waypoint_midnight_racing_player]
summon bridge:normal_car1 22 -60 8 90 ~ bridge:set_family_MN_enemy
summon bridge:normal_car1 26 -60 15 90 ~ bridge:set_family_MN_player
ride @p start_riding @e[family=MN_player_car,c=1] teleport_rider
ride @e[family=MN] start_riding @e[family=MN_enemy_car,c=1] teleport_rider
event entity @e[family=MN_enemy_car,c=1] bridge:set_path
