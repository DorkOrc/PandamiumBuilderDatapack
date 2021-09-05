execute as @e[type=area_effect_cloud,sort=nearest,limit=10,scores={control_point=1..}] run function blingedit_spline:execute010_ln68
execute store result score Global run_scratch2 run data get entity @e[type=area_effect_cloud,limit=1,scores={control_point=1..,closest=1..}] Pos[0] 1
execute store result score Global run_scratch3 run data get entity @e[type=area_effect_cloud,limit=1,scores={control_point=1..,closest=1..}] Pos[1] 1
execute store result score Global run_scratch4 run data get entity @e[type=area_effect_cloud,limit=1,scores={control_point=1..,closest=1..}] Pos[2] 1
execute store result entity @s Pos[0] double 1.0 run scoreboard players get Global run_scratch2
execute store result entity @s Pos[1] double 1.0 run scoreboard players get Global run_scratch3
execute store result entity @s Pos[2] double 1.0 run scoreboard players get Global run_scratch4
scoreboard players operation Global run_scratch2 = @e[type=area_effect_cloud,limit=1,scores={control_point=1..,closest=1..}] height
scoreboard players operation @s y = Global run_scratch2
execute store result entity @s Pos[1] double 1.0 run scoreboard players get @s y
execute at @s run clone ~ ~ ~ ~ ~ ~ 0 1 0
scoreboard players operation Global run_scratch2 = Global weighted_y
scoreboard players operation Global run_scratch2 /= Global total_weight
scoreboard players operation Global run_scratch2 /= c10 Constant
execute store result entity @s Pos[0] double 1.0 run scoreboard players get Global x
execute store result entity @s Pos[1] double 1.0 run scoreboard players get Global run_scratch2
execute store result entity @s Pos[2] double 1.0 run scoreboard players get Global z
execute at @s run clone 0 1 0 0 1 0 ~ ~ ~