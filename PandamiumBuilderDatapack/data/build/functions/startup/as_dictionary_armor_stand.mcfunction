kill
item replace entity @s weapon.mainhand with stone

item modify entity @s weapon.mainhand build:get_text_display_manager_config_page
data modify storage build:dictionary custom_blocks.text_display_manager.config_page set from entity @s HandItems[0].tag.text 

item modify entity @s weapon.mainhand build:get_newline
data modify storage build:dictionary newline set from entity @s HandItems[0].tag.text 
