execute if data entity @s item.tag.pandabuild.text_display_manager.facing if data entity @s item.tag.pandabuild.text_display_manager{has_book:1b} at @s run function build:custom_blocks/text_display_manager/try_kill/replace_lectern
execute at @s if block ~ ~ ~ lectern run scoreboard players set <do_kill> variable 0
