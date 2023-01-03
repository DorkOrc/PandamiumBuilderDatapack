scoreboard players operation Global z = Global box_zmin
scoreboard players operation Global run_scratch1 = Global box_zmax
execute if score Global z <= Global run_scratch1 run function blingedit_spline:for002_ln39
scoreboard players add Global x 1
execute if score Global x <= Global run_scratch0 run function blingedit_spline:for001_ln38