scoreboard players operation @s owner_id = $owner_id io
tag @s add editor
tag @s add editor.block_colour
tag @s add editor.block_colour.base
tag @s add editor.block_colour.new_base

data modify entity @s background set from storage build:temp background

execute rotated 0 0 summon text_display run function build:impl/editor/block_colour/generic/passenger
execute rotated 90 0 summon text_display run function build:impl/editor/block_colour/generic/passenger
execute rotated 180 0 summon text_display run function build:impl/editor/block_colour/generic/passenger
execute rotated -90 0 summon text_display run function build:impl/editor/block_colour/generic/passenger
execute rotated 0 90 summon text_display run function build:impl/editor/block_colour/generic/passenger
execute rotated 0 -90 summon text_display run function build:impl/editor/block_colour/generic/passenger
execute positioned ~ ~2000 ~ summon slime run function build:impl/editor/block_colour/generic/slime

tag @s remove editor.block_colour.new_base
