tag @s add custom_block.sideways_composter
tag @s add custom_block.display

tp @s ~ ~ ~ ~ ~
data merge entity @s {block_state:{Name:"minecraft:composter"},transformation:{right_rotation:{axis:[0f,0f,1f],angle:1.570796327},translation:[-0.5f,0f,-0.5f],left_rotation:{axis:[0f,1f,0f],angle:1.570796327}}}

ride @s mount @e[type=item_display,tag=custom_block.base_new,limit=1,sort=nearest]
