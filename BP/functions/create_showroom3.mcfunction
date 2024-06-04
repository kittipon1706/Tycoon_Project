scoreboard players set dummy showroom3_customer_spawn_timer 0
scoreboard players set dummy showroom3_car_generate_timer1 0
scoreboard players set dummy showroom3_car_generate_timer2 0
scoreboard players set dummy showroom3_car_generate_timer3 0
scoreboard players set dummy showroom3_car_generate_timer4 0
fill 14 -24 16 34 2 70 air 
fill 35 -24 16 54 2 70 air 
fill 55 -24 16 74 2 70 air 
fill 75 -24 16 94 2 70 air 
fill 95 -24 16 114 2 70 air 
structure load showroom3_1 14 -24 16
structure load showroom3_2 65 -24 16
# summon waypoint
summon bridge:waypoint_customer1 105 -23 69
summon bridge:waypoint_customer1 105 -23 63
summon bridge:waypoint_customer1 105 -23 56
summon bridge:waypoint_customer1 100 -23 56
summon bridge:waypoint_customer1 93 -22 56
summon bridge:waypoint_customer1 89 -22 50
summon bridge:waypoint_customer1 87 -22 44
summon bridge:waypoint_customer1 84 -22 38
summon bridge:waypoint_customer1 79 -22 32
summon bridge:waypoint_customer1 74 -21 28
summon bridge:waypoint_customer1 69 -20 28
summon bridge:waypoint_customer1 63 -20 28
summon bridge:waypoint_customer1 57 -20 28
summon bridge:waypoint_customer1 51 -19 28
summon bridge:waypoint_customer1 47 -19 27

summon bridge:waypoint_customer1_paid1 44 -19 27
summon bridge:waypoint_customer1_paid1 48 -19 29
summon bridge:waypoint_customer1_paid1 53 -19 29
summon bridge:waypoint_customer1_paid1 57 -20 30
summon bridge:waypoint_customer1_paid1 57 -20 33
summon bridge:waypoint_customer1_paid1 57 -21 38
summon bridge:waypoint_customer1_paid1 54 -21 42
summon bridge:waypoint_customer1_paid1 54 -21 45

summon bridge:waypoint_customer1_paid2 45 -19 28
summon bridge:waypoint_customer1_paid2 50 -19 29
summon bridge:waypoint_customer1_paid2 56 -20 29
summon bridge:waypoint_customer1_paid2 57 -20 36
summon bridge:waypoint_customer1_paid2 56 -21 41
summon bridge:waypoint_customer1_paid2 54 -21 44
summon bridge:waypoint_customer1_paid2 54 -21 50

summon bridge:waypoint_customer1_paid3 48 -19 29
summon bridge:waypoint_customer1_paid3 52 -19 29
summon bridge:waypoint_customer1_paid3 57 -20 31
summon bridge:waypoint_customer1_paid3 57 -21 37
summon bridge:waypoint_customer1_paid3 54 -21 41
summon bridge:waypoint_customer1_paid3 54 -21 48
summon bridge:waypoint_customer1_paid3 54 -21 53
summon bridge:waypoint_customer1_paid3 54 -21 57

summon bridge:waypoint_customer1_leave 66 -22 51
summon bridge:waypoint_customer1_leave 72 -22 51
summon bridge:waypoint_customer1_leave 78 -22 51
summon bridge:waypoint_customer1_leave 82 -22 47
summon bridge:waypoint_customer1_leave 87 -22 42
summon bridge:waypoint_customer1_leave 89 -22 37
summon bridge:waypoint_customer1_leave 92 -22 32

event entity @e[family=waypoint_customer1] bridge:set_invisible
# saleman
summon bridge:salesman_01 46 -19 23 0
summon bridge:billboard 86 -9 64 0
