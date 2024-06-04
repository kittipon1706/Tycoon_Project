# event entity @e[family=boss_stage4,x=33,y=14,z=-102,dx=55,dy=5,dz=60] bridge:set_attack_player
# event entity @e[family=bodyguard,x=33,y=14,z=-102,dx=55,dy=5,dz=60] bridge:set_boss_quest
summon bridge:airship_nestorio 65 6 -26 0 0 bridge:set_enemies
summon bridge:airship_nestorio 46 6 -26 0 0 bridge:set_enemies
summon bridge:airship_nestorio 82 6 -26 0 0 bridge:set_enemies
ride @e[family=boss_stage4] start_riding @e[family=airship_enemies,x=65,y=6,z=-26,r=1,c=1] teleport_rider
ride @e[family=bodyguard,x=33,y=14,z=-102,dx=55,dy=5,dz=60,c=1] start_riding @e[family=airship_enemies,x=46,y=6,z=-26,r=1,c=1] teleport_rider
ride @e[family=bodyguard,x=33,y=14,z=-102,dx=55,dy=5,dz=60,c=1] start_riding @e[family=airship_enemies,x=82,y=6,z=-26,r=1,c=1] teleport_rider