event entity @e[family=waypoint_phototype_test] bridge:despawn
event entity @e[family=test_car] bridge:despawn
scoreboard objectives add time_scoreboard dummy
scoreboard objectives add score_time_players_temp dummy
scoreboard objectives add test_start dummy
scoreboard objectives add test_clear dummy
scoreboard objectives add test_start_time dummy
scoreboard objectives add show_score_time dummy
scoreboard objectives add test_state dummy
scoreboard players set dummy score_time_players_temp 0
scoreboard players set dummy test_state 0
scoreboard players set dummy test_clear 0
scoreboard players set dummy show_score_time 200
scoreboard players set dummy test_start 1
scoreboard players set dummy test_start_time 100
execute if score dummy cartype_test matches 1 run summon bridge:normal_car1 -22 -24 97 180 0 bridge:set_rideable
execute if score dummy cartype_test matches 2 run summon bridge:normal_car2 -22 -24 97 180 0 bridge:set_rideable
execute if score dummy cartype_test matches 3 run summon bridge:normal_car3 -22 -24 97 180 0 bridge:set_rideable
execute if score dummy cartype_test matches 4 run summon bridge:mid_car4 -22 -24 97 180 0 bridge:set_rideable
execute if score dummy cartype_test matches 5 run summon bridge:mid_car5 -22 -24 97 180 0 bridge:set_rideable
execute if score dummy cartype_test matches 6 run summon bridge:mid_car6 -22 -24 97 180 0 bridge:set_rideable
execute if score dummy cartype_test matches 7 run summon bridge:mid_car7 -22 -24 97 180 0 bridge:set_rideable


