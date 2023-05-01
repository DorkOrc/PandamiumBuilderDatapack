#> Pre
tag @s add custom_block.base_new

#> Main
tag @s add custom_block.placed_item
tag @s add custom_block.base

execute summon item_display run function build:custom_blocks/placed_item/as_display1
execute if score <found_item> variable matches 0 run function build:custom_blocks/kill_stack

#> Post
tag @s remove custom_block.base_new
