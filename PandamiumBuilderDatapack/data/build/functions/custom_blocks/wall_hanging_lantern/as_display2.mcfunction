tag @s add custom_block.wall_hanging_lantern
tag @s add custom_block.display

data merge entity @s {item:{id:"minecraft:player_head",Count:1b,tag:{SkullOwner:{Id:[I;-1411980787,1822377762,-1229545430,-530333453],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvNTA0N2Q1OGM3NDQ5ZTE3ZjBjMWEwMzY4OWIzZTM3YmU1ZjdkNDIxODg0MGEyZGY3NjVhNzBlY2Q2NDI5YzM0NyJ9fX0="}]}}}},transformation:{translation:[0f,0.5f,0.125f],scale:[0.5f,0.25f,0.5f]}}

execute if entity @a[tag=source,limit=1,y_rotation=-45..44] run tp @s ~ ~ ~ 180 0
execute if entity @a[tag=source,limit=1,y_rotation=45..134] run tp @s ~ ~ ~ -90 0
execute if entity @a[tag=source,limit=1,y_rotation=135..-134] run tp @s ~ ~ ~ 0 0
execute if entity @a[tag=source,limit=1,y_rotation=-135..-45] run tp @s ~ ~ ~ 90 0

ride @s mount @e[type=item_display,tag=custom_block.base_new,limit=1,sort=nearest]
