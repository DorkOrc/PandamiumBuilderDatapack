scoreboard players set <do_kill> variable 1

execute if entity @s[type=item_display,tag=custom_block.base,tag=custom_block.text_display_manager] run function build:custom_blocks/text_display_manager/try_kill/main
execute if entity @s[type=item_display,tag=custom_block.base,tag=custom_block.huge_pumpkin] run fill ~ ~ ~ ~1 ~1 ~1 air replace barrier
execute if entity @s[type=item_display,tag=custom_block.base,tag=custom_block.giant_pumpkin] run fill ~-1 ~ ~-1 ~1 ~2 ~1 air replace barrier

execute if score <do_kill> variable matches 1 run function build:custom_blocks/kill_stack
