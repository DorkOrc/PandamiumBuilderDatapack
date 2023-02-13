data modify storage build:temp NBT set from entity @s

# ignore offhand and armour slots
data remove storage build:temp NBT.Inventory[{Slot:100b}]
data remove storage build:temp NBT.Inventory[{Slot:101b}]
data remove storage build:temp NBT.Inventory[{Slot:102b}]
data remove storage build:temp NBT.Inventory[{Slot:103b}]
data remove storage build:temp NBT.Inventory[{Slot:-106b}]

execute store result score <filled_inventory_slots> variable run data get storage build:temp NBT.Inventory
