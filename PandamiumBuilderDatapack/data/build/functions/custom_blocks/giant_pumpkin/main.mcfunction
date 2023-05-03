function build:custom_blocks/pre

setblock ~ ~ ~ barrier
fill ~-1 ~ ~-1 ~1 ~2 ~1 barrier replace air
execute positioned ~ ~-0.5 ~ summon item_display run function build:custom_blocks/giant_pumpkin/as_base
