scoreboard players set Global total_weight 0
scoreboard players set Global weighted_y 0
scoreboard players set Global first 1
execute store result entity @s Pos[0] double 1.0 run scoreboard players get Global x
execute store result entity @s Pos[1] double 1.0 run scoreboard players get Global box_ymin
execute store result entity @s Pos[2] double 1.0 run scoreboard players get Global z
execute at @s run function blingedit_spline:execute011_ln67
scoreboard players add Global z 1
execute if score Global z <= Global run_scratch1 run function blingedit_spline:for007_ln61