scoreboard players reset @s custom_block.attr_1

data modify entity @s item.tag.pandabuild.text_display_manager.has_book set value 1b

execute if data block ~ ~ ~ Book{id:'minecraft:writable_book'} run data modify entity @s item.tag.pages set from block ~ ~ ~ Book.tag.pages
execute if data block ~ ~ ~ Book{id:'minecraft:writable_book'} run return 0

execute if data entity @s item.tag.pandabuild.text_display_manager{facing:'north'} run setblock ~ ~ ~ lectern[facing=north,has_book=true]
execute if data entity @s item.tag.pandabuild.text_display_manager{facing:'east'} run setblock ~ ~ ~ lectern[facing=east,has_book=true]
execute if data entity @s item.tag.pandabuild.text_display_manager{facing:'south'} run setblock ~ ~ ~ lectern[facing=south,has_book=true]
execute if data entity @s item.tag.pandabuild.text_display_manager{facing:'west'} run setblock ~ ~ ~ lectern[facing=west,has_book=true]
data modify block ~ ~ ~ Book set from entity @s item
data remove block ~ ~ ~ Book.pandabuild.text_display_manager
