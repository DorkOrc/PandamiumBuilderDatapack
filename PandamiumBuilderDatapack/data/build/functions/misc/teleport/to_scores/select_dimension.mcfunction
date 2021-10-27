kill

execute unless score <tp_d> variable matches -1 unless score <tp_d> variable matches 1..3 in overworld run function build:misc/teleport/to_scores/teleport

execute if score <tp_d> variable matches -1 in the_nether run function build:misc/teleport/to_scores/teleport
execute if score <tp_d> variable matches 1 in the_end run function build:misc/teleport/to_scores/teleport
execute if score <tp_d> variable matches 2 in pandamium:staff_world run function build:misc/teleport/to_scores/teleport
execute if score <tp_d> variable matches 3 in build:event_world run function build:misc/teleport/to_scores/teleport
