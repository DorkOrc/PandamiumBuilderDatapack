tag @s add custom_block.hoglin_feast
tag @s add custom_block.display

item replace entity @s container.0 with player_head{SkullOwner:{Id:[I;-1708633679,-1485094516,-1741113850,1114852347],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvZTJiMzViZGE1ZWJkZjEzNWY0ZTcxY2U0OTcyNmZiZWM1NzM5ZjBhZGVkZjAxYzUxOWUyYWVhN2Y1MTk1MWVhMiJ9fX0="}]},Name:"§lApple"}}
data merge entity @s {transformation:{translation:[0f,2f,0f]}}

execute if entity @a[tag=source,limit=1,y_rotation=-45..44] run tp @s ~ ~ ~ 0 45
execute if entity @a[tag=source,limit=1,y_rotation=45..134] run tp @s ~ ~ ~ 90 45
execute if entity @a[tag=source,limit=1,y_rotation=135..-134] run tp @s ~ ~ ~ 180 45
execute if entity @a[tag=source,limit=1,y_rotation=-135..-45] run tp @s ~ ~ ~ -90 45

ride @s mount @e[type=item_display,tag=custom_block.base_new,limit=1,sort=nearest]
