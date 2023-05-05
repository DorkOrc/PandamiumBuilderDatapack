tag @s add custom_block.rotatable_rail
tag @s add custom_block.display

tp @s ~ ~ ~ ~ ~
data merge entity @s {block_state:{Name:"minecraft:rail"},transformation:{left_rotation:{axis:[1f,0f,0f],angle:1.570796327},translation:[-0.5f,1f,-0.5f]}}
execute if entity @s[x_rotation=-90] run data merge entity @s {transformation:{left_rotation:{axis:[1f,0f,0f],angle:3.141592654},translation:[-0.5f,1f,0.5f]}}
tp @s ~ ~ ~ ~ 0

ride @s mount @e[type=item_display,tag=custom_block.base_new,limit=1,sort=nearest]
