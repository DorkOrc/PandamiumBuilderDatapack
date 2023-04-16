execute store result entity @s Pos[2] double 1 run scoreboard players get $z scratch

execute positioned as @s run clone ~ ~ ~ ~15 ~15 ~15 to build:storage 0 0 0
execute in build:storage summon marker run function build:impl/editor/action/clone/first_pass/move_buffer

scoreboard players add $buffer_z scratch 16
scoreboard players add $z scratch 16
execute if score $z scratch <= $z_max scratch run function build:impl/editor/action/clone/first_pass/z_iter
