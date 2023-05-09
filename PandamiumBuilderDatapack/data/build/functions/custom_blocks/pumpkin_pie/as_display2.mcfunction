tag @s add custom_block.pumpkin_pie
tag @s add custom_block.display

data merge entity @s {item:{id:"minecraft:player_head",Count:1b,tag:{SkullOwner:{Id:[I;-643718450,1560364178,-1781680161,-524581308],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvOGU3MjQwNzkyNWNkOWVmNmY4M2M5ZDA0YmE3MmYxODI4MDM5OGY1Y2RhYzY4ZmM4MDEzOWRhNTcwOTFmODhhZSJ9fX0="}]}}}},transformation:{translation:[-0.125f,-0.25f,0f],scale:[0.5f,0.5f,1f]}}

execute if entity @a[tag=source,limit=1,y_rotation=-45..44] run tp @s ~ ~ ~ 0 0
execute if entity @a[tag=source,limit=1,y_rotation=45..134] run tp @s ~ ~ ~ 90 0
execute if entity @a[tag=source,limit=1,y_rotation=135..-134] run tp @s ~ ~ ~ 180 0
execute if entity @a[tag=source,limit=1,y_rotation=-135..-45] run tp @s ~ ~ ~ -90 0

ride @s mount @e[type=item_display,tag=custom_block.base_new,limit=1,sort=nearest]
