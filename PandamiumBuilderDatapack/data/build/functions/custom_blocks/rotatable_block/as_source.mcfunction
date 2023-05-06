execute if predicate build:custom_blocks/rotatable_block/offhand_invisible_item run tellraw @s {"text":"[Custom Blocks] Invalid block state! Put a valid block in your off-hand.","color":"red"}
execute if predicate build:custom_blocks/rotatable_block/offhand_invisible_item run return 0

tag @s add source

data modify storage build:temp item set value {id:"minecraft:air",Count:0b}
data modify storage build:temp item set from entity @s Inventory[{Slot:-106b}]

execute if data storage build:temp item{id:"minecraft:vine"} unless data storage build:temp item.tag.block_state.Properties run data modify storage build:temp item.tag.block_state.Properties set value {east:"false",north:"false",south:"false",up:"true",west:"false"}
execute if data storage build:temp item{id:"minecraft:glow_lichen"} unless data storage build:temp item.tag.block_state.Properties run data modify storage build:temp item.tag.block_state.Properties set value {down:"true",east:"false",north:"false",south:"false",up:"false",west:"false"}
execute if data storage build:temp item{id:"minecraft:sculk_vein"} unless data storage build:temp item.tag.block_state.Properties run data modify storage build:temp item.tag.block_state.Properties set value {down:"true",east:"false",north:"false",south:"false",up:"false",west:"false"}
execute if predicate build:custom_blocks/rotatable_block/offhand_east_west_item unless data storage build:temp item.tag.block_state.Properties run data modify storage build:temp item.tag.block_state.Properties set value {east:"true",west:"true"}
 
execute if predicate build:custom_blocks/rotatable_block/offhand_upside_down_item rotated as @s positioned ~ ~-0.5 ~ summon item_display run function build:custom_blocks/rotatable_block/as_base
execute unless predicate build:custom_blocks/rotatable_block/offhand_upside_down_item rotated as @s facing ^ ^ ^-1 positioned ~ ~-0.5 ~ summon item_display run function build:custom_blocks/rotatable_block/as_base

tag @s remove source
