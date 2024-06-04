event entity @e[family=boss_stage4] bridge:despawn
event entity @e[family=bossquest_st4,x=33,y=14,z=-102,dx=55,dy=5,dz=60] bridge:despawn
event entity @e[family=bodyguard] bridge:despawn
event entity @e[family=airship,x=33,y=14,z=-102,dx=55,dy=5,dz=60] bridge:despawn
execute at @e[family=airship,r=2,c=1] run event entity @e bridge:despawn
event entity @e[family=airship_enemies] bridge:despawn
summon bridge:boss_stage4 48 14 -63 180 0 bridge:set_wait
summon bridge:bodyguard 45 14 -60 180 0 bridge:set_wait
summon bridge:bodyguard 52 14 -60 180 0 bridge:set_wait
tag @e[family=bodyguard,x=33,y=14,z=-102,dx=55,dy=5,dz=60] add Boss4
tag @e[family=boss_stage4,x=33,y=14,z=-102,dx=55,dy=5,dz=60] add Boss4
scoreboard players set dummy st4_expansionquest1_clear 0
scoreboard players set dummy st4_expansionquest2_clear 0
scoreboard players set dummy st4_expansionquest2_state 0
scoreboard players set dummy keyquest_start 0
scoreboard players set dummy mainquest_start 0
scoreboard players set dummy expansionquest_start 1
scriptevent q:quest_update 0
