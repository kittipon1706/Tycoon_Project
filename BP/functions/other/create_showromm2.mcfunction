function other/remove_showroom2
tickingarea add 40 -38 75 60 30 51 showroom2_ticking
scoreboard players set dummy showroom2_customer_spawn_timer 0
# summon waypoint
summon bridge:waypoint_customer1 104 -38 128
summon bridge:waypoint_customer1 100 -38 124
summon bridge:waypoint_customer1 97 -38 120
summon bridge:waypoint_customer1 92 -38 115
summon bridge:waypoint_customer1 86 -38 111
summon bridge:waypoint_customer1 79 -38 107
summon bridge:waypoint_customer1 73 -37 105
summon bridge:waypoint_customer1 66 -37 103
summon bridge:waypoint_customer1 58 -37 102

summon bridge:waypoint_customer1_paid1 55 -37 101
summon bridge:waypoint_customer1_paid1 60 -37 105
summon bridge:waypoint_customer1_paid1 65 -37 108

summon bridge:waypoint_customer1_paid2 58 -37 107
summon bridge:waypoint_customer1_paid2 60 -37 110
summon bridge:waypoint_customer1_paid2 62 -37 116
summon bridge:waypoint_customer1_paid2 65 -37 119

summon bridge:waypoint_customer1_paid3 56 -37 103
summon bridge:waypoint_customer1_paid3 61 -37 108
summon bridge:waypoint_customer1_paid3 61 -37 108
summon bridge:waypoint_customer1_paid3 61 -37 118
summon bridge:waypoint_customer1_paid3 63 -37 121
summon bridge:waypoint_customer1_paid3 65 -37 126

summon bridge:waypoint_customer1_leave 78 -38 119
summon bridge:waypoint_customer1_leave 86 -38 116
summon bridge:waypoint_customer1_leave 91 -38 112
summon bridge:waypoint_customer1_leave 95 -38 109
summon bridge:waypoint_customer1_leave 100 -38 104
# saleman
summon bridge:salesman_01 54 -37 97

#keyquest
fill 52 -36 117 52 -36 117 bridge:mystery_button ["stgab:facing_direction"=2]
fill 52 -36 123 52 -36 123 bridge:mystery_button ["stgab:facing_direction"=2]
summon bridge:normal_car1 46 -37 117  270
summon bridge:normal_car1 46 -37 123  270