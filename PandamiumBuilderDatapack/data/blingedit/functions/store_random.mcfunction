execute unless score @s state matches 3..3 run tellraw @s "You can't store a region right now."
execute if score @s state matches 3..3 run function blingedit:execute053_ln515
gamerule sendCommandFeedback false