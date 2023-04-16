execute store result entity @s Pos[0] double 1 run scoreboard players get $buffer_x scratch
execute store result entity @s Pos[1] double 1 run scoreboard players get $buffer_y scratch
execute store result entity @s Pos[2] double 1 run scoreboard players get $buffer_z scratch

execute positioned as @s run clone ~ ~ ~ ~ ~ ~ 0 -1 0
#execute positioned as @s run setblock ~ ~ ~ blackstone

kill
