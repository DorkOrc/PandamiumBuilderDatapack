scoreboard players operation @s owner_id = $id scratch
tag @s add editor
tag @s add editor.position_2

tp @s ~ ~ ~ 0 0
execute positioned ~.5 ~ ~.5 summon text_display run function build:impl/editor/block_colour/create_green

scoreboard players operation $owner_id io = $id scratch
execute as @e[type=text_display,tag=editor.cursor_block_colour_base,predicate=build:matches_owner_id,limit=1] run function build:impl/editor/block_colour/hide_colour
