function build:custom_blocks/pre

execute positioned ~ ~-0.5 ~ summon item_display run function build:custom_blocks/pumpkin_composter/as_base

setblock ~ ~ ~ composter[level=5]
