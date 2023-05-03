function build:custom_blocks/pre

setblock ~ ~ ~ water_cauldron[level=3]
execute positioned ~ ~-0.5 ~ summon item_display run function build:custom_blocks/coloured_water_cauldron/as_base
