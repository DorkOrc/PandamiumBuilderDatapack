tag @s add custom_block.elevator_button
tag @s add custom_block.display

tag @s add elevator_button

data merge entity @s {width:0.5f,height:0.5f}

ride @s mount @e[type=item_display,tag=custom_block.base_new,limit=1,sort=nearest]
