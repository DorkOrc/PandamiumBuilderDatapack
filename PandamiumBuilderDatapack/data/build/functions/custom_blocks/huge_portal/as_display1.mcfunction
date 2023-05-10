tag @s add custom_block.huge_portal
tag @s add custom_block.display

data merge entity @s {block_state:{Name:"minecraft:nether_portal"},transformation:{translation:[-2.5f,-0.5f,-0.5f],scale:[5f,5f,1f]}}

execute if entity @a[tag=source,limit=1,y_rotation=-45..44] run tp @s ~ ~ ~ 0 0
execute if entity @a[tag=source,limit=1,y_rotation=45..134] run tp @s ~ ~ ~ 90 0
execute if entity @a[tag=source,limit=1,y_rotation=135..-134] run tp @s ~ ~ ~ 180 0
execute if entity @a[tag=source,limit=1,y_rotation=-135..-45] run tp @s ~ ~ ~ -90 0

ride @s mount @e[type=item_display,tag=custom_block.base_new,limit=1,sort=nearest]
