data remove storage build:fake_block pages
data modify storage build:fake_block BlockState set value {}

scoreboard players set <can_run> variable 1

#storage build:fake_block SelectedItem <- SELECTED ITEM
execute store success score <has_mainhand_item> variable if data entity @s SelectedItem
execute if data entity @s {SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{blingedit:{wand:1b}}}} run scoreboard players set <has_mainhand_item> variable 0
execute store success score <has_offhand_item> variable if data entity @s Inventory[{Slot:-106b}]
execute if score <has_mainhand_item> variable matches 1 run data modify storage build:fake_block SelectedItem set from entity @s SelectedItem
execute if score <has_mainhand_item> variable matches 0 if score <has_offhand_item> variable matches 1 run data modify storage build:fake_block SelectedItem set from entity @s Inventory[{Slot:-106b}]
execute if score <has_mainhand_item> variable matches 0 if score <has_offhand_item> variable matches 0 run scoreboard players set <can_run> variable 0
execute if score <has_mainhand_item> variable matches 0 if score <has_offhand_item> variable matches 0 run tellraw @s [{"text":"[Set Block]","color":"dark_red"},{"text":" You must hold an item to run this trigger.","color":"red"}]

#CHECK IF SelectedItem = "writable_book"
execute store success score <pages> variable if data storage build:fake_block SelectedItem.tag.pages
execute if score <pages> variable matches 1 run data modify storage build:fake_block pages set from storage build:fake_block SelectedItem.tag.pages
execute if score <pages> variable matches 1 run data modify storage build:fake_block first_page set from storage build:fake_block SelectedItem.tag.pages[0]

execute if score <can_run> variable matches 1 at @s align xyz positioned ~0.5 ~ ~0.5 run function build:triggers/fake_block/do_fake_block
