execute if score @s offhand matches 0 run loot replace entity @s weapon.mainhand loot blingedit:wand
execute unless score @s offhand matches 0 run loot replace entity @s weapon.offhand loot blingedit:wand
scoreboard players set Global handled 0
execute if score @s raycast_select matches 1.. run function blingedit:execute149_ln1386
execute if score Global handled matches ..0 run function blingedit:execute150_ln1392