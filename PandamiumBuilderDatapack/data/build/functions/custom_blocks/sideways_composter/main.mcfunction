function build:custom_blocks/pre

setblock ~ ~ ~ barrier
execute positioned ~ ~-0.5 ~ summon item_display run function build:custom_blocks/sideways_composter/as_base
