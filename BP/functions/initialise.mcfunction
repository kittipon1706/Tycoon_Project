scoreboard objectives add world dummy
scoreboard players add initialised world 0

#score
execute if score initialised world matches 0 run scoreboard objectives add keyquest_start dummy
execute if score initialised world matches 0 run scoreboard objectives add mainquest_start dummy
execute if score initialised world matches 0 run scoreboard objectives add delay_quest_message dummy
execute if score initialised world matches 0 run scoreboard objectives add expansionquest_start dummy
execute if score initialised world matches 0 run scoreboard players add dummy mainquest_start 0
execute if score initialised world matches 0 run scoreboard players add dummy keyquest_start 0
execute if score initialised world matches 0 run scoreboard players add dummy expansionquest_start 0

execute if score initialised world matches 0 run scoreboard objectives add cartype_generate dummy
execute if score initialised world matches 0 run scoreboard objectives add money dummy
execute if score initialised world matches 0 run scoreboard objectives add stage dummy
execute if score initialised world matches 0 run scoreboard objectives add car_generate_time dummy
execute if score initialised world matches 0 run scoreboard objectives add customer_generate_time dummy
execute if score initialised world matches 0 run scoreboard players set dummy stage 0
execute if score initialised world matches 0 run scoreboard players set dummy money 0
execute if score initialised world matches 0 run scoreboard players set dummy cartype_generate 0
execute if score initialised world matches 0 run scoreboard players set dummy car_generate_time 400
execute if score initialised world matches 0 run scoreboard players set dummy customer_generate_time 200
execute if score initialised world matches 0 run function save_structure
execute if score initialised world matches 0 run function stage0/on_start_stage0

scoreboard players set initialised world 1