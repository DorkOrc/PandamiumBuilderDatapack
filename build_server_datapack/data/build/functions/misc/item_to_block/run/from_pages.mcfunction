data modify storage build:temp item_to_block.pages set from storage build:temp item_to_block.item.tag.pages
data modify storage build:temp item_to_block.entity.Name set from storage build:temp item_to_block.pages[0]

data remove storage build:temp item_to_block.pages[0]
execute if data storage build:temp item_to_block.pages[0] run function build:misc/item_to_block/run/from_pages/properties
