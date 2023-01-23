execute store result entity @s Pos[0] double 0.001 run scoreboard players get Global p_xmin
execute store result entity @s Pos[1] double 0.001 run scoreboard players get Global p_ymin
execute positioned as @s run particle fishing ~ ~ ~ 0 0 0 0 1 force
execute store result entity @s Pos[0] double 0.001 run scoreboard players get Global p_xmax
execute positioned as @s run particle fishing ~ ~ ~ 0 0 0 0 1 force
execute store result entity @s Pos[0] double 0.001 run scoreboard players get Global p_xmin
execute store result entity @s Pos[1] double 0.001 run scoreboard players get Global p_ymax
execute positioned as @s run particle fishing ~ ~ ~ 0 0 0 0 1 force
execute store result entity @s Pos[0] double 0.001 run scoreboard players get Global p_xmax
execute positioned as @s run particle fishing ~ ~ ~ 0 0 0 0 1 force

scoreboard players add Global z 200
tp ~ ~ ~0.2
execute if score Global z <= Global p_zmax positioned as @s run function blingedit:for146_ln1307
