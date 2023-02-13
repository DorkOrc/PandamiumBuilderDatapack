execute if score @s delhome matches -10..-1 run function build:home/delete_run

execute if score @s delhome matches ..-11 run tellraw @s [{"text":"[Home]","color":"dark_red"},{"text":" This is not a valid home ID! You need to set a number between 1 and 10.","color":"red"}]

