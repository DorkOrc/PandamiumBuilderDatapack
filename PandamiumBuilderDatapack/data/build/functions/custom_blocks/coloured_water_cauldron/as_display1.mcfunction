tag @s add custom_block.coloured_water_cauldron
tag @s add custom_block.display

data merge entity @s {transformation:{left_rotation:{axis:[1f,0f,0f],angle:-1.570796327},scale:[40f,40f,0f],translation:[-0.50f,0.9385f,0.5f]},background:2130706432L}
execute store result entity @s background long 1 run scoreboard players get <colour> variable

ride @s mount @e[type=item_display,tag=custom_block.base_new,limit=1,sort=nearest]
