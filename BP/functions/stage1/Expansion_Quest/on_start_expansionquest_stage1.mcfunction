execute if entity @e[family=expoorganizer] if score dummy keyquest_start matches 1 run event entity @e[family=expoorganizer] bridge:despawn
execute unless entity @e[family=expoorganizer] if score dummy keyquest_start matches 1 run summon bridge:expoorganizer 77 -23 140 0 0 bridge:varaint_1
scoreboard players set dummy st1_expansionquest_clear 0
scoreboard players set dummy mainquest_start 0
scoreboard players set dummy keyquest_start 0
scoreboard players set dummy expansionquest_start 1
scriptevent q:quest_update 0
