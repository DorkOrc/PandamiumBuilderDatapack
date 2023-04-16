scoreboard players operation @s owner_id = $owner_id io
tag @s add editor
tag @s add editor.position_2

tp @s ~ ~ ~ 0 0
execute positioned ~.5 ~ ~.5 summon text_display run function build:impl/editor/block_colour/create_green
