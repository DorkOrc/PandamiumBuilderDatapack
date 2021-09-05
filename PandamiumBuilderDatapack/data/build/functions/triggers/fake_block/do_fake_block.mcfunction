execute if score <pages> variable matches 0 run data modify storage build:fake_block BlockState.Name set from storage build:fake_block SelectedItem.id
execute if score <pages> variable matches 0 run function build:triggers/fake_block/item_id_to_block_id
execute if score <pages> variable matches 0 run data modify storage build:fake_block BlockState.Properties set from storage build:fake_block SelectedItem.tag.BlockStateTag

execute if score <pages> variable matches 1 run data modify storage build:fake_block BlockState.Name set from storage build:fake_block pages[0]
execute if score <pages> variable matches 1 store success score <pages_blockstates> variable if data storage build:fake_block pages[1]
execute if score <pages> variable matches 1 if score <pages_blockstates> variable matches 1 run data modify storage build:fake_block pages_blockstates set from storage build:fake_block pages
execute if score <pages> variable matches 1 if score <pages_blockstates> variable matches 1 run data remove storage build:fake_block pages_blockstates[0]
execute if score <pages> variable matches 1 if score <pages_blockstates> variable matches 1 run function build:triggers/fake_block/pages_blockstates_iter

execute if data storage build:fake_block {BlockState:{Name:"sand"}} run data merge storage build:fake_block {BlockState:{Name:"minecraft:sand"}}
execute store success score <is_sand> variable if data storage build:fake_block {BlockState:{Name:"minecraft:sand"}}

tag @e[type=falling_block] remove fake_block
summon falling_block 0 8 0 {Time:1,Tags:["fake_block"],DropItem:0b}

data modify entity @e[type=falling_block,tag=fake_block,limit=1] BlockState set from storage build:fake_block BlockState
data modify storage build:fake_block Entity.BlockState set from entity @e[type=falling_block,tag=fake_block,limit=1] BlockState
execute if score <pages> variable matches 0 run function build:triggers/fake_block/player_direction_blockstates
data modify storage build:fake_block Entity.BlockState set from entity @e[type=falling_block,tag=fake_block,limit=1] BlockState

#function build:triggers/fake_block/prepare_entity_area

scoreboard players set <valid_block_id> variable 1
execute if data storage build:fake_block {Entity:{BlockState:{Name:"minecraft:sand"}}} unless data storage build:fake_block {BlockState:{Name:"minecraft:sand"}} run scoreboard players set <valid_block_id> variable 0
function build:triggers/fake_block/block_blacklist
execute if score <valid_block_id> variable matches 0 run tellraw @s [{"text":"[Set Block]","color":"dark_red"},{"text":" Invalid block id!","color":"red"}]

execute if score <valid_block_id> variable matches 1 if data storage build:fake_block Entity.BlockState.Properties run tellraw @s [{"text":"[Set Block]","color":"dark_green"},{"text":" Created Fake Block ","color":"green"},{"nbt":"Entity.BlockState.Name","storage":"build:fake_block","color":"aqua"}," ",{"text":"[State]","color":"gray","hoverEvent":{"action":"show_text","value":{"nbt":"Entity.BlockState.Properties","storage":"build:fake_block","color":"yellow"}}}]
execute if score <valid_block_id> variable matches 1 unless data storage build:fake_block Entity.BlockState.Properties run tellraw @s [{"text":"","color":"green"},{"text":"[Set Block]","color":"dark_green"}," Created Fake Block ",{"nbt":"Entity.BlockState.Name","storage":"build:fake_block","color":"aqua"},"!"]

kill @e[type=falling_block,limit=1,tag=fake_block]

execute if score <valid_block_id> variable matches 1 run summon marker ~ ~ ~ {Tags:["map_specific.fake_block","build.new"],data:{fake_block:{}}}
data modify entity @e[type=marker,limit=1,sort=nearest,tag=map_specific.fake_block,tag=build.new] data.fake_block.BlockState set from storage build:fake_block Entity.BlockState
tag @e[tag=build.new] remove build.new
function pandamium:misc/map_specific/fake_blocks/refresh
