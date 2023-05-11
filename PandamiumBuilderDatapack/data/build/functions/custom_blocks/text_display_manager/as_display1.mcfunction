tag @s add custom_block.text_display_manager
tag @s add custom_block.display

data merge entity @s {text:'{"text":"TEXT"}',transformation:{translation:[0f,1.5f,0f],scale:[1f,1f,1.0f]}}

execute if entity @a[tag=source,limit=1,y_rotation=-45..44] run tp @s ~ ~ ~ 180 0
execute if entity @a[tag=source,limit=1,y_rotation=45..134] run tp @s ~ ~ ~ -90 0
execute if entity @a[tag=source,limit=1,y_rotation=135..-134] run tp @s ~ ~ ~ 0 0
execute if entity @a[tag=source,limit=1,y_rotation=-135..-45] run tp @s ~ ~ ~ 90 0

function build:custom_blocks/text_display_manager/update_display

ride @s mount @e[type=item_display,tag=custom_block.base_new,limit=1,sort=nearest]
