# run IN pandamium:staff_world

data remove storage build:temp SelectedItem

data modify storage build:temp SelectedItem set from entity @s SelectedItem
execute unless data storage build:temp {SelectedItem:{id:"minecraft:writable_book"}} run data modify storage build:temp SelectedItem set from entity @s Inventory[{Slot:-106b}]
execute store success score <holding_book_and_quill> variable if data storage build:temp {SelectedItem:{id:'minecraft:writable_book'}}

execute store success score <can_run> variable unless score <holding_book_and_quill> variable matches 0

execute if score <can_run> variable matches 1 run setblock 0 0 0 shulker_box
execute if score <can_run> variable matches 1 run item replace block 0 0 0 container.0 with player_head
execute if score <can_run> variable matches 1 run data modify block 0 0 0 Items[0].tag.SkullOwner set from storage build:temp SelectedItem.tag.pages[0]
execute if score <can_run> variable matches 1 run loot give @s mine 0 0 0 air{drop_contents:1b}

execute if score <can_run> variable matches 1 run tellraw @s [{"text":"[Get Head]","color":"dark_green"},[{"text":" Gave you ","color":"green"},[{"storage":"build:temp","nbt":"SelectedItem.tag.pages[0]","color":"yellow"},"'s Head"],"!"]]

scoreboard players set <displayed_error> variable 0
execute if score <can_run> variable matches 0 unless score <displayed_error> variable matches 1 store success score <displayed_error> variable if score <holding_book_and_quill> variable matches 0 run tellraw @s [{"text":"[Build]","color":"dark_red"},{"text":" Hold a book and quill to perform this action!","color":"red"}]
