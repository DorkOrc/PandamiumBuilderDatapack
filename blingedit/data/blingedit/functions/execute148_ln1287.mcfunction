execute store result entity @s Pos[0] double 0.001 store result score Global x run scoreboard players get Global p_xmin
execute if score Global x <= Global p_xmax positioned as @s run function blingedit:for145_ln1289
execute store result entity @s Pos[2] double 0.001 store result score Global z run scoreboard players get Global p_zmin
execute if score Global z <= Global p_zmax positioned as @s run function blingedit:for146_ln1307
execute store result entity @s Pos[1] double 0.001 store result score Global y run scoreboard players get Global p_ymin
execute if score Global y <= Global p_ymax positioned as @s run function blingedit:for147_ln1325
kill
