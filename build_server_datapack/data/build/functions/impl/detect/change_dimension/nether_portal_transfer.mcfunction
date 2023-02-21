execute if score @s in_dimension matches 100 in build:release/the_nether run tp @s ~ ~ ~
execute if score @s in_dimension matches 101 in build:release/overworld run tp @s ~ ~ ~
execute if score @s in_dimension matches 110 in build:snapshot/the_nether run tp @s ~ ~ ~
execute if score @s in_dimension matches 111 in build:snapshot/overworld run tp @s ~ ~ ~
execute if score @s in_dimension matches 120 in build:release/event_world run tp @s ~ ~ ~
execute if score @s in_dimension matches 121 in build:release/blueprint_world run tp @s ~ ~ ~

function build:utils/schedule/teleport_to_origin_in_0_ticks
