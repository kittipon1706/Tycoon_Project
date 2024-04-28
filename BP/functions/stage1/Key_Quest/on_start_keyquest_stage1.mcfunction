execute unless entity @e[family=salesman1,x=14,y=-24,z=70,dx=100,dy=24,dz=64] run function showroom2/create_showroom2
fill 50 -21 81 50 -21 81 bridge:mystery_button ["stgab:facing_direction"=2]
fill 50 -21 89 50 -21 89 bridge:mystery_button ["stgab:facing_direction"=2]
summon bridge:normal_car1 45 -22 89  270
summon bridge:normal_car1 45 -22 81  270
summon bridge:keyquest_st1 100 -23 100
scoreboard players set dummy st1_keyquest_state 0
scoreboard players set dummy keyquest_start 1
scoreboard players set dummy mainquest_start 0
scoreboard players set dummy expansionquest_start 0
scriptevent q:quest_update 0
# tutorial