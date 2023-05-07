function build:custom_blocks/pre

tag @p[nbt={SelectedItem:{id:"minecraft:barrel",tag:{pandabuild:{custom_block:"block_on_slab"}}}}] add source

data remove storage build:temp item
data modify storage build:temp item set from entity @a[tag=source,limit=1] Inventory[{Slot:-106b}]

execute unless data storage build:temp item run tellraw @a[tag=source,limit=1] {"text":"[Custom Blocks] Invalid block state! Put a valid block in your off-hand.","color":"red"}
execute unless data storage build:temp item run tag @a remove source
execute unless data storage build:temp item run setblock ~ ~ ~ air
execute unless data storage build:temp item run return 0

execute positioned ~ ~ ~ summon item_display run function build:custom_blocks/block_on_slab/as_base

setblock ~ ~ ~ stone_slab

tag @a remove source
