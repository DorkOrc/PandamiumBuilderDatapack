execute store success score <event_world_exists> variable in build:event_world if blocks 0 0 0 0 0 0 0 0 0 all
execute unless score <enable_event_dimension> global matches 1 run scoreboard players set <event_world_exists> variable 0

# Release
execute if score <event_world_exists> variable matches 1 in build:event_world run tp @s 0 65 0 0 0

# Snapshot
execute if score <event_world_exists> variable matches 1 in build:event_world run tp @s -7 138 3 145 0
