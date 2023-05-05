#> Pre
tag @s add custom_block.base_new

#> Main
tag @s add custom_block.block_on_slab
tag @s add custom_block.base

execute if data storage build:temp item{id:"minecraft:player_head"} summon item_display run function build:custom_blocks/block_on_slab/as_display1
execute unless data storage build:temp item{id:"minecraft:player_head"} summon block_display run function build:custom_blocks/block_on_slab/as_display1

#> Post
tag @s remove custom_block.base_new
