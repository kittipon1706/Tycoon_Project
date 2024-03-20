scoreboard objectives add  timer1 dummy
scoreboard objectives add  timer2 dummy
# slot 1
execute if entity @e[family=car,x=-29,y=-60,z=8,dx=4,dy=3,dz=2] run scoreboard players set dummy timer1 0
execute unless entity @e[family=car,x=-29,y=-60,z=8,dx=4,dy=3,dz=2] run scoreboard players add dummy timer1 1
execute unless entity @e[family=car,x=-29,y=-60,z=8,dx=4,dy=3,dz=2] unless score dummy timer1 matches ..100 run summon bridge:car -27 -60 9 270 0 
# slot 2
execute if entity @e[family=car,x=-29,y=-60,z=13,dx=4,dy=3,dz=2] run scoreboard players set dummy timer2 0
execute unless entity @e[family=car,x=-29,y=-60,z=13,dx=4,dy=3,dz=2] run scoreboard players add dummy timer2 1
execute unless entity @e[family=car,x=-29,y=-60,z=13,dx=4,dy=3,dz=2] unless score dummy timer2 matches ..100 run summon bridge:car -27 -60 14 270 0 
