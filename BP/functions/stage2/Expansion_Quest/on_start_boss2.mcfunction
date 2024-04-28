tag @p add quest
tp @p[tag=quest] 201 -34  -17 0
scoreboard objectives add Boss2_start_time dummy
scoreboard objectives add Boss2_start dummy
scoreboard objectives add Boss2_clear dummy
scoreboard players set dummy Boss2_start_time 60
scoreboard players set dummy Boss2_start 1
summon bridge:boss_stage2 200 -34 -10 0
event entity @e[family=bossquest_st2] bridge:despawn