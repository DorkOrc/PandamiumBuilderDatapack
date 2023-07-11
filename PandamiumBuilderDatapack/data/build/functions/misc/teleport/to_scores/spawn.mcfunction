scoreboard players set <has_teleported> variable 0

# Release
execute if score <tp_d> variable matches 0 store success score <has_teleported> variable in build:release/overworld run tp @s 0 65 0 0 0
execute if score <tp_d> variable matches 1 store success score <has_teleported> variable in build:release/the_nether run tp @s 1.0 79 2.0 0 0

# Snapshot
execute if score <tp_d> variable matches 100 store success score <has_teleported> variable in build:snapshot/overworld run tp @s -289 127 174 0 0
execute if score <tp_d> variable matches 101 store success score <has_teleported> variable in build:snapshot/the_nether run tp @s 17.5 37.5 -13.5 -90 0

# Event World
execute if score <tp_d> variable matches 200 store success score <has_teleported> variable in build:event_world run tp @s 0 92 0 180 0
#execute if score <tp_d> variable matches 201 store success score <has_teleported> variable in build:blueprint_world run tp @s -289 127 173 180 0

execute if score <has_teleported> variable matches 0 run tellraw @s [{"text":"[Info]","color":"dark_red"},[{"text":" Something went wrong! Couldn't find a spawn area for "},[{"text":"dimension_","color":"yellow"},{"score":{"name":"<tp_d>","objective":"variable"}}],"."]]
