execute if score @s world matches 1 run function build:impl/triggers/world/print_menu

execute if score @s world matches -1 run function build:utils/teleport/to/spawn/build/release/overworld
execute if score @s world matches -2 run function build:utils/teleport/to/spawn/build/release/the_nether
execute if score @s world matches -3 run function build:utils/teleport/to/spawn/build/snapshot/overworld
execute if score @s world matches -4 run function build:utils/teleport/to/spawn/build/snapshot/the_nether
execute if score @s world matches -5 run function build:utils/teleport/to/spawn/build/event_world
execute if score @s world matches -6 run function build:utils/teleport/to/spawn/build/blueprint_world

scoreboard players reset @s world
scoreboard players enable @s world
