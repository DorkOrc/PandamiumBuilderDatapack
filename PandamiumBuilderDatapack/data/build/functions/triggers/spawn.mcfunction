# Release
execute if score <server> variable matches 0 if score @s spawn matches 1 in overworld run tp @s 0 65 0 0 0
execute if score <server> variable matches 0 if score @s spawn matches 2 in the_nether run tp @s 1.0 79 2.0 0 0

# Snapshot
execute if score <server> variable matches 1 if score @s spawn matches 1 in overworld run tp @s 0 85 0 45 0
execute if score <server> variable matches 1 if score @s spawn matches 2 in the_nether run tp @s 0 32 68 0 0
