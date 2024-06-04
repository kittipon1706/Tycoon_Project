event entity @e[family=keyquest_st3] bridge:despawn
summon bridge:keyquest 2 -23 137 0 0 bridge:set_stage3
function The_Prototype_Test/set_npc
scoreboard players set dummy st3_keyquest_clear 0
scoreboard players set dummy keyquest_start 1
scoreboard players set dummy mainquest_start 0
scoreboard players set dummy expansionquest_start 0
scriptevent q:quest_update 0
