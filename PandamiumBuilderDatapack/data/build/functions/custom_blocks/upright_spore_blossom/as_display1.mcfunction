tag @s add custom_block.upright_spore_blossom
tag @s add custom_block.display

data merge entity @s {block_state:{Name:"minecraft:spore_blossom"},transformation:{left_rotation:{axis:[0f,0f,1f],angle:3.141592654},translation:[0.5f,1f,-0.5f]}}

ride @s mount @e[type=item_display,tag=custom_block.base_new,limit=1,sort=nearest]
