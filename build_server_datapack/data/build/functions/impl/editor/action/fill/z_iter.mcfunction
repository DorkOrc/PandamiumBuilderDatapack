execute store result entity @s Pos[2] double 1 run scoreboard players get $z scratch

execute positioned as @s run clone from build:storage 0 0 0 0 0 0 ~ ~ ~

scoreboard players add $z scratch 1
execute if score $z scratch <= $z_max scratch run function build:impl/editor/action/fill/z_iter
