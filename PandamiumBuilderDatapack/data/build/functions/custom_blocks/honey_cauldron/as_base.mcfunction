#> Pre
tag @s add custom_block.base_new

#> Main
tag @s add custom_block.honey_cauldron
tag @s add custom_block.base

execute summon block_display run function build:custom_blocks/honey_cauldron/as_display1

#> Post
tag @s remove custom_block.base_new
