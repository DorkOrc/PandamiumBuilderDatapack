function build:custom_blocks/pre

execute in overworld run fill -1 0 -1 1 0 1 air
execute in overworld run setblock 0 0 0 acacia_fence
clone from overworld 0 0 0 0 0 0 ~ ~ ~

execute positioned ~ ~-0.5 ~ summon item_display run function build:custom_blocks/small_acacia_table/as_base
