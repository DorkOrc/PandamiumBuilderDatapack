function build:custom_blocks/pre

tag @p[nbt={SelectedItem:{id:"minecraft:barrel",tag:{pandabuild:{custom_block:"trapdoor_corner"}}}}] add source

scoreboard players set <offhand_trapdoor_item> variable 0
execute store success score <offhand_trapdoor_item> variable as @a[tag=source,limit=1] if predicate build:custom_blocks/trapdoor_corner/offhand_trapdoor_item

execute if score <offhand_trapdoor_item> variable matches 0 run tellraw @a[tag=source,limit=1] {"text":"[Custom Blocks] Invalid block state! Put a valid trapdoor block in your off-hand.","color":"red"}
execute if score <offhand_trapdoor_item> variable matches 0 run tag @a remove source
execute if score <offhand_trapdoor_item> variable matches 0 run setblock ~ ~ ~ air
execute if score <offhand_trapdoor_item> variable matches 0 run return 0

data remove storage build:temp item
data modify storage build:temp item set from entity @a[tag=source,limit=1] Inventory[{Slot:-106b}]

execute positioned ~ ~ ~ summon item_display run function build:custom_blocks/trapdoor_corner/as_base

setblock ~ ~ ~ barrier

tag @a remove source
