#> Pre
tag @s add custom_block.base_new

#> Main
tag @s add custom_block.pumpkin_pie
tag @s add custom_block.base

execute summon item_display run function build:custom_blocks/pumpkin_pie/as_display1
execute summon item_display run function build:custom_blocks/pumpkin_pie/as_display2

#> Post
tag @s remove custom_block.base_new
