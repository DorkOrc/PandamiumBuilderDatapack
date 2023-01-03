scoreboard players operation Global x = Global box_xmin
scoreboard players operation Global run_scratch0 = Global box_xmax
execute if score Global x <= Global run_scratch0 run function blingedit_vegetate:for001_ln32
kill @s