event entity @e[family=dynamite] bridge:despawn
event entity @e[family=dynamite_marker] bridge:despawn
scoreboard players set dummy st3_expansionquest_state 0
scoreboard players set dummy st3_expansionquest_clear 0
scoreboard players set dummy keyquest_start 0
scoreboard players set dummy mainquest_start 0
scoreboard players set dummy expansionquest_start 1
scriptevent q:quest_update 0
summon bridge:dynamite_marker 36 -46 -31
summon bridge:dynamite_marker 36 -46 -24
summon bridge:dynamite_marker 16 -46 -24
summon bridge:dynamite_marker 16 -46 -31
summon bridge:dynamite_marker 71 -46 -31
summon bridge:dynamite_marker 71 -46 -24
