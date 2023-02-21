execute unless score @s gamemode_last_tick matches 3 run gamemode spectator
execute if score @s gamemode_last_tick matches 3 run gamemode creative

scoreboard players reset @s toggle_spectator_mode
scoreboard players enable @s toggle_spectator_mode
