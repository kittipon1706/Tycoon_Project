scoreboard objectives add saving_structure_time dummy
scoreboard players add dummy saving_structure_time 0
execute if score initialised world matches 0 run scoreboard players set dummy saving_structure_time 0
execute if score dummy saving_structure_time matches ..100 run scoreboard players add dummy saving_structure_time 1
execute if score dummy saving_structure_time matches 1 run tickingarea add 13 -24 134 113 0 194 building0
execute if score dummy saving_structure_time matches 1 run tickingarea add -225 -60 140 -125 -34 200 building1

execute if score dummy saving_structure_time matches ..100 run structure save building0_1 13 -24 134 63 0 194 false disk
execute if score dummy saving_structure_time matches ..100 run structure save building0_2 64 -24 134 113 0 194 false disk
execute if score dummy saving_structure_time matches ..100 run structure save building1_1 -225 -60 140 -175 -34 200 false disk
execute if score dummy saving_structure_time matches ..100 run structure save building1_2 -176 -60 140 -125 -34 200 false disk