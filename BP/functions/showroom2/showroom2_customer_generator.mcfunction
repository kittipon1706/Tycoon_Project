# customer genarator -----------------------------------------------------
scoreboard objectives add showroom2_customer_spawn_timer dummy
scoreboard players add dummy showroom2_customer_spawn_timer 1 
execute if score dummy showroom2_customer_spawn_timer >= dummy customer_generate_time run summon bridge:customer_1 105 -23 126
execute if score dummy showroom2_customer_spawn_timer >= dummy customer_generate_time run scoreboard players set dummy showroom2_customer_spawn_timer 0
