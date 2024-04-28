function stage0/create_dealership0
summon bridge:empty_area 102 -22 164
scoreboard players set dummy stage 0
scoreboard objectives add st1_main1_clear dummy
scoreboard players set dummy st1_main1_clear 0
scoreboard players set dummy mainquest_start 1
scoreboard players set dummy keyquest_start 0
scoreboard players set dummy expansionquest_start 0
scriptevent q:quest_update -1
