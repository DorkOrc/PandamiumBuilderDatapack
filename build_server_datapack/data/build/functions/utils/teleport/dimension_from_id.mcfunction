execute if score $dimension_id io matches 0 in minecraft:overworld run tp @s ~ ~ ~
execute if score $dimension_id io matches 1 in minecraft:the_nether run tp @s ~ ~ ~
execute if score $dimension_id io matches 2 in minecraft:the_end run tp @s ~ ~ ~

execute if score $dimension_id io matches 100 in build:release/overworld run tp @s ~ ~ ~
execute if score $dimension_id io matches 101 in build:release/the_nether run tp @s ~ ~ ~
execute if score $dimension_id io matches 110 in build:snapshot/overworld run tp @s ~ ~ ~
execute if score $dimension_id io matches 111 in build:snapshot/the_nether run tp @s ~ ~ ~
execute if score $dimension_id io matches 120 in build:event_world run tp @s ~ ~ ~
execute if score $dimension_id io matches 121 in build:blueprint_world run tp @s ~ ~ ~
