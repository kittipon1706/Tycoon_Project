scoreboard objectives add st2_customer_spawn_timer dummy
scoreboard objectives add st2_customer_swap_way dummy
scoreboard players add dummy st2_customer_spawn_timer 1 
scoreboard players add dummy st2_customer_swap_way 0
execute if score dummy st2_keyquest_clear matches 0 if score dummy st2_customer_spawn_timer >= dummy customer_generate_time run summon bridge:customer_1 89 -23 139

execute unless entity @e[family=customer1_move_into,x=18,y=-24,z=70,dx=92,dy=30,dz=60] if score dummy st2_keyquest_clear matches 1 if score dummy st2_customer_swap_way matches 1 if score dummy st2_customer_spawn_timer >= dummy customer_generate_time run scoreboard players set dummy st2_customer_swap_way 0
execute if score dummy st2_keyquest_clear matches 1 if score dummy st2_customer_swap_way matches 0 if score dummy st2_customer_spawn_timer >= dummy customer_generate_time run summon bridge:customer_1 89 -23 139
execute unless entity @e[family=customer1_move_into,x=18,y=-24,z=70,dx=92,dy=30,dz=60] if score dummy st2_keyquest_clear matches 1 if score dummy st2_customer_swap_way matches 0 if score dummy st2_customer_spawn_timer >= dummy customer_generate_time run scoreboard players set dummy st2_customer_swap_way 1
execute if score dummy st2_keyquest_clear matches 1 if score dummy st2_customer_swap_way matches 1 if score dummy st2_customer_spawn_timer >= dummy customer_generate_time run summon bridge:customer_1 104 -23 74
execute if score dummy st2_customer_spawn_timer >= dummy customer_generate_time run scoreboard players set dummy st2_customer_spawn_timer 0