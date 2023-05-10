#> Pre
tag @s add custom_block.base_new

#> Main
tag @s add custom_block.wall_hanging_soul_lantern
tag @s add custom_block.base

execute summon item_display run function build:custom_blocks/wall_hanging_soul_lantern/as_display1
execute summon item_display run function build:custom_blocks/wall_hanging_soul_lantern/as_display2

#> Post
tag @s remove custom_block.base_new
