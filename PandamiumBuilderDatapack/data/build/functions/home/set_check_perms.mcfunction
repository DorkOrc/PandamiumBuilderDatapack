execute unless score @s sethome matches -10..-1 run tellraw @s [{"text":"[Home]","color":"dark_red"},{"text":" This is not a valid home ID! You need to set a number between 1 and 10.","color":"yellow"}]
execute if score @s sethome matches -10..-1 run function build:home/set_run
