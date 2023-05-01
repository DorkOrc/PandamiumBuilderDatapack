tag @s add custom_block.giant_pumpkin
tag @s add custom_block.display

data merge entity @s {block_state:{Name:"minecraft:pumpkin"},transformation:{scale:[3f,3f,3f],translation:[-1.5f,0f,-1.5f]}}

ride @s mount @e[type=item_display,tag=custom_block.base_new,limit=1,sort=nearest]
