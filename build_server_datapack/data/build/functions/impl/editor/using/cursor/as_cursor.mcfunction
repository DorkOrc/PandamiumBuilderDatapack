execute align xyz run tp @s ~ ~ ~

data modify storage build:temp pos set from entity @s Pos
execute store result score $cursor_x scratch run data get storage build:temp pos[0]
execute store result score $cursor_y scratch run data get storage build:temp pos[1]
execute store result score $cursor_z scratch run data get storage build:temp pos[2]
scoreboard players operation $secondary_cursor_x scratch += $cursor_x scratch
scoreboard players operation $secondary_cursor_y scratch += $cursor_y scratch
scoreboard players operation $secondary_cursor_z scratch += $cursor_z scratch

execute positioned as @s positioned ~.5 ~ ~.5 run function build:impl/editor/using/cursor/at_cursor
