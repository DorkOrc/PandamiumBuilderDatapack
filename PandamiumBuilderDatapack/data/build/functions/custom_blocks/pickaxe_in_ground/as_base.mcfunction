#> Pre
tag @s add custom_block.base_new

#> Main
tag @s add custom_block.pickaxe_in_ground
tag @s add custom_block.base

execute summon item_display run function build:custom_blocks/pickaxe_in_ground/as_display1

#> Post
tag @s remove custom_block.base_new
