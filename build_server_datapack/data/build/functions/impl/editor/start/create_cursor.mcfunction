scoreboard players operation @s owner_id = $owner_id io
tag @s add editor
tag @s add editor.cursor

tp @s ~ ~ ~ 0 0
#execute positioned ~.5 ~200 ~.5 summon text_display run function build:impl/editor/start/create_cursor_block_colour
