execute store result entity @s Pos[2] double 1 run scoreboard players get $z scratch

execute positioned as @s run clone ~ ~ ~ ~ ~ ~ to build:storage 4 0 0
execute store success score $matches scratch in build:storage if blocks 2 0 0 2 0 0 4 0 0 all
execute in build:storage if block 2 0 0 oak_leaves if block 4 0 0 oak_leaves run scoreboard players set $matches scratch 1
execute if score $matches scratch matches 1 positioned as @s run clone from build:storage 0 0 0 0 0 0 ~ ~ ~

scoreboard players add $z scratch 1
execute if score $z scratch <= $z_max scratch run function build:impl/editor/action/replace/z_iter
