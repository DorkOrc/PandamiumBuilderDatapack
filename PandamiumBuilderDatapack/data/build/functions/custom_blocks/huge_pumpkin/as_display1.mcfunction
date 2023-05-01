tag @s add custom_block.huge_pumpkin
tag @s add custom_block.display

data merge entity @s {block_state:{Name:"minecraft:pumpkin"},transformation:{scale:[2f,2f,2f],translation:[-0.5f,0f,-0.5f]}}

ride @s mount @e[type=item_display,tag=custom_block.base_new,limit=1,sort=nearest]
