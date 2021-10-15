data modify storage build:temp item_to_block.entity.Name set from storage build:temp item_to_block.item.id
data modify storage build:temp item_to_block.entity.Properties set from storage build:temp item_to_block.item.tag.BlockStateTag

execute in pandamium:staff_world run summon armor_stand 0 0 0 {Tags:['item_to_block'],ArmorItems:[{id:stone,Count:1},{},{},{}]}
execute in pandamium:staff_world as @e[x=0,type=armor_stand,tag=item_to_block] run function build:misc/item_to_block/run/from_item/as_marker
