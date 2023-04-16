item replace entity @s armor.feet with stone
data modify entity @s ArmorItems[0] merge from storage build:itemblock item
execute if predicate build:itemblock/feet_item_is_exception_item run function build:impl/itemblock/convert_item_to_block/correct_exception_items
kill
