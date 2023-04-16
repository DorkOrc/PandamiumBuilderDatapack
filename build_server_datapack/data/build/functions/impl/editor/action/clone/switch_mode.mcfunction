scoreboard players operation $owner_id io = @s id
execute unless score @s editor.state matches 3 as @e[type=text_display,tag=editor.cursor_block_colour_base,predicate=build:matches_owner_id,limit=1] run function build:impl/editor/block_colour/show_colour

scoreboard players set @s editor.state 3

execute positioned ~.5 ~ ~.5 summon text_display run function build:impl/editor/action/clone/create_position_3b
