data modify storage build:temp Inventory set from entity @s Inventory
data remove storage build:temp Inventory[{id:"minecraft:writable_book"}]

data modify storage build:temp InventoryBooks set value []
data modify storage build:temp InventoryBooks append from entity @s Inventory[{id:"minecraft:writable_book"}]

execute if data storage build:temp InventoryBooks[0] run function build:misc/update_all_writable_book_lores_

execute in pandamium:staff_world run setblock 0 0 0 shulker_box
execute in pandamium:staff_world run data modify block 0 0 0 Items set from storage build:temp Inventory
execute in pandamium:staff_world run loot replace entity @s container.0 mine 0 0 0 air{drop_contents:1b}

data modify storage build:temp Inventory2 set value []
data modify storage build:temp Inventory2 append from storage build:temp Inventory[{Slot:27b}]
data modify storage build:temp Inventory2 append from storage build:temp Inventory[{Slot:28b}]
data modify storage build:temp Inventory2 append from storage build:temp Inventory[{Slot:29b}]
data modify storage build:temp Inventory2 append from storage build:temp Inventory[{Slot:30b}]
data modify storage build:temp Inventory2 append from storage build:temp Inventory[{Slot:31b}]
data modify storage build:temp Inventory2 append from storage build:temp Inventory[{Slot:32b}]
data modify storage build:temp Inventory2 append from storage build:temp Inventory[{Slot:33b}]
data modify storage build:temp Inventory2 append from storage build:temp Inventory[{Slot:34b}]
data modify storage build:temp Inventory2 append from storage build:temp Inventory[{Slot:35b}]
data modify storage build:temp Inventory2[{Slot:27b}].Slot set value 0b
data modify storage build:temp Inventory2[{Slot:28b}].Slot set value 1b
data modify storage build:temp Inventory2[{Slot:29b}].Slot set value 2b
data modify storage build:temp Inventory2[{Slot:30b}].Slot set value 3b
data modify storage build:temp Inventory2[{Slot:31b}].Slot set value 4b
data modify storage build:temp Inventory2[{Slot:32b}].Slot set value 5b
data modify storage build:temp Inventory2[{Slot:33b}].Slot set value 6b
data modify storage build:temp Inventory2[{Slot:34b}].Slot set value 7b
data modify storage build:temp Inventory2[{Slot:35b}].Slot set value 8b
execute in pandamium:staff_world run data modify block 0 0 0 Items set from storage build:temp Inventory2
execute in pandamium:staff_world run loot replace entity @s container.27 mine 0 0 0 air{drop_contents:1b}
