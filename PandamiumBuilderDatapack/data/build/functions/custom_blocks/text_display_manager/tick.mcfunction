execute if data block ~ ~ ~ Book{id:'minecraft:writable_book'} run scoreboard players set @s custom_block.attr_1 0
execute if score @s custom_block.attr_1 <= <gametime> variable at @s if block ~ ~ ~ lectern run function build:custom_blocks/text_display_manager/tick/replace_lectern_with_book
execute at @s unless block ~ ~ ~ lectern unless block ~ ~ ~ air run scoreboard players set @s custom_block.attr_1 0
