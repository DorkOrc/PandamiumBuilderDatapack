tag @s add custom_block.chandelier_chain
tag @s add custom_block.display

data merge entity @s {block_state:{Name:"minecraft:chain",Properties:{axis:"z"}},transformation:{translation:[-0.5f,-0.5f,1.201850425f],scale:[1f,1f,1.201850425f]}}

execute if entity @a[tag=source,limit=1,y_rotation=-45..44] run tp @s ~ ~ ~ 0 -56.30993247
execute if entity @a[tag=source,limit=1,y_rotation=45..134] run tp @s ~ ~ ~ 90 -56.30993247
execute if entity @a[tag=source,limit=1,y_rotation=135..-134] run tp @s ~ ~ ~ 180 -56.30993247
execute if entity @a[tag=source,limit=1,y_rotation=-135..-45] run tp @s ~ ~ ~ -90 -56.30993247

ride @s mount @e[type=item_display,tag=custom_block.base_new,limit=1,sort=nearest]
