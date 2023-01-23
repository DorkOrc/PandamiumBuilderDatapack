execute if score @s offhand matches 0 run loot replace entity @s weapon.mainhand loot blingedit:wand
execute unless score @s offhand matches 0 run loot replace entity @s weapon.offhand loot blingedit:wand

execute store success score @s blingedit.cursor_type unless score @s blingedit.cursor_type matches 1
execute if score @s blingedit.cursor_type matches 1 run function blingedit:execute151_ln1376_branch1
execute if score @s blingedit.cursor_type matches 0 run function blingedit:execute151_ln1376_branch2
