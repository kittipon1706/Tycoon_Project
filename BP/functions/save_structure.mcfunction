scoreboard objectives add saving_structure_time dummy
scoreboard players add dummy saving_structure_time 0
execute if score dummy saving_structure_time matches ..200 run scoreboard players add dummy saving_structure_time 1

# execute if score dummy saving_structure_time matches ..100 run tickingarea add 13 -24 134 113 0 194 building0 true
# execute if score dummy saving_structure_time matches ..100 run tickingarea add -225 -60 140 -125 -34 200 building1 true 
# execute if score dummy saving_structure_time matches ..100 run tickingarea add -375 -60 70 -283 -30 158 building2 true
# execute if score dummy saving_structure_time matches ..100 run tickingarea add -508 -34 28 -408 -60 112 building3_1 true
# execute if score dummy saving_structure_time matches ..100 run tickingarea add -488 -43 100 -426 -24 146 building3_2 true
# execute if score dummy saving_structure_time matches ..100 run tickingarea add -636 -60 -35 -535 -32 38 building4_1 true
execute if score dummy saving_structure_time matches ..100 run tickingarea add 14 -24 70 114 0 134 showroom2 true
execute if score dummy saving_structure_time matches ..100 run tickingarea add 14 -24 16 114 6 70 showroom3 true
execute if score dummy saving_structure_time matches ..100 run tickingarea add 13 -24 -48 114 6 15 showroom4 true
execute if score dummy saving_structure_time matches ..100 run tickingarea add 13 -24 -112 114 44 -48 showroom5 true


# execute if score dummy saving_structure_time matches ..100 run structure save building0_1 13 -24 134 63 0 194 false disk
# execute if score dummy saving_structure_time matches ..100 run structure save building0_2 64 -24 134 113 0 194 false disk
# execute if score dummy saving_structure_time matches ..100 run structure save building1_1 -225 -60 140 -175 -34 200 false disk
# execute if score dummy saving_structure_time matches ..100 run structure save building1_2 -176 -60 140 -125 -34 200 false disk
# execute if score dummy saving_structure_time matches ..100 run structure save building2_1 -378 -60 82 -329 -30 120 false disk
# execute if score dummy saving_structure_time matches ..100 run structure save building2_2 -378 -60 121 -329 -30 158 false disk
# execute if score dummy saving_structure_time matches ..100 run structure save building2_3 -330 -60 82 -279 -30 120 false disk
# execute if score dummy saving_structure_time matches ..100 run structure save building2_4 -330 -60 121 -279 -30 158 false disk
# execute if score dummy saving_structure_time matches ..100 run structure save building3_1 -508 -34 30 -457 -60 70 false disk
# execute if score dummy saving_structure_time matches ..100 run structure save building3_2 -508 -34 71 -457 -60 112 false disk
# execute if score dummy saving_structure_time matches ..100 run structure save building3_3 -458 -34 30 -408 -60 70 false disk
# execute if score dummy saving_structure_time matches ..100 run structure save building3_4 -458 -34 71 -408 -60 112 false disk
# execute if score dummy saving_structure_time matches ..100 run structure save building3_5 -488 -43 95 -426 -24 146 false disk
# execute if score dummy saving_structure_time matches ..100 run structure save building4_1 -636 -60 -35 -586 -32 0 false disk
# execute if score dummy saving_structure_time matches ..100 run structure save building4_2 -636 -60 1 -586 -32 38 false disk
# execute if score dummy saving_structure_time matches ..100 run structure save building4_3 -587 -60 -35 -535 -32 0 false disk
# execute if score dummy saving_structure_time matches ..100 run structure save building4_4 -587 -60 1 -535 -32 38 false disk

execute if score dummy saving_structure_time matches 100..200 run structure save showroom2_1 14 -24 70 64 0 133 false disk
execute if score dummy saving_structure_time matches 100..200 run structure save showroom2_2 65 -24 70 114 0 133 false disk

execute if score dummy saving_structure_time matches 100..200 run structure save showroom3_1 14 -24 17 64 6 70 false disk
execute if score dummy saving_structure_time matches 100..200 run structure save showroom3_2 65 -24 17 114 6 70 false disk

execute if score dummy saving_structure_time matches 100..200 run structure save showroom4_1 13 -24 -48 63 6 15 false disk
execute if score dummy saving_structure_time matches 100..200 run structure save showroom4_2 64 -24 -48 101 6 15 false  disk

execute if score dummy saving_structure_time matches 100..200 run structure save showroom5_1 13 -24 -112 63 44 -49 false disk
execute if score dummy saving_structure_time matches 100..200 run structure save showroom5_2 64 -24 -112 114 44 -49 false disk

# execute if score dummy saving_structure_time matches ..100 run structure save showroom5_1 13 -24 -112 63 10 -48 false disk




