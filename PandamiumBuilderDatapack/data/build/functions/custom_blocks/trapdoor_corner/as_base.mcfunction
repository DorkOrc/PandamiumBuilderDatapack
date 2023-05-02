#> Pre
tag @s add custom_block.base_new

#> Main
tag @s add custom_block.trapdoor_corner
tag @s add custom_block.base

item replace entity @s container.0 from entity @a[tag=source,limit=1] weapon.offhand
execute store success score <found_item> variable if data entity @s item
execute if score <found_item> variable matches 1 store success score <found_item> variable unless data entity @s item{id:"minecraft:air"}
execute if score <found_item> variable matches 1 run data modify storage build:temp item set from entity @s item

execute if score <found_item> variable matches 1 summon block_display run function build:custom_blocks/trapdoor_corner/as_display1
execute if score <found_item> variable matches 1 summon block_display run function build:custom_blocks/trapdoor_corner/as_display2
execute if score <found_item> variable matches 0 run function build:custom_blocks/kill_stack

item replace entity @s container.0 with air

#> Post
tag @s remove custom_block.base_new
