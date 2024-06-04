event entity @e[family=bodyguard,x=13,y=-24,z=-112,dx=101,dy=68,dz=64] bridge:despawn
event entity @e[family=waypoint_bodyguard,x=13,y=-24,z=-112,dx=101,dy=68,dz=64] bridge:despawn
function showroom5/set_waypoint_bodyguard_1
function showroom5/set_waypoint_bodyguard_3
summon bridge:bodyguard 45 -8 -80 0 0 bridge:set_loop
summon bridge:bodyguard 50 2 -79 0 0 bridge:set_loop
summon bridge:bodyguard 47 -22 -71 180 0 bridge:set_stay
summon bridge:bodyguard 51 -22 -71 180 0 bridge:set_stay
event entity @e[family=bodyguard,x=13,y=-24,z=-112,dx=101,dy=68,dz=64] bridge:set_stage4