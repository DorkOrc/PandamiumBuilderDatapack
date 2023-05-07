tag @s add custom_block.hay_carpet
tag @s add custom_block.display

data merge entity @s {block_state:{Name:"minecraft:hay_block"},transformation:{translation:[-0.4999f,-0.001f,-0.4999f],scale:[0.9998f,0.0645f,0.9998f]}}

ride @s mount @e[type=item_display,tag=custom_block.base_new,limit=1,sort=nearest]
