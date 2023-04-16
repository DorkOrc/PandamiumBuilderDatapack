data modify storage build:temp pos set from entity @e[type=marker,tag=editor.cursor,predicate=build:matches_owner_id,limit=1] Pos
execute store result score $cursor_x scratch run data get storage build:temp pos[0]
execute store result score $cursor_y scratch run data get storage build:temp pos[1]
execute store result score $cursor_z scratch run data get storage build:temp pos[2]
