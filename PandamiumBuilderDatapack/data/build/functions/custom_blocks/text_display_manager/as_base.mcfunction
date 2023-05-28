#> Pre
tag @s add custom_block.base_new

#> Main
tag @s add custom_block.text_display_manager
tag @s add custom_block.base
tag @s add custom_block.tick

data merge entity @s {transformation:{scale:[0f,0f,0f]}}
item replace entity @s container.0 with stone
data modify entity @s item set from block ~ ~ ~ Book

execute if entity @a[tag=source,limit=1,y_rotation=-45..44] run tp @s ~ ~ ~ 180 0
execute if entity @a[tag=source,limit=1,y_rotation=45..134] run tp @s ~ ~ ~ -90 0
execute if entity @a[tag=source,limit=1,y_rotation=135..-134] run tp @s ~ ~ ~ 0 0
execute if entity @a[tag=source,limit=1,y_rotation=-135..-45] run tp @s ~ ~ ~ 90 0

data modify entity @s[y_rotation=180] item.tag.pandabuild.text_display_manager.facing set value 'north'
data modify entity @s[y_rotation=-90] item.tag.pandabuild.text_display_manager.facing set value 'east'
data modify entity @s[y_rotation=0] item.tag.pandabuild.text_display_manager.facing set value 'south'
data modify entity @s[y_rotation=90] item.tag.pandabuild.text_display_manager.facing set value 'west'
data modify entity @s item.tag.pandabuild.text_display_manager.has_book set value 1b

function build:textdm/update/main

#> Post
tag @s remove custom_block.base_new
