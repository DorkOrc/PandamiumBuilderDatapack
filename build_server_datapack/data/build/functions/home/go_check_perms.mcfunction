execute if score @s home matches 1..10 run function build:home/go_check_exists
execute unless score @s home matches 1..10 run tellraw @s [{"text":"[Home]","color":"dark_red"},{"text":" This is not a valid home ID! You need to set a number between 1 and 10.","color":"red"}]
