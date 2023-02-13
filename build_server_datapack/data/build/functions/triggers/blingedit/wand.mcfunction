execute store success score <mainhand_filled> variable if data entity @s SelectedItem
execute store success score <offhand_filled> variable if data entity @s Inventory[{Slot:-106b}]

execute if score <mainhand_filled> variable matches 0 if score <offhand_filled> variable matches 0 run item replace entity @s weapon.mainhand with carrot_on_a_stick{blingedit:{wand:1b},display:{Name:'{"bold":true,"italic":false,"text":"BlingEdit"}'},Enchantments:[{lvl:5s,id:"minecraft:sharpness"}],HideFlags:1b}
execute if score <mainhand_filled> variable matches 1 if score <offhand_filled> variable matches 0 run item replace entity @s weapon.offhand with carrot_on_a_stick{blingedit:{wand:1b},display:{Name:'{"bold":true,"italic":false,"text":"BlingEdit"}'},Enchantments:[{lvl:5s,id:"minecraft:sharpness"}],HideFlags:1b}
execute if score <mainhand_filled> variable matches 1 if score <offhand_filled> variable matches 1 run give @s carrot_on_a_stick{blingedit:{wand:1b},display:{Name:'{"bold":true,"italic":false,"text":"BlingEdit"}'},Enchantments:[{lvl:5s,id:"minecraft:sharpness"}],HideFlags:1b}
