data modify storage build:itemblock conversion_info set value {block_state:{},nbt:{}}
data modify storage build:itemblock conversion_info.block_state.Name set from storage build:itemblock item.id
execute if data storage build:itemblock item.tag.block_state.Name run data modify storage build:itemblock conversion_info.block_state.Name set from storage build:itemblock item.tag.block_state.Name
execute if data storage build:itemblock item.tag.BlockStateTag run data modify storage build:itemblock conversion_info.block_state.Properties set from storage build:itemblock item.tag.BlockStateTag
execute if data storage build:itemblock item.tag.block_state.Properties run data modify storage build:itemblock conversion_info.block_state.Properties set from storage build:itemblock item.tag.block_state.Properties
execute if data storage build:itemblock item.tag run data modify storage build:itemblock conversion_info.nbt set from storage build:itemblock item.tag
execute if data storage build:itemblock item.tag.BlockEntityTag run data modify storage build:itemblock conversion_info.nbt merge from storage build:itemblock item.tag.BlockEntityTag

data modify storage build:itemblock block_state set from storage build:itemblock conversion_info.block_state
execute in build:storage summon armor_stand run function build:impl/itemblock/convert_item_to_block/as_armor_stand

execute in build:storage positioned 0 -16 0 summon falling_block run function build:impl/itemblock/convert_item_to_block/as_falling_block
execute if data storage build:itemblock block_state{Name:'minecraft:sand'} unless data storage build:itemblock conversion_info.block_state{Name:'minecraft:sand'} run data remove storage build:itemblock block_state
