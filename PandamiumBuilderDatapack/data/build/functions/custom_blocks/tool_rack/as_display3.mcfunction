tag @s add custom_block.tool_rack
tag @s add custom_block.display

#
item replace entity @s container.0 from entity @a[tag=source,limit=1] weapon.offhand
scoreboard players set <is_pickaxe> variable 1
execute unless data entity @s item{id:"minecraft:wooden_pickaxe"} unless data entity @s item{id:"minecraft:stone_pickaxe"} unless data entity @s item{id:"minecraft:iron_pickaxe"} unless data entity @s item{id:"minecraft:iron_pickaxe"} unless data entity @s item{id:"minecraft:golden_pickaxe"} unless data entity @s item{id:"minecraft:diamond_pickaxe"} unless data entity @s item{id:"minecraft:netherite_pickaxe"} run scoreboard players set <is_pickaxe> variable 0
scoreboard players set <is_sword> variable 1
execute unless data entity @s item{id:"minecraft:wooden_sword"} unless data entity @s item{id:"minecraft:stone_sword"} unless data entity @s item{id:"minecraft:iron_sword"} unless data entity @s item{id:"minecraft:iron_sword"} unless data entity @s item{id:"minecraft:golden_sword"} unless data entity @s item{id:"minecraft:diamond_sword"} unless data entity @s item{id:"minecraft:netherite_sword"} run scoreboard players set <is_sword> variable 0
execute if data entity @s item{id:"minecraft:barrier"} run function build:custom_blocks/kill_stack
execute if data entity @s item{id:"minecraft:barrier"} run return 0
execute if score <is_pickaxe> variable matches 0 if score <is_sword> variable matches 0 store success score <is_pickaxe> variable run item replace entity @s container.0 with diamond_pickaxe

#

tp @s ~ ~ ~ ~180 ~
execute if score <is_pickaxe> variable matches 1 run data merge entity @s {transformation:{left_rotation:{axis:[0f,0f,1f],angle:-0.7853981634},translation:[0.04419417382f,0.35f,0.2f]}}
execute if score <is_sword> variable matches 1 run data merge entity @s {transformation:{left_rotation:{axis:[0f,0f,1f],angle:2.35619449},translation:[0f,0.3f,0.2f]}}

ride @s mount @e[type=item_display,tag=custom_block.base_new,limit=1,sort=nearest]
