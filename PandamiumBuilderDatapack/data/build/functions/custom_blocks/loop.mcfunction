execute as @e[type=item_display,tag=custom_block.base] at @s if predicate build:custom_blocks/should_be_removed run function build:custom_blocks/kill_stack
execute as @e[type=item_display,tag=custom_block.base,tag=custom_block.tick] at @s run function build:custom_blocks/tick_entity
