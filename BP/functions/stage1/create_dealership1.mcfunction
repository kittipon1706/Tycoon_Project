fill 13 -24 134 113 0 194 air
structure load building1_1 14 -24 134
structure load building1_2 63 -24 134
event entity @e[x=13,y=-24,z=134,dx=100,dy=24,dz=60] bridge:despawn
function stage1/stage1_set_waypoint_customer
summon bridge:salesman_01_marker 48 -21 148 270
