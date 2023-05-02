#> Pre
tag @s add custom_block.base_new

#> Main
tag @s add custom_block.trapdoor_corner
tag @s add custom_block.base

item replace entity @s container.0 from entity @a[tag=source,limit=1] weapon.offhand
execute if data entity @s item{id:"minecraft:oak_trapdoor"} run scoreboard players set <found_item> variable 1
execute if data entity @s item{id:"minecraft:spruce_trapdoor"} run scoreboard players set <found_item> variable 1
execute if data entity @s item{id:"minecraft:birch_trapdoor"} run scoreboard players set <found_item> variable 1
execute if data entity @s item{id:"minecraft:jungle_trapdoor"} run scoreboard players set <found_item> variable 1
execute if data entity @s item{id:"minecraft:dark_oak_trapdoor"} run scoreboard players set <found_item> variable 1
execute if data entity @s item{id:"minecraft:acacia_trapdoor"} run scoreboard players set <found_item> variable 1
execute if data entity @s item{id:"minecraft:mangrove_trapdoor"} run scoreboard players set <found_item> variable 1
execute if data entity @s item{id:"minecraft:cherry_trapdoor"} run scoreboard players set <found_item> variable 1
execute if data entity @s item{id:"minecraft:crimson_trapdoor"} run scoreboard players set <found_item> variable 1
execute if data entity @s item{id:"minecraft:warped_trapdoor"} run scoreboard players set <found_item> variable 1
execute if data entity @s item{id:"minecraft:bamboo_trapdoor"} run scoreboard players set <found_item> variable 1
execute if data entity @s item{id:"minecraft:iron_trapdoor"} run scoreboard players set <found_item> variable 1

execute if score <found_item> variable matches 1 summon block_display run function build:custom_blocks/trapdoor_corner/as_display1
execute if score <found_item> variable matches 1 summon block_display run function build:custom_blocks/trapdoor_corner/as_display2
execute if score <found_item> variable matches 0 run function build:custom_blocks/kill_stack

item replace entity @s container.0 with air

#> Post
tag @s remove custom_block.base_new
