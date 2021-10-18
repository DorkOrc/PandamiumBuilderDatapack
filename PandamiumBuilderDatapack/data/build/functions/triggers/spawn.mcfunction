execute store success score <event_world_exists> variable in build:event_world if blocks 0 0 0 0 0 0 0 0 0 all
execute unless score <enable_event_dimension> global matches 1 run scoreboard players set <event_world_exists> variable 0

execute if score @s spawn matches 1.. if score <event_world_exists> variable matches 0 run tellraw @s [{"text":"[Spawn] ","color":"dark_green"},{"text":"[The Overworld]","color":"aqua","hoverEvent":{"action":"show_text","value":{"text":"Teleport to The Overworld","color":"aqua"}},"clickEvent":{"action":"run_command","value":"/trigger spawn set -1"}}," ",{"text":"[The Nether]","color":"aqua","hoverEvent":{"action":"show_text","value":{"text":"Teleport to The Nether","color":"aqua"}},"clickEvent":{"action":"run_command","value":"/trigger spawn set -2"}}," ",{"text":"[The Event Overworld]","color":"gray"}]
execute if score @s spawn matches 1.. if score <event_world_exists> variable matches 1 run tellraw @s [{"text":"[Spawn] ","color":"dark_green"},{"text":"[The Overworld]","color":"aqua","hoverEvent":{"action":"show_text","value":{"text":"Teleport to The Overworld","color":"aqua"}},"clickEvent":{"action":"run_command","value":"/trigger spawn set -1"}}," ",{"text":"[The Nether]","color":"aqua","hoverEvent":{"action":"show_text","value":{"text":"Teleport to The Nether","color":"aqua"}},"clickEvent":{"action":"run_command","value":"/trigger spawn set -2"}}," ",{"text":"[The Event Overworld]","color":"aqua","hoverEvent":{"action":"show_text","value":{"text":"Teleport to The Event Overworld","color":"aqua"}},"clickEvent":{"action":"run_command","value":"/trigger spawn set -3"}}]

# Release
execute if score <server> global matches 0 if score @s spawn matches -1 in overworld run tp @s 0 65 0 0 0
execute if score <server> global matches 0 if score @s spawn matches -2 in the_nether run tp @s 1.0 79 2.0 0 0
execute if score <server> global matches 0 if score @s spawn matches -3 in build:event_world run tp @s 0 65 0 0 0

# Snapshot
execute if score <server> global matches 1 if score @s spawn matches -1 in overworld run tp @s -7 138 3 145 0
execute if score <server> global matches 1 if score @s spawn matches -2 in the_nether run tp @s 0 67 -2 180 0
execute if score <server> global matches 1 if score @s spawn matches -3 in build:event_world run tp @s -7 138 3 145 0

