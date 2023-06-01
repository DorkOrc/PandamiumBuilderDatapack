execute if entity @s[tag=custom_block.huge_pumpkin] run function build:custom_blocks/huge_pumpkin/tick
execute if entity @s[tag=custom_block.giant_pumpkin] run function build:custom_blocks/giant_pumpkin/tick
execute if entity @s[tag=custom_block.text_display_manager] run function build:custom_blocks/text_display_manager/tick
execute if entity @s[tag=custom_block.hoglin_feast] run function build:custom_blocks/hoglin_feast/tick
execute if entity @s[tag=custom_block.hoglin_feast_hide_username] unless predicate build:is_riding_an_entity run kill
