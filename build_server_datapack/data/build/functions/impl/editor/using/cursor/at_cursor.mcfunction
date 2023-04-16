scoreboard players set $cursor_block_colour_exists scratch 0
execute store success score $cursor_block_colour_exists scratch run tp @e[type=text_display,tag=editor.cursor_block_colour_base,predicate=build:matches_owner_id,limit=1] ~ ~ ~
execute if score $cursor_block_colour_exists scratch matches 0 summon text_display run function build:impl/editor/start/create_cursor_block_colour

execute if score $state scratch matches 3 as @e[type=text_display,tag=editor.secondary_cursor_block_colour_base,predicate=build:matches_owner_id,limit=1] run function build:impl/editor/using/cursor/as_secondary_cursor
