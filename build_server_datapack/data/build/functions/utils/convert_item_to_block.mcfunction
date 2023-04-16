data remove storage build:itemblock item

data modify storage build:itemblock item.id set from storage build:io item.id
data modify storage build:itemblock item.Count set from storage build:io item.Count
data modify storage build:itemblock item.tag set from storage build:io item.tag

execute if data storage build:io item run function build:impl/itemblock/convert_item_to_block/main
execute if data storage build:itemblock block_state run data modify storage build:io block_state set from storage build:itemblock block_state
