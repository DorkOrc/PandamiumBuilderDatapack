execute store result entity @s Pos[0] double 0.001 run scoreboard players get Global p_xmin
execute store result entity @s Pos[2] double 0.001 run scoreboard players get Global p_zmin
execute positioned as @s run particle fishing ~ ~ ~ 0 0 0 0 1 force
execute store result entity @s Pos[2] double 0.001 run scoreboard players get Global p_zmax
execute positioned as @s run particle fishing ~ ~ ~ 0 0 0 0 1 force
execute store result entity @s Pos[0] double 0.001 run scoreboard players get Global p_xmax
execute store result entity @s Pos[2] double 0.001 run scoreboard players get Global p_zmin
execute positioned as @s run particle fishing ~ ~ ~ 0 0 0 0 1 force
execute store result entity @s Pos[2] double 0.001 run scoreboard players get Global p_zmax
execute positioned as @s run particle fishing ~ ~ ~ 0 0 0 0 1 force

scoreboard players add Global y 200
tp ~ ~0.2 ~
execute if score Global y <= Global p_ymax positioned as @s run function blingedit:for147_ln1325
