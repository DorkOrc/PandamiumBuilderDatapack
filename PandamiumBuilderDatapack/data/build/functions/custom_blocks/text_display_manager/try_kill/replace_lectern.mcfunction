execute if data entity @s item.tag.pandabuild.text_display_manager{facing:'north'} if block ~ ~ ~ air run setblock ~ ~ ~ lectern[facing=north,has_book=false]
execute if data entity @s item.tag.pandabuild.text_display_manager{facing:'east'} if block ~ ~ ~ air run setblock ~ ~ ~ lectern[facing=east,has_book=false]
execute if data entity @s item.tag.pandabuild.text_display_manager{facing:'south'} if block ~ ~ ~ air run setblock ~ ~ ~ lectern[facing=south,has_book=false]
execute if data entity @s item.tag.pandabuild.text_display_manager{facing:'west'} if block ~ ~ ~ air run setblock ~ ~ ~ lectern[facing=west,has_book=false]

data modify entity @s item.tag.pandabuild.text_display_manager.has_book set value 0b
execute unless score @s custom_block.attr_1 matches 0.. store result score @s custom_block.attr_1 run time query gametime
scoreboard players add @s custom_block.attr_1 50

execute if block ~ ~ ~ lectern run kill @e[type=item,distance=..2,nbt={Item:{id:'minecraft:writable_book'}},limit=1,sort=nearest]
