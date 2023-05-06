tag @s add custom_block.rotatable_block
tag @s add custom_block.display

data modify entity @s block_state.Name set from storage build:temp item.id

data modify entity @s block_state.Properties set from storage build:temp item.tag.BlockStateTag
data modify entity @s block_state merge from storage build:temp item.tag.block_state

tp @s ~ ~ ~ ~ ~
data merge entity @s {transformation:{left_rotation:{axis:[1f,0f,0f],angle:1.570796327f},translation:[-0.5f,1f,-0.5f]}}
execute if entity @s[x_rotation=90] run data merge entity @s {transformation:{left_rotation:{axis:[1f,0f,0f],angle:3.141592654f},translation:[-0.5f,1f,0.5f]}}
execute if entity @s[x_rotation=-90] run data merge entity @s {transformation:{left_rotation:{axis:[1f,0f,0f],angle:0f},translation:[-0.5f,0f,-0.5f]}}
tp @s ~ ~ ~ ~ 0

ride @s mount @e[type=item_display,tag=custom_block.base_new,limit=1,sort=nearest]

execute if data entity @s block_state{Name:"minecraft:air"} run tellraw @a[tag=source] {"text":"[Custom Blocks] Invalid block state! Put a valid block in your off-hand.","color":"red"}
execute if data entity @s block_state{Name:"minecraft:air"} on vehicle run function build:custom_blocks/kill_stack
execute if data entity @s block_state{Name:"minecraft:air"} run return 0

setblock ~ ~ ~ barrier
