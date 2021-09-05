scoreboard players set Global highest -1
scoreboard players operation Global y = Global box_ymin
scoreboard players operation Global run_scratch2 = Global box_ymax
execute if score Global y <= Global run_scratch2 run function blingedit_spline:for003_ln41
execute if score Global highest matches 0.. run function blingedit_spline:execute005_ln47
scoreboard players add Global z 1
execute if score Global z <= Global run_scratch1 run function blingedit_spline:for002_ln39