execute store result entity @s Pos[2] double 1 run scoreboard players get $z scratch

execute positioned as @s run clone ~ ~ ~ ~ ~ ~ to overworld 4 0 0
execute in overworld if blocks 2 0 0 2 0 0 4 0 0 all at @s run clone from overworld 0 0 0 0 0 0 ~ ~ ~

scoreboard players add $z scratch 1
execute if score $z scratch <= $z_max scratch run function build:impl/editor/action/replace/z_iter
