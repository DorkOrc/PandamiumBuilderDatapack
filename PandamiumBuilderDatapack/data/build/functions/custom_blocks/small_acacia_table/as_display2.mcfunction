tag @s add custom_block.small_acacia_table
tag @s add custom_block.display

data merge entity @s {block_state:{Name:"minecraft:stripped_acacia_log"},transformation:{scale:[0.998f,0.1895f,0.998f],translation:[-0.499f,0.8115f,-0.499f]}}

ride @s mount @e[type=item_display,tag=custom_block.base_new,limit=1,sort=nearest]
