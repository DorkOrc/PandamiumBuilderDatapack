execute if data entity @s item.tag.pandabuild.text_display_manager{facing:'north'} run setblock ~ ~ ~ lectern[facing=north,has_book=false]
execute if data entity @s item.tag.pandabuild.text_display_manager{facing:'east'} run setblock ~ ~ ~ lectern[facing=east,has_book=false]
execute if data entity @s item.tag.pandabuild.text_display_manager{facing:'south'} run setblock ~ ~ ~ lectern[facing=south,has_book=false]
execute if data entity @s item.tag.pandabuild.text_display_manager{facing:'west'} run setblock ~ ~ ~ lectern[facing=west,has_book=false]
data modify entity @s item.tag.pandabuild.text_display_manager.has_book set value 0b
execute store result score @s custom_block.attr_1 run time query gametime
scoreboard players add @s custom_block.attr_1 50
kill @e[type=item,distance=..2,nbt={Item:{id:'minecraft:writable_book'}},limit=1,sort=nearest]
