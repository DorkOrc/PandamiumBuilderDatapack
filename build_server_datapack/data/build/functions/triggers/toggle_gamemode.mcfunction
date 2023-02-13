execute if entity @s[gamemode=creative,scores={toggle_gamemode=1}] run scoreboard players set @s toggle_gamemode 3
execute if entity @s[gamemode=adventure,scores={toggle_gamemode=2}] run scoreboard players set @s toggle_gamemode 1
execute if entity @s[gamemode=spectator,scores={toggle_gamemode=3}] run scoreboard players set @s toggle_gamemode 1

execute if score @s toggle_gamemode matches 1 run gamemode creative
execute if score @s toggle_gamemode matches 2 run gamemode adventure
execute if score @s toggle_gamemode matches 3 run gamemode spectator
