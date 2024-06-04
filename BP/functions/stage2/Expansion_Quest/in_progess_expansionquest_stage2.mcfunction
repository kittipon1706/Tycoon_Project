execute if entity @e[family=boss_stage2] if score dummy st2_expansionquest_start_time matches 60 run title @a title systemUI_three_show
execute if entity @e[family=boss_stage2] if score dummy st2_expansionquest_start_time matches 40 run title @a title systemUI_two_show
execute if entity @e[family=boss_stage2] if score dummy st2_expansionquest_start_time matches 20 run title @a title systemUI_one_show
execute if entity @e[family=boss_stage2] if score dummy st2_expansionquest_start_time matches 1..60 run scoreboard players remove dummy st2_expansionquest_start_time 1
execute if entity @e[family=boss_stage2] if score dummy st2_expansionquest_start_time matches 1..5 run event entity @e[family=boss_stage2] bridge:set_attack_player

execute unless entity @e[tag=Boss2,x=192,y=-19,z=-19,dx=18,dy=5,dz=18] if score dummy st2_expansionquest_clear matches 0 run teleport @e[tag=Boss2] 193 -19 -18 -45
execute if entity @e[tag=Boss2,x=192,y=-19,z=-19,dx=18,dy=5,dz=18] unless entity @e[family=boss_stage2] if score dummy st2_expansionquest_clear matches 0 run summon bridge:boss_stage2 208 -19 -3 140
execute unless entity @e[family=boss_stage2,c=1] run event entity @e[family=boss_stage2] bridge:despawn
execute if entity @e[family=boss_stage2] if score dummy st2_expansionquest_clear matches 1 run event entity @e[family=boss_stage2] bridge:despawn
execute if entity @e[tag=Boss2,x=192,y=-19,z=-19,dx=18,dy=5,dz=18] if score dummy st2_expansionquest_clear matches 0 run scoreboard players set dummy delay_quest_message 20