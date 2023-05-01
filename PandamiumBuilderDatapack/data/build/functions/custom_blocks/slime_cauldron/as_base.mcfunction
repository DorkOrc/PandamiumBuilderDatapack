#> Pre
tag @s add custom_block.base_new

#> Main
tag @s add custom_block.slime_cauldron
tag @s add custom_block.base

execute summon block_display run function build:custom_blocks/slime_cauldron/as_display1

#> Post
tag @s remove custom_block.base_new
