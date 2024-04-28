scoreboard objectives add saving_structure_time dummy
scoreboard players set dummy saving_structure_time 0
execute if score dummy saving_structure_time matches ..100 run scoreboard players add dummy saving_structure_time 1

execute if score dummy saving_structure_time matches 1 run tickingarea add 13 -24 134 113 0 194 building0 false
execute if score dummy saving_structure_time matches 1 run tickingarea add -225 -60 140 -125 -34 200 building1 false 
execute if score dummy saving_structure_time matches 1 run tickingarea add -375 -60 70 -283 -30 158 building2 false
execute if score dummy saving_structure_time matches 1 run tickingarea add 14 -24 70 114 0 134 showroom2 false
#game start building
function stage0/create_dealership0
function showroom2/create_showroom2

execute if score dummy saving_structure_time matches ..100 run structure save building0_1 13 -24 134 63 0 194 false disk
execute if score dummy saving_structure_time matches ..100 run structure save building0_2 64 -24 134 113 0 194 false disk
execute if score dummy saving_structure_time matches ..100 run structure save building1_1 -225 -60 140 -175 -34 200 false disk
execute if score dummy saving_structure_time matches ..100 run structure save building1_2 -176 -60 140 -125 -34 200 false disk
execute if score dummy saving_structure_time matches ..100 run structure save building2_1 -378 -60 82 -329 -30 120 false disk
execute if score dummy saving_structure_time matches ..100 run structure save building2_2 -378 -60 121 -329 -30 158 false disk
execute if score dummy saving_structure_time matches ..100 run structure save building2_3 -330 -60 82 -279 -30 120 false disk
execute if score dummy saving_structure_time matches ..100 run structure save building2_4 -330 -60 121 -279 -30 158 false disk

execute if score dummy saving_structure_time matches ..100 run structure save showroom2_1 14 -24 70 64 0 133 false disk
execute if score dummy saving_structure_time matches ..100 run structure save showroom2_2 65 -24 70 114 0 133 false disk
