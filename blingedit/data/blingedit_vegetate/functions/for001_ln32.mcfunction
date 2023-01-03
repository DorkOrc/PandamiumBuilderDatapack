scoreboard players operation Global y = Global box_ymin
scoreboard players operation Global run_scratch1 = Global box_ymax
execute if score Global y <= Global run_scratch1 run function blingedit_vegetate:for002_ln33
scoreboard players add Global x 1
execute if score Global x <= Global run_scratch0 run function blingedit_vegetate:for001_ln32