execute unless entity @e[family=expoorganizer] if score dummy keyquest_start matches 1 run summon bridge:expoorganizer 77 -23 140
scoreboard players set dummy mainquest_start 0
scoreboard players set dummy keyquest_start 0
scoreboard players set dummy expansionquest_start 1
scriptevent q:quest_update 0
