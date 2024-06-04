event entity @e[family=car,family=!onsell_car,x=173,y=-23,z=88,dx=73,dy=10,dz=82] bridge:despawn

execute unless entity @e[family=manufacturer,x=173,y=-23,z=88,dx=73,dy=10,dz=82] run summon bridge:manufacturer 204 -23 152

execute unless entity @e[family=normal_car1,family=shop_onsell_car] if score dummy stage matches 1.. run summon bridge:normal_car1 242 -22 125 90 0 bridge:set_shop_sellable
execute unless entity @e[family=normal_car2,family=shop_onsell_car] if score dummy stage matches 1.. run summon bridge:normal_car2 242 -22 131 90 0 bridge:set_shop_sellable
execute unless entity @e[family=normal_car3,family=shop_onsell_car] if score dummy stage matches 1.. run summon bridge:normal_car3 242 -22 137 90 0 bridge:set_shop_sellable

execute unless score dummy stage matches 2.. run event entity @e[family=mid_car4,family=shop_onsell_car] bridge:despawn
execute unless score dummy stage matches 2.. run event entity @e[family=mid_car5,family=shop_onsell_car] bridge:despawn
execute unless score dummy stage matches 2.. run event entity @e[family=mid_car6,family=shop_onsell_car] bridge:despawn
execute unless score dummy stage matches 2.. run event entity @e[family=mid_car7,family=shop_onsell_car] bridge:despawn

execute unless entity @e[family=mid_car4,family=shop_onsell_car] if score dummy stage matches 2.. run summon bridge:mid_car4 242 -22 96 90 0 bridge:set_shop_sellable
execute unless entity @e[family=mid_car5,family=shop_onsell_car] if score dummy stage matches 2.. run summon bridge:mid_car5 242 -22 102 90 0 bridge:set_shop_sellable
execute unless entity @e[family=mid_car6,family=shop_onsell_car] if score dummy stage matches 2.. run summon bridge:mid_car6 242 -22 108 90 0 bridge:set_shop_sellable
execute unless entity @e[family=mid_car7,family=shop_onsell_car] if score dummy stage matches 2.. run summon bridge:mid_car7 242 -22 114 90 0 bridge:set_shop_sellable
