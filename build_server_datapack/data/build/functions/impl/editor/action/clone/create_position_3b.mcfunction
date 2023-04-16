scoreboard players operation @s owner_id = $owner_id io
tag @s add editor
tag @s add editor.secondary_cursor_block_colour_base

execute store result entity @s Pos[0] double 1 run scoreboard players get $pos_3b_x scratch
execute store result entity @s Pos[1] double 1 run scoreboard players get $pos_3b_y scratch
execute store result entity @s Pos[2] double 1 run scoreboard players get $pos_3b_z scratch
execute positioned as @s run tp @s ~0.5 ~ ~0.5

execute positioned as @s run function build:impl/editor/block_colour/create_blue
