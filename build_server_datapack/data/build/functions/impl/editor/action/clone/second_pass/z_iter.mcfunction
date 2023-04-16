execute store result entity @s Pos[2] double 1 run scoreboard players get $z scratch

execute in build:storage summon marker run function build:impl/editor/action/clone/second_pass/move_to_buffer
execute positioned as @s run clone from build:storage 0 -1 0 0 -1 0 ~ ~ ~

scoreboard players add $buffer_z scratch 1
scoreboard players add $z scratch 1
execute if score $z scratch <= $z_max scratch run function build:impl/editor/action/clone/second_pass/z_iter
