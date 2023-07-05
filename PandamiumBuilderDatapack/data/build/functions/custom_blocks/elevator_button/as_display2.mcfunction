tag @s add custom_block.elevator_button
tag @s add custom_block.display

data merge entity @s {item:{id:'minecraft:player_head',Count:1b},transformation:{translation:[0f,0.5f,0.049f],scale:[1f,1f,0.01f]}}
execute if entity @a[tag=source,limit=1,predicate=build:custom_blocks/elevator_button/offhand_player_head] run item replace entity @s container.0 from entity @a[tag=source,limit=1] weapon.offhand

execute if entity @a[tag=source,limit=1,y_rotation=-45..44] run tp @s ~ ~ ~ 0 0
execute if entity @a[tag=source,limit=1,y_rotation=45..134] run tp @s ~ ~ ~ 90 0
execute if entity @a[tag=source,limit=1,y_rotation=135..-134] run tp @s ~ ~ ~ 180 0
execute if entity @a[tag=source,limit=1,y_rotation=-135..-45] run tp @s ~ ~ ~ -90 0

ride @s mount @e[type=item_display,tag=custom_block.base_new,limit=1,sort=nearest]
