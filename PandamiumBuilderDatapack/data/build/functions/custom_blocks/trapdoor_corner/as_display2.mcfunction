tag @s add custom_block.trapdoor_corner
tag @s add custom_block.display

data modify entity @s block_state.Name set from storage build:temp item.id
data merge entity @s {block_state:{Properties:{facing:"east",half:"bottom",open:"true"}},transformation:{translation:[-0.5f,-0.4999f,-0.5f],scale:[1f,0.9998f,1f]}}

execute if entity @a[tag=source,limit=1,y_rotation=0..89] run tp @s ~ ~ ~ 0 0
execute if entity @a[tag=source,limit=1,y_rotation=90..179] run tp @s ~ ~ ~ 90 0
execute if entity @a[tag=source,limit=1,y_rotation=-180..-90] run tp @s ~ ~ ~ 180 0
execute if entity @a[tag=source,limit=1,y_rotation=-90..-1] run tp @s ~ ~ ~ -90 0

ride @s mount @e[type=item_display,tag=custom_block.base_new,limit=1,sort=nearest]
