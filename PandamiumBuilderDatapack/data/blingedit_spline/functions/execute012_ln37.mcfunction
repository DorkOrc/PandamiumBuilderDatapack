scoreboard players operation Global x = Global box_xmin
scoreboard players operation Global run_scratch0 = Global box_xmax
execute if score Global x <= Global run_scratch0 run function blingedit_spline:for001_ln38
scoreboard players operation Global x = Global box_xmin
scoreboard players operation Global run_scratch0 = Global box_xmax
execute if score Global x <= Global run_scratch0 run function blingedit_spline:for006_ln57
kill @e[type=area_effect_cloud,scores={control_point=1..}]
kill @s