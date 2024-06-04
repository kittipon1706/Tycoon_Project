#game start building
execute if score dummy stage matches 1.. run function stage0/create_dealership0
execute if score dummy stage matches 2.. run function showroom2/create_showroom2
execute if score dummy stage matches 3.. run function showroom3/create_showroom3
execute if score dummy stage matches 4.. run function showroom4/create_showroom4
execute if score dummy stage matches 5.. run function showroom5/create_showroom5
execute if score dummy stage matches 6.. run function showroom6/create_showroom6
scoreboard players set initialised world 0