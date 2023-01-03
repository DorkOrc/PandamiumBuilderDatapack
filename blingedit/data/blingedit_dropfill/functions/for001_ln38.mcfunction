scoreboard players operation Global percent = Global x
scoreboard players operation Global percent -= Global box_xmin
scoreboard players operation Global percent *= c100 Constant
scoreboard players operation Global run_scratch1 = Global box_xmax
scoreboard players operation Global run_scratch1 -= Global box_xmin
scoreboard players operation Global percent /= Global run_scratch1
execute store result bossbar progress value run scoreboard players get Global percent
scoreboard players operation Global z = Global box_zmin
scoreboard players operation Global run_scratch1 = Global box_zmax
execute if score Global z <= Global run_scratch1 run function blingedit_dropfill:for002_ln42
scoreboard players add Global x 1
execute if score Global x <= Global run_scratch0 run function blingedit_dropfill:for001_ln38