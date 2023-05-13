execute store result score <gametime> variable run time query gametime
execute if score @s custom_block.attr_1 <= <gametime> variable run function build:custom_blocks/text_display_manager/tick/replace_lectern_with_book
execute if score @s custom_block.attr_1 <= <gametime> variable run scoreboard players reset @s custom_block.attr_1
