#> Pre
tag @s add custom_block.base_new

#> Main
tag @s add custom_block.thin_birch_log
tag @s add custom_block.base

execute summon item_display run function build:custom_blocks/thin_birch_log/as_display1
execute summon item_display run function build:custom_blocks/thin_birch_log/as_display2

#> Post
tag @s remove custom_block.base_new
