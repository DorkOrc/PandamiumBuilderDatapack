execute store result entity @s Pos[0] double 1 run scoreboard players get $buffer_x scratch
execute store result entity @s Pos[1] double 1 run scoreboard players get $buffer_y scratch
execute store result entity @s Pos[2] double 1 run scoreboard players get $buffer_z scratch

execute positioned as @s run clone 0 0 0 15 15 15 ~ ~ ~

kill
execute positioned as @s run particle explosion_emitter
