tag @s add custom_block.snow_layer
tag @s add custom_block.display

data merge entity @s {block_state:{Name:"minecraft:snow"},transformation:{translation:[-0.5f,0f,-0.5f]}}

ride @s mount @e[type=item_display,tag=custom_block.base_new,limit=1,sort=nearest]
