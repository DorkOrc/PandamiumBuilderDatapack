execute store result entity @s Pos[1] double 1 run scoreboard players get $y scratch

scoreboard players set $buffer_z scratch 0
scoreboard players operation $z scratch = $p1z scratch
scoreboard players operation $z_max scratch = $p2z scratch
function build:impl/editor/action/clone/first_pass/z_iter

scoreboard players add $buffer_y scratch 16
scoreboard players add $y scratch 16
execute if score $y scratch <= $y_max scratch run function build:impl/editor/action/clone/first_pass/y_iter
