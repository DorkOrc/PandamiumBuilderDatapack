data modify storage build:set_block BlockState set value {Properties:{"waterlogged":"false"}}
data modify storage build:set_block BlockState set value {Properties:{"persistent":"true"}}

execute if score <pages> variable matches 0 run data modify storage build:set_block BlockState.Name set from storage build:set_block SelectedItem.id
execute if score <pages> variable matches 0 run data modify storage build:set_block BlockState.Properties set from storage build:set_block SelectedItem.tag.BlockStateTag
execute if score <pages> variable matches 0 run data modify storage build:set_block TileEntityData set from storage build:set_block SelectedItem.tag.BlockEntityTag
execute if score <pages> variable matches 0 if data storage build:set_block SelectedItem.tag.display.Name unless data storage build:set_block SelectedItem.tag.BlockEntityTag.CustomName run data modify storage build:set_block TileEntityData.CustomName set from storage build:set_block SelectedItem.tag.display.Name

execute if score <pages> variable matches 1 run data modify storage build:set_block BlockState.Name set from storage build:set_block pages[0]
execute if score <pages> variable matches 1 run data modify storage build:set_block TileEntityData set from storage build:set_block SelectedItem.tag.BlockEntityTag

data remove storage build:set_block TileEntityData.Command
data remove storage build:set_block TileEntityData.metadata
data remove storage build:set_block TileEntityData.target
data remove storage build:set_block TileEntityData.name
data remove storage build:set_block TileEntityData.pool

execute if data storage build:set_block {BlockState:{Name:"sand"}} run data merge storage build:set_block {BlockState:{Name:"minecraft:sand"}}
execute store success score <is_sand> variable if data storage build:set_block {BlockState:{Name:"minecraft:sand"}}

execute if score <pages> variable matches 0 run function build:triggers/set_block/item_id_to_block_id

execute store success score <pages_blockstates> variable if data storage build:set_block pages[1]
execute if score <pages_blockstates> variable matches 1 run data modify storage build:set_block pages_blockstates set from storage build:set_block pages
execute if score <pages_blockstates> variable matches 1 run data remove storage build:set_block pages_blockstates[0]
execute if score <pages_blockstates> variable matches 1 run function build:triggers/set_block/pages_blockstates_iter

tag @e[type=falling_block] remove set_block
summon falling_block 0 8 0 {Time:1,Tags:["set_block"],DropItem:0b}

data modify entity @e[type=falling_block,tag=set_block,limit=1] BlockState.Name set from storage build:set_block BlockState.Name
data modify entity @e[type=falling_block,tag=set_block,limit=1] BlockState.Properties set from storage build:set_block BlockState.Properties
data modify entity @e[type=falling_block,tag=set_block,limit=1] TileEntityData set from storage build:set_block TileEntityData
data modify storage build:set_block EntityTemp.BlockState set from entity @e[type=falling_block,tag=set_block,limit=1] BlockState
execute if score <pages> variable matches 0 run function build:triggers/set_block/player_direction_blockstates
data modify storage build:set_block Entity.BlockState set from entity @e[type=falling_block,tag=set_block,limit=1] BlockState

function build:triggers/set_block/prepare_entity_area

scoreboard players set <valid_block_id> variable 1
execute if data storage build:set_block {Entity:{BlockState:{Name:"minecraft:sand"}}} unless data storage build:set_block {BlockState:{Name:"minecraft:sand"}} run scoreboard players set <valid_block_id> variable 0
execute if score <valid_block_id> variable matches 0 run tellraw @s [{"text":"[Set Block]","color":"dark_red"},{"text":" Invalid block id!","color":"red"}]
execute if score <valid_block_id> variable matches 0 run kill @e[type=falling_block,limit=1,tag=set_block]

execute if score <valid_block_id> variable matches 1 run function build:triggers/set_block/function_on_falling_block
execute unless entity @e[type=falling_block,tag=set_block,limit=1] run scoreboard players set <valid_block_id> variable 0

execute if score <valid_block_id> variable matches 1 if data storage build:set_block Entity.BlockState.Properties if data storage build:set_block TileEntityData run tellraw @s [{"text":"","color":"green"},{"text":"[Set Block]","color":"dark_green"}," Placed ",{"nbt":"Entity.BlockState.Name","storage":"build:set_block","color":"aqua"}," ",{"text":"[State]","color":"gray","hoverEvent":{"action":"show_text","value":{"nbt":"Entity.BlockState.Properties","storage":"build:set_block","color":"yellow"}}}," ",{"text":"[NBT]","color":"gray","hoverEvent":{"action":"show_text","value":{"nbt":"TileEntityData","storage":"build:set_block","color":"yellow"}}}]
execute if score <valid_block_id> variable matches 1 if data storage build:set_block Entity.BlockState.Properties unless data storage build:set_block TileEntityData run tellraw @s [{"text":"","color":"green"},{"text":"[Set Block]","color":"dark_green"}," Placed ",{"nbt":"Entity.BlockState.Name","storage":"build:set_block","color":"aqua"}," ",{"text":"[State]","color":"gray","hoverEvent":{"action":"show_text","value":{"nbt":"Entity.BlockState.Properties","storage":"build:set_block","color":"yellow"}}}]
execute if score <valid_block_id> variable matches 1 unless data storage build:set_block Entity.BlockState.Properties if data storage build:set_block TileEntityData run tellraw @s [{"text":"","color":"green"},{"text":"[Set Block]","color":"dark_green"}," Placed ",{"nbt":"Entity.BlockState.Name","storage":"build:set_block","color":"aqua"}," ",{"text":"[NBT]","color":"gray","hoverEvent":{"action":"show_text","value":{"nbt":"TileEntityData","storage":"build:set_block","color":"yellow"}}}]
execute if score <valid_block_id> variable matches 1 unless data storage build:set_block Entity.BlockState.Properties unless data storage build:set_block TileEntityData run tellraw @s [{"text":"","color":"green"},{"text":"[Set Block]","color":"dark_green"}," Placed ",{"nbt":"Entity.BlockState.Name","storage":"build:set_block","color":"aqua"},"!"]

execute if score <valid_block_id> variable matches 0 run setblock 0 7 0 bedrock
execute if score <valid_block_id> variable matches 1 run scoreboard players set @s set_block.target 1
execute if score <valid_block_id> variable matches 1 run scoreboard players set <scheduled> set_block.target 1
execute if score <valid_block_id> variable matches 1 run schedule function build:triggers/set_block/clone_block 2t
