function build:custom_blocks/pre

execute in overworld run fill -1 0 -1 1 0 1 air
execute in overworld run setblock 0 0 0 cobblestone_wall
clone from overworld 0 0 0 0 0 0 ~ ~ ~

execute positioned ~ ~-0.5 ~ summon item_display run function build:custom_blocks/thin_oak_log/as_base
