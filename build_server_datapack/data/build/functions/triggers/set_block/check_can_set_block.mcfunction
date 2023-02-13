
data remove storage build:set_block pages
data modify storage build:set_block BlockState set value {}
data remove storage build:set_block TileEntityData

scoreboard players set <can_run> variable 1

execute store success score <has_mainhand_item> variable if data entity @s SelectedItem
execute if data entity @s {SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{blingedit:{wand:1b}}}} run scoreboard players set <has_mainhand_item> variable 0
execute store success score <has_offhand_item> variable if data entity @s Inventory[{Slot:-106b}]

execute if score <has_mainhand_item> variable matches 1 run data modify storage build:set_block SelectedItem set from entity @s SelectedItem
execute if score <has_mainhand_item> variable matches 0 if score <has_offhand_item> variable matches 1 run data modify storage build:set_block SelectedItem set from entity @s Inventory[{Slot:-106b}]
execute if score <has_mainhand_item> variable matches 0 if score <has_offhand_item> variable matches 0 run scoreboard players set <can_run> variable 0
execute if score <has_mainhand_item> variable matches 0 if score <has_offhand_item> variable matches 0 run tellraw @s [{"text":"[Set Block]","color":"dark_red"},{"text":" You must hold an item to run this trigger.","color":"red"}]

execute if score <scheduled> set_block.target matches 1 run scoreboard players set <can_run> variable 0
execute if score <scheduled> set_block.target matches 1 run tellraw @s [{"text":"[Set Block]","color":"dark_red"},{"text":" Another player has already scheduled set_block!","color":"red"}]

execute store success score <pages> variable if data storage build:set_block SelectedItem.tag.pages
execute if score <pages> variable matches 1 run data modify storage build:set_block pages set from storage build:set_block SelectedItem.tag.pages
execute if score <pages> variable matches 1 run data modify storage build:set_block first_page set from storage build:set_block SelectedItem.tag.pages[0]

#
execute if score <can_run> variable matches 1 unless score <pages> variable matches 1 unless data storage build:set_block SelectedItem.tag.BlockStateTag run function build:triggers/set_block/special_cases
execute if score <can_run> variable matches 1 if score <pages> variable matches 1 run function build:triggers/set_block/special_cases_written
#

execute if score <can_run> variable matches 1 at @s run function build:triggers/set_block/do_set_block
