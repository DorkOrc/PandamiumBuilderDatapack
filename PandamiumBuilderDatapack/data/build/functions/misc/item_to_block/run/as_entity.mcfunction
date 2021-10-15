
data modify entity @s BlockState merge from storage build:temp item_to_block.entity
data modify storage build:temp item_to_block.entity set from entity @s BlockState
execute if score <is_sand> variable matches 0 if data storage build:temp item_to_block.entity{Name:'minecraft:sand'} run scoreboard players set <success> variable 0

kill
