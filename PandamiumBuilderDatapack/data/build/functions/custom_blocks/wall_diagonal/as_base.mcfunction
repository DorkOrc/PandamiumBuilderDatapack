#> Pre
tag @s add custom_block.base_new

#> Main
tag @s add custom_block.wall_diagonal
tag @s add custom_block.base

execute summon block_display run function build:custom_blocks/wall_diagonal/as_display1

#> Post
tag @s remove custom_block.base_new
