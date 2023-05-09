#> Pre
tag @s add custom_block.base_new

#> Main
tag @s add custom_block.trapdoor_corner
tag @s add custom_block.base

execute summon block_display run function build:custom_blocks/trapdoor_corner/as_display1
execute summon block_display run function build:custom_blocks/trapdoor_corner/as_display2

#> Post
tag @s remove custom_block.base_new
