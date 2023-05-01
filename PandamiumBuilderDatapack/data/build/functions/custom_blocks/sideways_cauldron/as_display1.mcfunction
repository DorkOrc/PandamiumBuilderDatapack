tag @s add custom_block.sideways_cauldron
tag @s add custom_block.display

tp @s ~ ~ ~ ~ ~
data merge entity @s {block_state:{Name:"minecraft:cauldron"},transformation:{left_rotation:{axis:[1f,0f,0f],angle:1.570796327},translation:[-0.5f,1f,-0.5f]}}

ride @s mount @e[type=item_display,tag=custom_block.base_new,limit=1,sort=nearest]
