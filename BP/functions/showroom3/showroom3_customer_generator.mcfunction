# customer genarator -----------------------------------------------------
scoreboard objectives add showroom3_customer_spawn_timer dummy
scoreboard players add dummy showroom3_customer_spawn_timer 1 
execute if score dummy showroom3_customer_spawn_timer >= dummy customer_generate_time run summon bridge:customer_1 105 -23 50
execute if score dummy showroom3_customer_spawn_timer >= dummy customer_generate_time run scoreboard players set dummy showroom3_customer_spawn_timer 0

