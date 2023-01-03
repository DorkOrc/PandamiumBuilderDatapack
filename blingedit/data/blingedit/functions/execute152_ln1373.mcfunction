scoreboard players set @s holding_item 0
execute unless score @s offhand matches 0 if predicate blingedit:offhand/anything run scoreboard players set @s holding_item 1
execute if score @s offhand matches 0 if predicate blingedit:mainhand/anything run scoreboard players set @s holding_item 1
execute unless score @s holding_item matches 1.. run function blingedit:execute151_ln1376