event entity @e[family=keyquest_st4] bridge:despawn
event entity @e[family=truck] bridge:despawn
summon bridge:keyquest 67 -8 8 0 0 bridge:set_stage5
scoreboard players set dummy st5_keyquest_clear 0
scoreboard players set dummy keyquest_start 1
scoreboard players set dummy mainquest_start 0
scoreboard players set dummy expansionquest_start 0
summon bridge:truck 94 -23 -130 90 0 bridge:set_empty
summon bridge:truck 94 -23 -124 90 0 bridge:set_empty
summon bridge:truck 94 -23 -118 90 0 bridge:set_empty
event entity @e[family=truck] bridge:set_player_car
scriptevent q:quest_update 0
