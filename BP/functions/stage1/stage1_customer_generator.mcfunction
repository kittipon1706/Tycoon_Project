scoreboard objectives add customer1_spawn_timer dummy
scoreboard players add dummy customer1_spawn_timer 1 
execute if score dummy customer1_spawn_timer >= dummy customer_generate_time run summon bridge:customer_1 108 -23 180
execute if score dummy customer1_spawn_timer >= dummy customer_generate_time run scoreboard players set dummy customer1_spawn_timer 0