#> Pre
tag @s add custom_block.base_new

#> Main
tag @s add custom_block.small_birch_table
tag @s add custom_block.base

execute summon block_display run function build:custom_blocks/small_birch_table/as_display1
execute summon block_display run function build:custom_blocks/small_birch_table/as_display2

#> Post
tag @s remove custom_block.base_new
