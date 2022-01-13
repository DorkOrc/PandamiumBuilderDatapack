# run AT @s

scoreboard players operation <in_dimension> variable = @s in_dimension

execute if score @s switch_world matches 1.. if score <enable_event_world> global matches 1 run tellraw @s [{"text":"[Switch World] ","color":"dark_green"},{"text":"[Release Spawn]","color":"blue","clickEvent":{"action":"run_command","value":"/trigger switch_world set -1"},"hoverEvent":{"action":"show_text","value":[{"text":"Click to teleport to ","color":"blue"},{"text":"Release Spawn","bold":true}]}}," ",{"text":"[Snapshot Spawn]","color":"blue","clickEvent":{"action":"run_command","value":"/trigger switch_world set -2"},"hoverEvent":{"action":"show_text","value":[{"text":"Click to teleport to ","color":"blue"},{"text":"Snapshot Spawn","bold":true}]}}," ",{"text":"[Event Spawn]","color":"blue","clickEvent":{"action":"run_command","value":"/trigger switch_world set -3"},"hoverEvent":{"action":"show_text","value":[{"text":"Click to teleport to ","color":"blue"},{"text":"Event Spawn","bold":true}]}}]
execute if score @s switch_world matches 1.. unless score <enable_event_world> global matches 1 run tellraw @s [{"text":"[Switch World] ","color":"dark_green"},{"text":"[Release Spawn]","color":"blue","clickEvent":{"action":"run_command","value":"/trigger switch_world set -1"},"hoverEvent":{"action":"show_text","value":[{"text":"Click to teleport to ","color":"blue"},{"text":"Release Spawn","bold":true}]}}," ",{"text":"[Snapshot Spawn]","color":"blue","clickEvent":{"action":"run_command","value":"/trigger switch_world set -2"},"hoverEvent":{"action":"show_text","value":[{"text":"Click to teleport to ","color":"blue"},{"text":"Snapshot Spawn","bold":true}]}}," ",{"text":"[Event Spawn]","color":"gray"}]

# Teleport

scoreboard players set <has_teleported> variable 0
execute if score @s switch_world matches -1 unless score <in_dimension> variable matches 0 run scoreboard players set <tp_d> variable 0
execute if score @s switch_world matches -1 if score <in_dimension> variable matches 0 run scoreboard players set <tp_d> variable 1
execute if score @s switch_world matches -2 unless score <in_dimension> variable matches 100 run scoreboard players set <tp_d> variable 100
execute if score @s switch_world matches -2 if score <in_dimension> variable matches 100 run scoreboard players set <tp_d> variable 101
execute if score @s switch_world matches -2..-1 run function build:misc/teleport/to_scores/spawn


execute if score @s switch_world matches -3 store success score <is_flying> variable if entity @s[gamemode=creative,nbt={abilities:{flying:1b}}]
execute if score @s switch_world matches -3 if score <is_flying> variable matches 1 run gamemode spectator
execute if score @s switch_world matches -3 store success score <has_teleported> variable if score <enable_event_world> global matches 1 in build:event_world run tp ~ ~ ~
execute if score @s switch_world matches -3 if score <is_flying> variable matches 1 run gamemode creative

# Output Messages
execute if score <has_teleported> variable matches 1 run tellraw @s [{"text":"[Switch World]","color":"dark_green"},[{"text":" Teleported to ","color":"green"},{"nbt":"Dimension","entity":"@s","color":"aqua"},"!"]]

execute if score @s switch_world matches ..-1 if score @s switch_world matches -3 unless score <enable_event_world> global matches 1 run tellraw @s [{"text":"[Switch World]","color":"dark_red"},{"text":" The Event World is not enabled currently!","color":"red"}]
execute if score @s switch_world matches ..-1 unless score @s switch_world matches -3 if score <has_teleported> variable matches 0 run tellraw @s [{"text":"[Switch World]","color":"dark_red"},{"text":" That is an invalid option!","color":"red"}]
