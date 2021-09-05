tellraw @s ["Use ",{"text":"/trigger set_block","clickEvent":{"action":"suggest_command","value":"/trigger set_block"},"color":"gray"}," to pick the block to be replaced."]
tellraw @s ["Or pick ",{"text":"[air]","clickEvent":{"action":"run_command","value":"/trigger blingedit set -128"},"color":"aqua"}]
scoreboard players set @s state 6
gamerule sendCommandFeedback false