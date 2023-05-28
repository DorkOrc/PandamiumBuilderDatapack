tag @s add source
execute as @e[type=item_display,tag=custom_block.base,tag=custom_block.text_display_manager,limit=1,sort=nearest] at @s run function build:textdm/update/main
tag @s remove source
