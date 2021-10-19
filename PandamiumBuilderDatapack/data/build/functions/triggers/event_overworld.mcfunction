# run AT @s

execute store success score <event_world_exists> variable in build:event_world if blocks 0 0 0 0 0 0 0 0 0 all

execute if score @s in_dimension matches 0 if score <event_world_exists> variable matches 1 in build:event_world run tp ~ ~ ~
execute if score @s in_dimension matches 3 if score <event_world_exists> variable matches 1 in overworld run tp ~ ~ ~

# Release
execute if score @s in_dimension matches -1 if score <event_world_exists> variable matches 1 in build:event_world run tp @s 0 65 0 0 0
execute if score @s in_dimension matches 1 if score <event_world_exists> variable matches 1 in build:event_world run tp @s 0 65 0 0 0

# Snapshot
execute if score @s in_dimension matches -1 if score <event_world_exists> variable matches 1 in build:event_world run tp @s -7 138 3 145 0
execute if score @s in_dimension matches 1 if score <event_world_exists> variable matches 1 in build:event_world run tp @s -7 138 3 145 0
