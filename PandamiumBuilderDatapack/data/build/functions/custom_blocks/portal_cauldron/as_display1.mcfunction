tag @s add custom_block.portal_cauldron
tag @s add custom_block.display

data merge entity @s {block_state:{Name:"minecraft:nether_portal"},transformation:{scale:[0.998f,0.998f,0f],left_rotation:{axis:[1f,0f,0f],angle:1.570796327},translation:[-0.499f,0.9365f,-0.499f]}}

ride @s mount @e[type=item_display,tag=custom_block.base_new,limit=1,sort=nearest]
