scoreboard players set dummy showroom2_customer_spawn_timer 0
scoreboard players set dummy showroom2_car_generate_timer1 0
scoreboard players set dummy showroom2_car_generate_timer2 0
scoreboard players set dummy showroom2_car_generate_timer3 0
scoreboard players set dummy showroom2_car_generate_timer4 0
function showroom2/remove_showroom2
structure load showroom2_1 14 -24 70
structure load showroom2_2 65 -24 70
# summon waypoint
summon bridge:waypoint_customer1 101 -23 123
summon bridge:waypoint_customer1 96 -23 121
summon bridge:waypoint_customer1 91 -23 117
summon bridge:waypoint_customer1 88 -23 112
summon bridge:waypoint_customer1 86 -23 107
summon bridge:waypoint_customer1 82 -23 104
summon bridge:waypoint_customer1 76 -22 104
summon bridge:waypoint_customer1 71 -22 104
summon bridge:waypoint_customer1 65 -22 103
summon bridge:waypoint_customer1 58 -22 103
summon bridge:waypoint_customer1 52 -22 100

summon bridge:waypoint_customer1_paid1 55 -22 102
summon bridge:waypoint_customer1_paid1 59 -22 103
summon bridge:waypoint_customer1_paid1 62 -22 105
summon bridge:waypoint_customer1_paid1 65 -22 108

summon bridge:waypoint_customer1_paid2 52 -22 102
summon bridge:waypoint_customer1_paid2 57 -22 103
summon bridge:waypoint_customer1_paid2 61 -22 105
summon bridge:waypoint_customer1_paid2 61 -22 111
summon bridge:waypoint_customer1_paid2 61 -22 115
summon bridge:waypoint_customer1_paid2 63 -22 120

summon bridge:waypoint_customer1_paid3 50 -22 103
summon bridge:waypoint_customer1_paid3 49 -21 107
summon bridge:waypoint_customer1_paid3 47 -21 109
summon bridge:waypoint_customer1_paid3 44 -21 113
summon bridge:waypoint_customer1_paid3 45 -21 117

summon bridge:waypoint_customer1_leave 44 -21 115
summon bridge:waypoint_customer1_leave 44 -21 111
summon bridge:waypoint_customer1_leave 48 -21 109
summon bridge:waypoint_customer1_leave 50 -22 104
summon bridge:waypoint_customer1_leave 54 -22 102
summon bridge:waypoint_customer1_leave 59 -22 102
summon bridge:waypoint_customer1_leave 65 -22 102
summon bridge:waypoint_customer1_leave 69 -22 102
summon bridge:waypoint_customer1_leave 74 -22 102
summon bridge:waypoint_customer1_leave 80 -23 102
summon bridge:waypoint_customer1_leave 86 -23 102
summon bridge:waypoint_customer1_leave 92 -23 102
summon bridge:waypoint_customer1_leave 77 -23 122
summon bridge:waypoint_customer1_leave 82 -23 122
summon bridge:waypoint_customer1_leave 85 -23 115
summon bridge:waypoint_customer1_leave 88 -23 113
summon bridge:waypoint_customer1_leave 79 -23 113
summon bridge:waypoint_customer1_leave 90 -23 112
summon bridge:waypoint_customer1_leave 97 -23 112
summon bridge:waypoint_customer1_leave 104 -23 112
summon bridge:waypoint_customer1_leave 101 -23 102
event entity @e[family=waypoint_customer1] bridge:set_visible
# saleman
summon bridge:salesman_01 52 -22 98
