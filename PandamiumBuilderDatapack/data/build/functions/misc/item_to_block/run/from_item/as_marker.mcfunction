data modify entity @s ArmorItems[0].id set from storage build:temp item_to_block.item.id
execute if predicate build:item_to_block/feet_slot_is_exception_item run function build:misc/item_to_block/run/from_item/exception_item

tellraw @a {"nbt":"ArmorItems[0]","entity":"@s"}
execute if predicate build:item_to_block/feet_slot_is_exception_item run say 1
execute unless predicate build:item_to_block/feet_slot_is_exception_item run say 0

kill
