tag @s add custom_block.tool_rack
tag @s add custom_block.display

tp @s ~ ~ ~ ~180 ~
data merge entity @s {item:{id:"minecraft:diamond_pickaxe",Count:1b},transformation:{left_rotation:{axis:[0f,0f,1f],angle:-0.7853981634},translation:[0.06f,0.35f,0.2f]}}

ride @s mount @e[type=item_display,tag=custom_block.base_new,limit=1,sort=nearest]
