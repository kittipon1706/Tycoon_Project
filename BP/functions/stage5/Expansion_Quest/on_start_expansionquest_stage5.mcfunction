event entity @e[family=boss_stage5] bridge:despawn
summon bridge:boss_stage5 105 -23 -152
scoreboard players set dummy st5_expansionquest_clear 0
scoreboard players set dummy keyquest_start 0
scoreboard players set dummy mainquest_start 0
scoreboard players set dummy expansionquest_start 1
scriptevent q:quest_update 0
