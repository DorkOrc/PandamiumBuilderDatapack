#> Pre
tag @s add custom_block.base_new

#> Main
tag @s add custom_block.gravel_path
tag @s add custom_block.base

execute summon block_display run function build:custom_blocks/gravel_path/as_display1

#> Post
tag @s remove custom_block.base_new
