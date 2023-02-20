execute if score @s in_dimension matches 100 in build:release/the_nether
execute if score @s in_dimension matches 101 run function build:utils/teleport/to/spawn/build/release/overworld
execute if score @s in_dimension matches 110 run function build:utils/teleport/to/spawn/build/snapshot/the_nether
execute if score @s in_dimension matches 111 run function build:utils/teleport/to/spawn/build/snapshot/overworld
execute if score @s in_dimension matches 120 run function build:utils/teleport/to/spawn/build/event_world
execute if score @s in_dimension matches 121 run function build:utils/teleport/to/spawn/build/blueprint_world

function build:utils/schedule/teleport_to_origin_in_0_ticks
