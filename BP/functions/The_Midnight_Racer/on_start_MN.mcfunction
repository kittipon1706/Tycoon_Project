scoreboard objectives add MN_objective_player dummy
scoreboard objectives add MN_objective_enemy dummy
scoreboard objectives add MN_clear dummy
scoreboard objectives add MN_start_time dummy
scoreboard objectives add MN_start dummy
scoreboard players set dummy MN_clear 0
scoreboard players set dummy MN_start_time 100
scoreboard players set dummy MN_start 1
scoreboard players set dummy MN_objective_enemy 0
scoreboard players set dummy MN_objective_player 0
tickingarea add -23 11 0 5 15 229 MN_racing true
event entity @e[family=MN] bridge:remove_npc

event entity @e[family=MN_enemy_car] bridge:despawn
event entity @e[family=MN_player_car] bridge:despawn

event entity @e[family=waypoint_midnight_racing] bridge:despawn
event entity @e[family=waypoint_midnight_racing_player] bridge:despawn
summon bridge:normal_car1 -3 11 239 180 ~ bridge:set_family_MN_enemy
summon bridge:normal_car1 -15 11 239 180 ~ bridge:set_family_MN_player
ride @p[tag=MN] start_riding @e[family=MN_player_car,c=1] teleport_rider
ride @e[family=MN] start_riding @e[family=MN_enemy_car,c=1] teleport_rider
