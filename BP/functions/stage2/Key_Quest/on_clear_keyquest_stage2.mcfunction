execute unless entity @e[family=salesman1,x=14,y=-24,z=16,dx=100,dy=24,dz=54] run function showroom3/create_showroom3
function stage2/stage2_set_waypoint_customer_2
event entity @e[family=keyquest_st2] bridge:despawn 
event entity @e[family=bodyguard3_1] bridge:despawn 
event entity @e[family=bodyguard3_2] bridge:despawn 

