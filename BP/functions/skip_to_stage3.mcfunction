scoreboard players set dummy stage 2
scoreboard players set dummy st2_main1_clear 1
scoreboard players set dummy st2_main2_clear 1
scoreboard players set dummy st2_main3_clear 1
scoreboard players set dummy st2_keyquest_clear 1
scoreboard players set dummy st2_expansionquest_clear 1
event entity @e[family=manager_01_marker,x=18,y=-24,z=70,dx=92,dy=30,dz=60] bridge:set_manager
event entity @e[family=salesman_01_marker,x=18,y=-24,z=70,dx=92,dy=30,dz=60] bridge:set_salesman
event entity @e[family=expoorganizer,x=18,y=-24,z=70,dx=92,dy=30,dz=60] bridge:despawn
function stage2/on_clear_stage2
function stage2/stage2_set_waypoint_customer_2