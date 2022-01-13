scoreboard players operation <in_dimension> variable = @s in_dimension

# Release
execute if score <in_dimension> variable matches 0..99 if score @s spawn matches 1 in build:release/overworld run tp @s 0 65 0 0 0
execute if score <in_dimension> variable matches 0..99 if score @s spawn matches 2 in build:release/the_nether run tp @s 1.0 79 2.0 0 0

# Snapshot
execute if score <in_dimension> variable matches 100..199 if score @s spawn matches 1 in build:snapshot/overworld run tp @s 0 92 0 180 0
execute if score <in_dimension> variable matches 100..199 if score @s spawn matches 2 in build:snapshot/the_nether run tp @s 0 67 -2 180 0

# Event World
execute if score <in_dimension> variable matches 200..299 in build:event_world run tp @s 0 92 0 180 0
