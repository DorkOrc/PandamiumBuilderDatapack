data remove storage build:temp pandabuild
data modify storage build:temp pandabuild set from entity @s item.tag.pandabuild
data modify entity @s item set from block ~ ~ ~ Book
data modify entity @s item.tag.pandabuild set from storage build:temp pandabuild
data modify entity @s item.tag.pandabuild.text_display_manager.has_book set value 1b
