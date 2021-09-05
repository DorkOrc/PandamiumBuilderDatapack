execute store result entity @s Pos[0] double 1.0 run scoreboard players get Global x
execute store result entity @s Pos[1] double 1.0 run scoreboard players get Global y
execute store result entity @s Pos[2] double 1.0 run scoreboard players get Global z
execute at @s unless block ~ ~ ~ air run scoreboard players operation Global highest = Global y
scoreboard players add Global y 1
execute if score Global y <= Global run_scratch2 run function blingedit_spline:for003_ln41