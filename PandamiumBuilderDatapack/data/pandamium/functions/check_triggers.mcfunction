execute unless score @s parkour matches 0 if score @s parkour = @s parkour at @s run function pandamium:triggers/parkour
scoreboard players reset @s parkour
scoreboard players enable @s parkour

execute unless score @s parkour_end matches 0 if score @s parkour_end = @s parkour_end at @s run function pandamium:triggers/parkour_end
scoreboard players reset @s parkour_end
scoreboard players enable @s parkour_end
