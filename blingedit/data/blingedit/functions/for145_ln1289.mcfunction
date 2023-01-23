execute store result entity @s Pos[1] double 0.001 run scoreboard players get Global p_ymin
execute store result entity @s Pos[2] double 0.001 run scoreboard players get Global p_zmin
execute positioned as @s run particle fishing ~ ~ ~ 0 0 0 0 1 force
execute store result entity @s Pos[2] double 0.001 run scoreboard players get Global p_zmax
execute positioned as @s run particle fishing ~ ~ ~ 0 0 0 0 1 force
execute store result entity @s Pos[1] double 0.001 run scoreboard players get Global p_ymax
execute store result entity @s Pos[2] double 0.001 run scoreboard players get Global p_zmin
execute positioned as @s run particle fishing ~ ~ ~ 0 0 0 0 1 force
execute store result entity @s Pos[2] double 0.001 run scoreboard players get Global p_zmax
execute positioned as @s run particle fishing ~ ~ ~ 0 0 0 0 1 force

scoreboard players add Global x 200
tp ~0.2 ~ ~
execute if score Global x <= Global p_xmax positioned as @s run function blingedit:for145_ln1289
