tag @s add custom_block.wall_diagonal
tag @s add custom_block.display

data modify entity @s block_state.Name set from storage build:temp item.id
data modify entity @s block_state.Properties set value {east:"low",west:"low",up:"false"}

data merge entity @s {transformation:{translation:[-0.5f,-0.499f,0.2071067812f],scale:[1f,0.998f,1f]}}

execute if entity @a[tag=source,limit=1,y_rotation=-90..-1] run tp @s ~ ~ ~ -45 0
execute if entity @a[tag=source,limit=1,y_rotation=0..89] run tp @s ~ ~ ~ 45 0
execute if entity @a[tag=source,limit=1,y_rotation=90..179] run tp @s ~ ~ ~ 135 0
execute if entity @a[tag=source,limit=1,y_rotation=180..-89] run tp @s ~ ~ ~ -135 0

execute if data entity @s block_state{Name:"minecraft:air"} on vehicle run function build:custom_blocks/kill_stack

ride @s mount @e[type=item_display,tag=custom_block.base_new,limit=1,sort=nearest]
