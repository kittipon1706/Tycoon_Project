scoreboard objectives add Inqueue dummy
scoreboard objectives add Getqueue dummy
scoreboard players set dummy Inqueue 0 
scoreboard players set dummy Getqueue 0 
execute as @e[family=customer,tag=queue] run scoreboard players add dummy Inqueue 1

#Your Commands Here (examples)
#not
execute if score dummy Inqueue matches 2.. run scoreboard players add dummy Getqueue 1
#can 
execute unless score dummy Inqueue matches 2.. run scoreboard players add dummy Getqueue 0
execute if score dummy Inqueue matches ..1 if score dummy Getqueue matches 0 run tag @e[family=customer,tag=!queue,c=1,rm=0] add queue