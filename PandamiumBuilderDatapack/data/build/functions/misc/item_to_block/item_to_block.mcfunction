scoreboard players set <success> variable 1
data modify storage build:temp item_to_block.error set value 0b
data remove storage build:temp item_to_block.block

execute if data storage build:temp item_to_block.item{id:'writable_book'} run data merge storage build:temp {item_to_block:{item:{id:'minecraft:writable_book'}}}
execute unless data storage build:temp item_to_block.item{id:'minecraft:writable_book'} run function build:misc/item_to_block/run/from_item
execute if data storage build:temp item_to_block.item{id:'minecraft:writable_book'} run function build:misc/item_to_block/run/from_pages

execute store success score <is_sand> variable if data storage build:temp item_to_block.item{id:'minecraft:sand'}
execute if data storage build:temp item_to_block.item{id:'sand'} run scoreboard players set <is_sand> variable 1

tag @s add self
execute in pandamium:staff_world run summon falling_block 0 0 0 {Tags:['item_to_block']}
execute in pandamium:staff_world as @e[x=0,type=falling_block,tag=item_to_block,limit=1] run function build:misc/item_to_block/run/as_entity
tag @s remove self

execute store success storage build:temp item_to_block.error byte 1 unless score <success> variable matches 1
execute if score <success> variable matches 1 run data modify storage build:temp item_to_block.block set from storage build:temp item_to_block.entity

data remove storage build:temp item_to_block.entity
data remove storage build:temp item_to_block.pages
