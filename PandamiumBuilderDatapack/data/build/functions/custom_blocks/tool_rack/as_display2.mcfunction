tag @s add custom_block.tool_rack
tag @s add custom_block.display

tp @s ~ ~ ~ ~180 ~
data merge entity @s {block_state:{Name:"minecraft:tripwire_hook"},transformation:{left_rotation:{axis:[0f,0f,1f],angle:3.141592654},translation:[0.3125f,0.9375f,-0.5f]}}

ride @s mount @e[type=item_display,tag=custom_block.base_new,limit=1,sort=nearest]
