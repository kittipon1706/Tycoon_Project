execute if score dummy delay_quest_message matches ..200 run scoreboard players add dummy delay_quest_message 1
execute if score dummy delay_quest_message matches 200.. run function stage2/stage2_quest_checker
execute if score dummy delay_quest_message matches 1 run title @a title STAGE2