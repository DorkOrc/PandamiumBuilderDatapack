# run AT @s

scoreboard players operation <in_dimension> variable = @s in_dimension

execute if score @s switch_world matches 1.. run tellraw @s [{"text":"======== ","color":"aqua"},{"text":"Worlds","bold":true}," ========"]

execute if score @s switch_world matches 1.. run tellraw @s [{"text":"","color":"green"},{"text":"[→]","color":"blue","bold":true,"clickEvent":{"action":"run_command","value":"/trigger switch_world set -1"},"hoverEvent":{"action":"show_text","value":[{"text":"Click to teleport to dimension ","color":"blue"},{"text":"build:release/overworld","bold":true}]}}," ","build:release/overworld"]
execute if score @s switch_world matches 1.. run tellraw @s [{"text":"","color":"green"},{"text":"[→]","color":"blue","bold":true,"clickEvent":{"action":"run_command","value":"/trigger switch_world set -2"},"hoverEvent":{"action":"show_text","value":[{"text":"Click to teleport to dimension ","color":"blue"},{"text":"build:release/the_nether","bold":true}]}}," ","build:release/the_nether"]
execute if score @s switch_world matches 1.. run tellraw @s [{"text":"","color":"green"},{"text":"[→]","color":"blue","bold":true,"clickEvent":{"action":"run_command","value":"/trigger switch_world set -3"},"hoverEvent":{"action":"show_text","value":[{"text":"Click to teleport to dimension ","color":"blue"},{"text":"build:snapshot/overworld","bold":true}]}}," ","build:snapshot/overworld"]
execute if score @s switch_world matches 1.. run tellraw @s [{"text":"","color":"green"},{"text":"[→]","color":"blue","bold":true,"clickEvent":{"action":"run_command","value":"/trigger switch_world set -4"},"hoverEvent":{"action":"show_text","value":[{"text":"Click to teleport to dimension ","color":"blue"},{"text":"build:snapshot/the_nether","bold":true}]}}," ","build:snapshot/the_nether"]

execute if score @s switch_world matches 1.. if score <enable_event_world> global matches 1 run tellraw @s [{"text":"","color":"green"},{"text":"[→]","color":"blue","bold":true,"clickEvent":{"action":"run_command","value":"/trigger switch_world set -5"},"hoverEvent":{"action":"show_text","value":[{"text":"Click to teleport to dimension ","color":"blue"},{"text":"build:event_world","bold":true}]}}," ","build:event_world"]
execute if score @s switch_world matches 1.. unless score <enable_event_world> global matches 1 run tellraw @s [{"text":"","color":"gray"},{"text":"[→]","bold":true}," ",{"text":"build:event_world","strikethrough":true}]

execute if score @s switch_world matches 1.. if score <enable_blueprint_world> global matches 1 run tellraw @s [{"text":"","color":"green"},{"text":"[→]","color":"blue","bold":true,"clickEvent":{"action":"run_command","value":"/trigger switch_world set -6"},"hoverEvent":{"action":"show_text","value":[{"text":"Click to teleport to dimension ","color":"blue"},{"text":"build:blueprint_world","bold":true}]}}," ","build:blueprint_world"]
execute if score @s switch_world matches 1.. unless score <enable_blueprint_world> global matches 1 run tellraw @s [{"text":"","color":"gray"},{"text":"[→]","bold":true}," ",{"text":"build:blueprint_world","strikethrough":true}]

execute if score @s switch_world matches 1.. run tellraw @s {"text":"============================","color":"aqua"}
execute if score @s switch_world matches 1.. run return 0

# Teleport

execute unless score @s switch_world matches -6..-1 run tellraw @s [{"text":"[Switch World]","color":"dark_red"},{"text":" That is not a valid input!","color":"red"}]
execute unless score @s switch_world matches -6..-1 run return 0

execute if score @s switch_world matches -5 unless score <enable_event_world> global matches 1 run tellraw @s [{"text":"[Switch World]","color":"dark_red"},{"text":" That dimension is currently disabled!","color":"red"}]
execute if score @s switch_world matches -5 unless score <enable_event_world> global matches 1 run return 0
execute if score @s switch_world matches -6 unless score <enable_blueprint_world> global matches 1 run tellraw @s [{"text":"[Switch World]","color":"dark_red"},{"text":" That dimension is currently disabled!","color":"red"}]
execute if score @s switch_world matches -6 unless score <enable_blueprint_world> global matches 1 run return 0

execute store success score <is_flying> variable if entity @s[gamemode=creative,nbt={abilities:{flying:1b}}]

scoreboard players set <has_teleported> variable 0
execute if score @s switch_world matches -1 run scoreboard players set <tp_d> variable 0
execute if score @s switch_world matches -2 run scoreboard players set <tp_d> variable 1
execute if score @s switch_world matches -3 run scoreboard players set <tp_d> variable 100
execute if score @s switch_world matches -4 run scoreboard players set <tp_d> variable 101
execute if score @s switch_world matches -5 run scoreboard players set <tp_d> variable 200
execute if score @s switch_world matches -6 run scoreboard players set <tp_d> variable 201

function build:misc/teleport/to_scores/spawn
execute if score <is_flying> variable matches 1 run gamemode spectator
execute if score <is_flying> variable matches 1 run gamemode creative
