tag @s add custom_block.gravel_path
tag @s add custom_block.display

data merge entity @s {block_state:{Name:"minecraft:gravel"},transformation:{scale:[1f,0.001f,1f],translation:[-0.5f,0.9385f,-0.5f]}}

ride @s mount @e[type=item_display,tag=custom_block.base_new,limit=1,sort=nearest]
