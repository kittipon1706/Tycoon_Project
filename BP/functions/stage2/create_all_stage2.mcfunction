execute unless entity @e[family=bossquest_st2,c=1] run summon bridge:bossquest_st2 187 -36 -10
execute unless entity @e[family=keyquest_st2,c=1] run summon bridge:keyquest_st2 105 -38 71
event entity @e[family=boss_stage2,c=1] bridge:despawn
scoreboard players set dummy Boss2_clear 0
