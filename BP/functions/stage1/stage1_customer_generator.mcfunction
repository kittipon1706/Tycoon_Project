scoreboard objectives add st1_customer_spawn_timer dummy
scoreboard players add dummy st1_customer_spawn_timer 1 
execute if score dummy st1_customer_spawn_timer >= dummy customer_generate_time run summon bridge:customer_1 108 -23 180
execute if score dummy st1_customer_spawn_timer >= dummy customer_generate_time run scoreboard players set dummy st1_customer_spawn_timer 0