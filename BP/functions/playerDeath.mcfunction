scoreboard objectives add alive dummy
scoreboard players set @a[scores={alive=!2}] alive 0
scoreboard players set @e[type=player] alive 1

#
execute as @a[scores={alive=0},tag=Boss2] run spawnpoint @s 185 -36 -10 
execute as @a[scores={alive=0},tag=Boss2] run scoreboard players set dummy st2_expansionquest_clear 0
execute as @a[scores={alive=0},tag=Boss2] run tag @s remove Boss2

scoreboard players set @a[scores={alive=0}] alive 2
