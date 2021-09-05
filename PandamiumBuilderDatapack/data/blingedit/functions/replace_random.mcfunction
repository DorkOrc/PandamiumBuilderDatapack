scoreboard players set @s state 10
tellraw @s ["Use ",{"text":"/trigger set_block","clickEvent":{"action":"suggest_command","value":"/trigger set_block"},"color":"gray"}," to pick the block to be replaced."]
tellraw @s ["Or replace ",{"text":"[air]","clickEvent":{"action":"run_command","value":"/trigger blingedit set -512"},"color":"aqua"}]
gamerule sendCommandFeedback false