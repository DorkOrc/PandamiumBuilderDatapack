setblock 0 1 0 air
scoreboard players operation Global y = Global box_ymax
scoreboard players operation Global run_scratch2 = Global box_ymin
scoreboard players set Global run_scratch3 -1
execute if score Global run_scratch3 matches ..-1 if score Global y >= Global run_scratch2 run function blingedit_dropfill:for003_ln44
execute if score Global run_scratch3 matches 1.. if score Global y <= Global run_scratch2 run function blingedit_dropfill:for003_ln44
scoreboard players add Global z 1
execute if score Global z <= Global run_scratch1 run function blingedit_dropfill:for002_ln42