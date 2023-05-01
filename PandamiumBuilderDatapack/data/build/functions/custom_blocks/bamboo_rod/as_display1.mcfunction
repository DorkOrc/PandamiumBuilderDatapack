tag @s add custom_block.bamboo_rod
tag @s add custom_block.display

data merge entity @s {block_state:{Name:"minecraft:bamboo"},transformation:{scale:[1f,0.998f,1f],translation:[-0.5f,0.001f,-0.5f]}}

ride @s mount @e[type=item_display,tag=custom_block.base_new,limit=1,sort=nearest]
