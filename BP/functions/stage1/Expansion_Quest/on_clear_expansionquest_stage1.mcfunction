event entity @e[family=expoorganizer] bridge:despawn
execute if score dummy expansionquest_start matches 1 run function stage1/on_clear_stage1
scoreboard players set dummy mainquest_start 0
scoreboard players set dummy keyquest_start 0
scoreboard players set dummy expansionquest_start 0
scriptevent q:quest_update 5
