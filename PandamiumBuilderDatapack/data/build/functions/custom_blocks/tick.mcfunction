execute store result score <gametime> variable run time query gametime
execute as @e[type=item_display,tag=custom_block.tick] at @s run function build:custom_blocks/tick_entity
execute as @e[type=item_display,tag=custom_block.base] at @s if predicate build:custom_blocks/should_be_removed run function build:custom_blocks/try_kill
