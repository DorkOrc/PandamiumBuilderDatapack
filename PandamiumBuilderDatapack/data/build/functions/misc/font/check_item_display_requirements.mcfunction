execute store success score <can_edit> variable if data storage build:temp nbt.SelectedItem.tag.display.Name

data remove storage build:temp SelectedLore
execute if score @s item_font matches -101 run data modify storage build:temp SelectedLore set from storage build:temp nbt.SelectedItem.tag.display.Lore[0]
execute if score @s item_font matches -102 run data modify storage build:temp SelectedLore set from storage build:temp nbt.SelectedItem.tag.display.Lore[1]
execute if score @s item_font matches -103 run data modify storage build:temp SelectedLore set from storage build:temp nbt.SelectedItem.tag.display.Lore[2]
execute if score @s item_font matches -104 run data modify storage build:temp SelectedLore set from storage build:temp nbt.SelectedItem.tag.display.Lore[3]

execute if data storage build:temp SelectedLore unless data storage build:temp {SelectedLore:'{"text":""}'} run scoreboard players set <can_edit> variable 1
