#> Pre
tag @s add custom_block.base_new

#> Main
tag @s add custom_block.coloured_water_cauldron
tag @s add custom_block.base

execute summon text_display run function build:custom_blocks/coloured_water_cauldron/as_display1

#> Post
tag @s remove custom_block.base_new
