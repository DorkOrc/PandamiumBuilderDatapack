execute unless score @s offhand matches 1 run item replace entity @s weapon.mainhand with carrot_on_a_stick{blingedit:{wand:1b},display:{Name:'{"bold":true,"italic":false,"text":"BlingEdit"}'},Enchantments:[{id:"minecraft:sharpness",lvl:5s}],HideFlags:1b}
execute if score @s offhand matches 1 run item replace entity @s weapon.offhand with carrot_on_a_stick{blingedit:{wand:1b},display:{Name:'{"bold":true,"italic":false,"text":"BlingEdit"}'},Enchantments:[{id:"minecraft:sharpness",lvl:5s}],HideFlags:1b}
scoreboard players set Global found_player 1
scoreboard players set Global handled 0
execute if score @s raycast_select matches 1.. run function blingedit:execute149_ln1386
execute if score Global handled matches ..0 run function blingedit:execute150_ln1392