execute on passengers run function build:custom_blocks/kill_stack
kill
execute if entity @s[type=item_display,tag=custom_block.base,tag=custom_block.huge_pumpkin] run fill ~ ~ ~ ~1 ~1 ~1 air replace barrier
execute if entity @s[type=item_display,tag=custom_block.base,tag=custom_block.giant_pumpkin] run fill ~-1 ~ ~-1 ~1 ~2 ~1 air replace barrier
