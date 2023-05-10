tag @s add custom_block.wall_hanging_lantern
tag @s add custom_block.display

data merge entity @s {item:{id:"minecraft:player_head",Count:1b,tag:{SkullOwner:{Id:[I;-1147390271,-2095690846,-1690899200,-2086639510],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvYTRjOGMzZGU2ZTY3YTViMTRlZjU1NDgyOThkMjc4NTJiMTMxMTM3M2QzOTdhN2Q4ZTgzZmU1ZmVmNzMzNTVlMyJ9fX0="}]}}}},transformation:{translation:[0f,0.5f,-0.25f],scale:[0.5f,0.25f,1f]}}

execute if entity @a[tag=source,limit=1,y_rotation=-45..44] run tp @s ~ ~ ~ 180 0
execute if entity @a[tag=source,limit=1,y_rotation=45..134] run tp @s ~ ~ ~ -90 0
execute if entity @a[tag=source,limit=1,y_rotation=135..-134] run tp @s ~ ~ ~ 0 0
execute if entity @a[tag=source,limit=1,y_rotation=-135..-45] run tp @s ~ ~ ~ 90 0

ride @s mount @e[type=item_display,tag=custom_block.base_new,limit=1,sort=nearest]
