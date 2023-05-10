tag @s add custom_block.wall_hanging_soul_lantern
tag @s add custom_block.display

data merge entity @s {item:{id:"minecraft:player_head",Count:1b,tag:{SkullOwner:{Id:[I;-1411980787,1822377762,-1229545430,-530333453],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvNjQ5YjI0MjMxZTgzN2I1ZTE3NmNhODBiNDM0MzQ2NDdkY2NmYmI3OTJkOTRlMTQ2M2Y2ODIzYjk2NDYzNzFiOCJ9fX0="}]}}}},transformation:{translation:[0f,0.5f,0.125f],scale:[0.5f,0.25f,0.5f]}}

execute if entity @a[tag=source,limit=1,y_rotation=-45..44] run tp @s ~ ~ ~ 180 0
execute if entity @a[tag=source,limit=1,y_rotation=45..134] run tp @s ~ ~ ~ -90 0
execute if entity @a[tag=source,limit=1,y_rotation=135..-134] run tp @s ~ ~ ~ 0 0
execute if entity @a[tag=source,limit=1,y_rotation=-135..-45] run tp @s ~ ~ ~ 90 0

ride @s mount @e[type=item_display,tag=custom_block.base_new,limit=1,sort=nearest]
