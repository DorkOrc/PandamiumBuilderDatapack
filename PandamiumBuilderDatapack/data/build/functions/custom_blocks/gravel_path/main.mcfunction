function build:custom_blocks/pre

setblock ~ ~ ~ dirt_path
execute positioned ~ ~-0.5 ~ summon item_display run function build:custom_blocks/gravel_path/as_base
