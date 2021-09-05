clone ~ ~ ~ ~ ~ ~ 0 2 0
scoreboard players set @s state 7
setblock ~ ~ ~ air
tellraw @s ["Use ",{"text":"/trigger set_block","clickEvent":{"action":"suggest_command","value":"/trigger set_block"},"color":"gray"}," to pick the block they should be replaced with."]
tellraw @s ["Or pick ",{"text":"[air]","clickEvent":{"action":"run_command","value":"/trigger blingedit set -192"},"color":"aqua"}]