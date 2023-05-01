#> Pre
tag @s add custom_block.base_new

#> Main
tag @s add custom_block.upside_down_hopper
tag @s add custom_block.base

execute summon block_display run function build:custom_blocks/upside_down_hopper/as_display1

#> Post
tag @s remove custom_block.base_new
