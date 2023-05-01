tag @s add custom_block.sunflower_stem
tag @s add custom_block.display

data merge entity @s {block_state:{Name:"minecraft:sunflower",Properties:{half:"lower"}},transformation:{translation:[-0.5f,0f,-0.5f]}}

ride @s mount @e[type=item_display,tag=custom_block.base_new,limit=1,sort=nearest]
