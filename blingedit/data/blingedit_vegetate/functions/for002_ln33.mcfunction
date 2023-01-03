scoreboard players operation Global z = Global box_zmin
scoreboard players operation Global run_scratch2 = Global box_zmax
execute if score Global z <= Global run_scratch2 run function blingedit_vegetate:for003_ln34
scoreboard players add Global y 1
execute if score Global y <= Global run_scratch1 run function blingedit_vegetate:for002_ln33