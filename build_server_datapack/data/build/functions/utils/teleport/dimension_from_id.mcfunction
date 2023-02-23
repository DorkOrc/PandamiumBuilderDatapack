execute if score $utils.teleport.dimension_from_id.id function.in matches 0 in minecraft:overworld run tp @s ~ ~ ~
execute if score $utils.teleport.dimension_from_id.id function.in matches 1 in minecraft:the_nether run tp @s ~ ~ ~
execute if score $utils.teleport.dimension_from_id.id function.in matches 2 in minecraft:the_end run tp @s ~ ~ ~

execute if score $utils.teleport.dimension_from_id.id function.in matches 100 in build:release/overworld run tp @s ~ ~ ~
execute if score $utils.teleport.dimension_from_id.id function.in matches 101 in build:release/the_nether run tp @s ~ ~ ~
execute if score $utils.teleport.dimension_from_id.id function.in matches 110 in build:snapshot/overworld run tp @s ~ ~ ~
execute if score $utils.teleport.dimension_from_id.id function.in matches 111 in build:snapshot/the_nether run tp @s ~ ~ ~
execute if score $utils.teleport.dimension_from_id.id function.in matches 120 in build:event_world run tp @s ~ ~ ~
execute if score $utils.teleport.dimension_from_id.id function.in matches 121 in build:blueprint_world run tp @s ~ ~ ~
