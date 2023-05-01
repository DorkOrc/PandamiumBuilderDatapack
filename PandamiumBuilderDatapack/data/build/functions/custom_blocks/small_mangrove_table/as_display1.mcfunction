tag @s add custom_block.small_mangrove_table
tag @s add custom_block.display

data merge entity @s {block_state:{Name:"minecraft:mangrove_trapdoor"},transformation:{translation:[-0.5f,0.8125f,-0.5f]}}

ride @s mount @e[type=item_display,tag=custom_block.base_new,limit=1,sort=nearest]
