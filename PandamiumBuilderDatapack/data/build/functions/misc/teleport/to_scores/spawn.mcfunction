scoreboard players set <has_teleported> variable 0

# Release
execute if score <tp_d> variable matches 0 store success score <has_teleported> variable in build:release/overworld run tp @s 0 65 0 0 0
execute if score <tp_d> variable matches 1 store success score <has_teleported> variable in build:release/the_nether run tp @s 1.0 79 2.0 0 0

# Snapshot
execute if score <tp_d> variable matches 100 store success score <has_teleported> variable in build:snapshot/overworld run tp @s 0 92 0 180 0
execute if score <tp_d> variable matches 101 store success score <has_teleported> variable in build:snapshot/the_nether run tp @s 0 67 -2 180 0

# Event World
execute if score <tp_d> variable matches 200 store success score <has_teleported> variable in build:event_world run tp @s 0 92 0 180 0

execute if score <has_teleported> variable matches 0 run tellraw @s [{"text":"[Info]","color":"dark_red"},[{"text":" Something went wrong! Couldn't find a spawn area for "},[{"text":"dimension_","color":"yellow"},{"score":{"name":"<tp_d>","objective":"variable"}}],"."]]
