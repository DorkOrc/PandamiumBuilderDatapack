execute store result entity @s Pos[0] double 1.0 run scoreboard players get Global x
execute store result entity @s Pos[1] double 1.0 run scoreboard players get Global y
execute store result entity @s Pos[2] double 1.0 run scoreboard players get Global z
execute at @s run function blingedit_dropfill:execute004_ln46
scoreboard players operation Global y += Global run_scratch3
execute if score Global run_scratch3 matches ..-1 if score Global y >= Global run_scratch2 run function blingedit_dropfill:for003_ln44
execute if score Global run_scratch3 matches 1.. if score Global y <= Global run_scratch2 run function blingedit_dropfill:for003_ln44