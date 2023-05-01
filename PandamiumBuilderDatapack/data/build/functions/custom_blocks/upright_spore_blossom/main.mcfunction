setblock ~ ~ ~ barrier

execute if block ~ ~-1 ~ #slabs run setblock ~ ~ ~ air
execute if block ~ ~-1 ~ #slabs positioned ~ ~-1 ~ summon item_display run function build:custom_blocks/upright_spore_blossom/as_base

execute unless block ~ ~-1 ~ #slabs positioned ~ ~-0.5 ~ summon item_display run function build:custom_blocks/upright_spore_blossom/as_base
