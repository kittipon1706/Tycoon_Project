execute if score dummy mainquest_start matches 1 if score dummy st5_main1_clear matches 1 run scriptevent q:quest_update 1
execute if score dummy mainquest_start matches 1 if score dummy st5_main1_clear matches 0 run scriptevent q:quest_update -1
execute if score dummy mainquest_start matches 1 if score dummy st5_main1_clear matches 0 if entity @e[family=player,x=33,y=-21,z=-150,dx=11,dy=5,dz=2] run scoreboard players set dummy st5_main1_clear 1

execute if score dummy mainquest_start matches 1 if score dummy st5_alarm_clock_couting matches 0 run scriptevent q:quest_update 20
execute if score dummy mainquest_start matches 1 if score dummy st5_alarm_clock_couting matches 1 run scriptevent q:quest_update 21
execute if score dummy mainquest_start matches 1 if score dummy st5_alarm_clock_couting matches 2 run scriptevent q:quest_update 22
execute if score dummy mainquest_start matches 1 if score dummy st5_alarm_clock_couting matches 2.. run scoreboard players set dummy st5_main2_clear 1
execute if score dummy mainquest_start matches 1 if score dummy st5_alarm_clock_couting matches ..1 run scoreboard players set dummy st5_main2_clear 0

execute if score dummy st5_main1_clear matches 1 unless entity @e[family=alarm_clock_marker,x=41,y=-19,z=-150,r=1] unless entity @e[family=alarm_clock] run summon bridge:alarm_clock_marker 41 -19 -150
execute if score dummy st5_main1_clear matches 1 unless entity @e[family=alarm_clock_marker,x=43,y=-19,z=-150,r=1] unless entity @e[family=alarm_clock] run summon bridge:alarm_clock_marker 42 -19 -150

execute if score dummy keyquest_start matches 1  if score dummy st5_truck_fill_couting matches ..2 run scoreboard players set dummy st5_keyquest_clear 0
execute if score dummy keyquest_start matches 1  if score dummy st5_truck_fill_couting matches 3.. run scoreboard players set dummy st5_keyquest_clear 1
execute if score dummy keyquest_start matches 1 if score dummy st5_truck_fill_couting matches 0 run scriptevent q:quest_update 30
execute if score dummy keyquest_start matches 1 if score dummy st5_truck_fill_couting matches 1 run scriptevent q:quest_update 31
execute if score dummy keyquest_start matches 1 if score dummy st5_truck_fill_couting matches 2 run scriptevent q:quest_update 32
execute if score dummy keyquest_start matches 1 if score dummy st5_truck_fill_couting matches 3 run scriptevent q:quest_update 33

execute if score dummy expansionquest_start matches 1 if score dummy st5_expansionquest_clear matches 1 run scriptevent q:quest_update 4
execute if score dummy expansionquest_start matches 1 if score dummy st5_expansionquest_clear matches 0 run scriptevent q:quest_update -4

execute if score dummy keyquest_start matches 1 if score dummy st5_keyquest_clear matches 1 run function stage5/Key_Quest/on_clear_keyquest_stage5
execute if score dummy keyquest_start matches 1 if score dummy st5_keyquest_clear matches 1 run function stage5/Expansion_Quest/on_start_expansionquest_stage5
execute if score dummy mainquest_start matches 1 if score dummy st5_main1_clear matches 1 if score dummy st5_main2_clear matches 1 run function stage5/Key_Quest/on_start_keyquest_stage5