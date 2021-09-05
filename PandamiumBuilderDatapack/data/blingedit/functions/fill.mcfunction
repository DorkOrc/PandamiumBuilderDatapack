tellraw @s ["Use ",{"text":"/trigger set_block","clickEvent":{"action":"suggest_command","value":"/trigger set_block"},"color":"gray"}," to pick the filler block."]
scoreboard players set @s state 5
gamerule sendCommandFeedback false