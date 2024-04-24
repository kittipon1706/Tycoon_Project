# structure save building1 7 -60 0 -2 -50 9 disk
# structure save building2 -4 -60 0 -13 -50 9 disk
# fill 7 -60 0 -13 -50 9 air
# structure load building3 -10 -60 0
scoreboard players set dummy stage 2
scoreboard players remove dummy money 10000
execute if score dummy stage matches 2 run event entity @e[family=expoorganizer,c=1] bridge:set_despawn
scoreboard players set dummy MN_clear 0
scoreboard players set dummy keyquest_st1_clear 0