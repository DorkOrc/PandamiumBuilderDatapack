tag @s add source
execute as @e[type=text_display,tag=custom_block.text_display_manager,distance=..10] at @s run function build:custom_blocks/text_display_manager/update_display
tag @s remove source

advancement revoke @s only build:detect/interact_with_lectern_with_book_and_quill
