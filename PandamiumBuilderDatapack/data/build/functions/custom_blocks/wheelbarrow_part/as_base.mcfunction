#> Pre
tag @s add custom_block.base_new

#> Main
tag @s add custom_block.wheelbarrow_part
tag @s add custom_block.base

execute summon item_display run function build:custom_blocks/wheelbarrow_part/as_display1
execute summon item_display run function build:custom_blocks/wheelbarrow_part/as_display2

#> Post
tag @s remove custom_block.base_new
