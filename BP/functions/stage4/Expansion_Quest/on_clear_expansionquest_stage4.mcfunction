event entity @e[family=bossquest_st4] bridge:despawn
camera @a fade time 0.5 1 1
tp @a 125 -23 119 90
function stage4/on_clear_stage4
scoreboard players set dummy keyquest_start 0
scoreboard players set dummy mainquest_start 0
scoreboard players set dummy expansionquest_start 0