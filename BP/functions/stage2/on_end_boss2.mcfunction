scoreboard players set dummy Boss2_start 0
tp @a[tag=Boss2] 185 -36 -10 270
event entity @e[family=boss_stage2,c=1] bridge:despawn
execute if score dummy Boss2_clear matches 1 run event entity @e[family=bossquest_st2] bridge:despawn
execute if score dummy Boss2_clear matches 0 run summon bridge:bossquest_st2 187 -36 -10

tag @a[tag=Boss2] remove quest 
