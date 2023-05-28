tag @s add source
execute as @e[type=item_display,tag=custom_block.text_display_manager,tag=custom_block.base,distance=..10] at @s if data block ~ ~ ~ Book{id:'minecraft:writable_book'} run function build:textdm/update/main
tag @s remove source

advancement revoke @s only build:detect/interact_with_lectern_with_book_and_quill
