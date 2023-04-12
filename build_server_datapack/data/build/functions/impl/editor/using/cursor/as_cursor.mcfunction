execute align xyz run tp @s ~ ~ ~
execute positioned as @s positioned ~.5 ~ ~.5 run function build:impl/editor/using/cursor/at_cursor

data modify storage build:temp pos set from entity @s Pos
execute store result score $cursor_x scratch run data get storage build:temp pos[0]
execute store result score $cursor_y scratch run data get storage build:temp pos[1]
execute store result score $cursor_z scratch run data get storage build:temp pos[2]
