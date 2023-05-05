tag @s add custom_block.block_on_slab
tag @s add custom_block.display

data modify entity @s[type=item_display] item set from storage build:temp item
data modify entity @s[type=block_display] block_state.Name set from storage build:temp item.id
data modify entity @s[type=block_display] block_state.Properties set from storage build:temp item.tag.BlockStateTag
data modify entity @s[type=block_display] block_state set from storage build:temp item.tag.block_state

data merge entity @s[type=item_display] {transformation:{translation:[0f,0.5f,0f]}}
data merge entity @s[type=block_display] {transformation:{translation:[-0.5f,0f,-0.5f]}}

execute if entity @a[tag=source,limit=1,y_rotation=-45..44] run tp @s ~ ~ ~ 0 0
execute if entity @a[tag=source,limit=1,y_rotation=45..134] run tp @s ~ ~ ~ 90 0
execute if entity @a[tag=source,limit=1,y_rotation=135..-134] run tp @s ~ ~ ~ -180 0
execute if entity @a[tag=source,limit=1,y_rotation=-135..-44] run tp @s ~ ~ ~ -90 0
execute rotated as @a[tag=source,limit=1,predicate=build:sneaking] run tp @s ~ ~ ~ ~ 0

execute if data entity @s block_state{Name:"minecraft:air"} on vehicle run function build:custom_blocks/kill_stack

ride @s mount @e[type=item_display,tag=custom_block.base_new,limit=1,sort=nearest]
