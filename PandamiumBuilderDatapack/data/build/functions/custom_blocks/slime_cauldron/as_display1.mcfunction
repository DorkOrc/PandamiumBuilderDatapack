tag @s add custom_block.slime_cauldron
tag @s add custom_block.display

data merge entity @s {block_state:{Name:"minecraft:slime_block"},transformation:{scale:[0.998f,0.001f,0.998f],translation:[-0.499f,0.9365f,-0.499f]}}

ride @s mount @e[type=item_display,tag=custom_block.base_new,limit=1,sort=nearest]
