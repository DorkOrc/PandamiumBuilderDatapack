# Section -1: Blocked dimensions
# -100 = overworld
# -99 = the_nether
# -98 = the_end
# -97 = pandamium:staff_world

# Section 0: Release server
# 0 = build:release/overworld
# 1 = build:release/the_nether

# Section 1: Snapshot server
# 100 = build:snapshot/overworld
# 101 = build:snapshot/the_nether

# Section 3: Event world
# 200 = build:event_world

kill

scoreboard players set <teleport.has_teleported> variable 0

execute if score <tp_d> variable matches -100 in overworld run function build:misc/teleport/to_scores/teleport
execute if score <tp_d> variable matches -99 in the_nether run function build:misc/teleport/to_scores/teleport
execute if score <tp_d> variable matches -98 in the_end run function build:misc/teleport/to_scores/teleport
execute if score <tp_d> variable matches -97 in pandamium:staff_world run function build:misc/teleport/to_scores/teleport
execute if score <tp_d> variable matches 0 in build:release/overworld run function build:misc/teleport/to_scores/teleport
execute if score <tp_d> variable matches 1 in build:release/the_nether run function build:misc/teleport/to_scores/teleport
execute if score <tp_d> variable matches 100 in build:snapshot/overworld run function build:misc/teleport/to_scores/teleport
execute if score <tp_d> variable matches 101 in build:snapshot/the_nether run function build:misc/teleport/to_scores/teleport
execute if score <tp_d> variable matches 200 in build:event_world run function build:misc/teleport/to_scores/teleport

execute if score <teleport.has_teleported> variable matches 0 run tellraw @p[tag=teleport.to_scores.selected_player] [{"text":"[Teleport]","color":"dark_red"},[{"text":" Something went wrong! Teleported you to ","color":"red"},{"text":"build:release/overworld","color":"yellow"},"."]]
execute if score <teleport.has_teleported> variable matches 0 in build:release/overworld run function build:misc/teleport/to_scores/teleport
