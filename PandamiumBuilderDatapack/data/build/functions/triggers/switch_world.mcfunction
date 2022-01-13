# run AT @s

execute store success score <is_flying> variable if entity @s[gamemode=creative,nbt={abilities:{flying:1b}}]
scoreboard players operation <in_dimension> variable = @s in_dimension

execute if score @s switch_world matches 1.. if score <enable_event_world> global matches 1 run tellraw @s [{"text":"[Switch World] ","color":"dark_green"},{"text":"[Release Spawn]","color":"blue","clickEvent":{"action":"run_command","value":"/trigger switch_world set -1"},"hoverEvent":{"action":"show_text","value":[{"text":"Click to teleport to ","color":"blue"},{"text":"Release Spawn","bold":true}]}}," ",{"text":"[Snapshot Spawn]","color":"blue","clickEvent":{"action":"run_command","value":"/trigger switch_world set -2"},"hoverEvent":{"action":"show_text","value":[{"text":"Click to teleport to ","color":"blue"},{"text":"Snapshot Spawn","bold":true}]}}," ",{"text":"[Event Spawn]","color":"blue","clickEvent":{"action":"run_command","value":"/trigger switch_world set -3"},"hoverEvent":{"action":"show_text","value":[{"text":"Click to teleport to ","color":"blue"},{"text":"Event Spawn","bold":true}]}}]
execute if score @s switch_world matches 1.. unless score <enable_event_world> global matches 1 run tellraw @s [{"text":"[Switch World] ","color":"dark_green"},{"text":"[Release Spawn]","color":"blue","clickEvent":{"action":"run_command","value":"/trigger switch_world set -1"},"hoverEvent":{"action":"show_text","value":[{"text":"Click to teleport to ","color":"blue"},{"text":"Release Spawn","bold":true}]}}," ",{"text":"[Snapshot Spawn]","color":"blue","clickEvent":{"action":"run_command","value":"/trigger switch_world set -2"},"hoverEvent":{"action":"show_text","value":[{"text":"Click to teleport to ","color":"blue"},{"text":"Snapshot Spawn","bold":true}]}}," ",{"text":"[Event Spawn]","color":"gray"}]

# Teleport
execute if score <is_flying> variable matches 1 run gamemode spectator

scoreboard players set <has_teleported> variable 0
execute if score @s switch_world matches -1 store success score <has_teleported> variable unless score <in_dimension> variable matches 0 in build:release/overworld run tp ~ ~ ~
execute if score @s switch_world matches -1 store success score <has_teleported> variable if score <in_dimension> variable matches 0 in build:release/the_nether run tp ~ ~ ~
execute if score @s switch_world matches -2 store success score <has_teleported> variable unless score <in_dimension> variable matches 100 in build:snapshot/overworld run tp ~ ~ ~
execute if score @s switch_world matches -2 store success score <has_teleported> variable if score <in_dimension> variable matches 100 in build:snapshot/the_nether run tp ~ ~ ~
execute if score @s switch_world matches -3 store success score <has_teleported> variable if score <enable_event_world> global matches 1 in build:event_world run tp ~ ~ ~

execute if score <is_flying> variable matches 1 run gamemode creative

# Output Messages
execute if score <has_teleported> variable matches 1 run tellraw @s [{"text":"[Switch World]","color":"dark_green"},[{"text":" Teleported to ","color":"green"},{"nbt":"Dimension","entity":"@s","color":"aqua"},"!"]]

execute if score @s switch_world matches ..-1 if score @s switch_world matches -3 unless score <enable_event_world> global matches 1 run tellraw @s [{"text":"[Switch World]","color":"dark_red"},{"text":" The Event World is not enabled currently!","color":"red"}]
execute if score @s switch_world matches ..-1 unless score @s switch_world matches -3 if score <has_teleported> variable matches 0 run tellraw @s [{"text":"[Switch World]","color":"dark_red"},{"text":" That is an invalid option!","color":"red"}]
