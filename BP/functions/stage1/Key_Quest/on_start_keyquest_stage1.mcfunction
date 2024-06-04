fill 50 -21 81 50 -21 81 bridge:mystery_button ["stgab:facing_direction"=2]
fill 50 -21 89 50 -21 89 bridge:mystery_button ["stgab:facing_direction"=2]
summon bridge:normal_car1 45 -22 89  270
summon bridge:normal_car1 45 -22 81  270
event entity @e[family=keyquest_st1] bridge:despawn
summon bridge:keyquest 100 -23 100 0 0 bridge:set_stage1
scoreboard players set dummy st1_keyquest_state 0
scoreboard players set dummy keyquest_start 1
scoreboard players set dummy mainquest_start 0
scoreboard players set dummy expansionquest_start 0
scriptevent q:quest_update 0
# tutorial