#> Pre
tag @s add custom_block.base_new

#> Main
tag @s add custom_block.pumpkin_composter
tag @s add custom_block.base

execute summon item_display run function build:custom_blocks/pumpkin_composter/as_display1

#> Post
tag @s remove custom_block.base_new
