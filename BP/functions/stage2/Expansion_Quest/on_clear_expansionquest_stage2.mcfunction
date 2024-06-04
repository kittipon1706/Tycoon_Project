camera @a fade time 0.5 1 1
teleport @a[tag=Boss2] 185 -21 -10 240
tag @a[tag=Boss2] remove Boss2
event entity @e[family=bossquest_st2] bridge:despawn
event entity @e[family=boss_stage2] bridge:despawn
dialogue change @e[family=magnet] magnet_stage2_diag_2_3
scoreboard players set dummy keyquest_start 0
scoreboard players set dummy mainquest_start 0
scoreboard players set dummy expansionquest_start 0
scoreboard players set dummy busy 0
