# run AT @s

data modify storage build:temp NBT set from entity @s
data remove storage build:temp item_to_block.item

# get held item
execute if data storage build:temp NBT.SelectedItem run data modify storage build:temp item_to_block.item set from storage build:temp NBT.SelectedItem
execute unless data storage build:temp NBT.SelectedItem if data storage build:temp NBT.Inventory[{Slot:-106b}] run data modify storage build:temp item_to_block.item set from storage build:temp NBT.Inventory[{Slot:-106b}]

scoreboard players set <can_run> variable 1
execute unless data storage build:temp NBT.SelectedItem unless data storage build:temp NBT.Inventory[{Slot:-106b}] run tellraw @s "no item in hands"
execute unless data storage build:temp NBT.SelectedItem unless data storage build:temp NBT.Inventory[{Slot:-106b}] run scoreboard players set <can_run> variable 0

# convert item to block
execute if score <can_run> variable matches 1 run function build:misc/item_to_block/item_to_block
execute unless data storage build:temp item_to_block.block run tellraw @s "invalid item id"
execute unless data storage build:temp item_to_block.block run scoreboard players set <can_run> variable 0

# set block
execute if score <can_run> variable matches 1 run function build:triggers/set_block2/prepare_entity_area

execute if score <can_run> variable matches 1 run summon falling_block 0 8 0 {Time:1,Tags:['set_block']}
execute if score <can_run> variable matches 1 run data modify entity @e[type=falling_block,tag=set_block,limit=1] BlockState set from storage build:temp item_to_block.block

execute if score <can_run> variable matches 1 run scoreboard players set @s set_block.target 1
execute if score <can_run> variable matches 1 run scoreboard players set <scheduled> set_block.target 1
execute if score <can_run> variable matches 1 run schedule function build:triggers/set_block2/clone_block 2t
