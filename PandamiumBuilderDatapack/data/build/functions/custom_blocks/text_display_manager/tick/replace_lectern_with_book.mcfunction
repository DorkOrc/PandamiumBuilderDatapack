execute if data entity @s item.tag.pandabuild.text_display_manager{facing:'north'} run setblock ~ ~ ~ lectern[facing=north,has_book=true]
execute if data entity @s item.tag.pandabuild.text_display_manager{facing:'east'} run setblock ~ ~ ~ lectern[facing=east,has_book=true]
execute if data entity @s item.tag.pandabuild.text_display_manager{facing:'south'} run setblock ~ ~ ~ lectern[facing=south,has_book=true]
execute if data entity @s item.tag.pandabuild.text_display_manager{facing:'west'} run setblock ~ ~ ~ lectern[facing=west,has_book=true]
data modify entity @s item.tag.pandabuild.text_display_manager.has_book set value 1b
data modify block ~ ~ ~ Book set from entity @s item
data remove block ~ ~ ~ Book.pandabuild.text_display_manager
scoreboard players reset @s custom_block.attr_1
