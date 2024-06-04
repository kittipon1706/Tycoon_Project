event entity @e[family=magnet] bridge:despawn
event entity @e[family=bossquest_st2] bridge:despawn
event entity @e[family=boss_stage2] bridge:despawn
tag @a remove Boss2
summon bridge:magnet 105 -23 43 
scoreboard players set dummy st2_expansionquest_start_time 60
scoreboard players set dummy st2_expansionquest_clear 0
scoreboard players set dummy keyquest_start 0
scoreboard players set dummy mainquest_start 0
scoreboard players set dummy expansionquest_start 1
scriptevent q:quest_update 0
