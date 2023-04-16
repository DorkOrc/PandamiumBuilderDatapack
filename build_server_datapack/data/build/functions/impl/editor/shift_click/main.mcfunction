execute at @s run playsound entity.item_frame.add_item master @s

execute in build:storage run setblock 0 0 0 barrel
execute in build:storage run item replace block 0 0 0 container.0 from entity @s weapon.mainhand

data remove storage build:io item
execute in build:storage run data modify storage build:io item set from block 0 0 0 Items[0]
execute if data storage build:io item run function build:utils/convert_item_to_block
execute unless data storage build:io item run data modify storage build:itemblock block_state set value {Name:'minecraft:air'}

execute if score @s editor.left_click matches 1.. if data storage build:io block_state run function build:impl/editor/shift_click/set_as_block_1
execute if score @s editor.right_click matches 1.. unless score @s editor.left_click matches 1.. if data storage build:io block_state run function build:impl/editor/shift_click/set_as_block_2
