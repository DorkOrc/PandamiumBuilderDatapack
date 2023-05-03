function build:custom_blocks/pre

setblock ~ ~ ~ light[level=0]
execute positioned ~ ~-0.5 ~ summon item_display run function build:custom_blocks/snow_layer/as_base
