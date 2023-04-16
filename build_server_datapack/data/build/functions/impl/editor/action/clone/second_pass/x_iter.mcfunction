execute store result entity @s Pos[0] double 1 run scoreboard players get $x scratch

scoreboard players set $buffer_y scratch 16
scoreboard players operation $y scratch = $p3y scratch
scoreboard players operation $y_max scratch = $p4y scratch
function build:impl/editor/action/clone/second_pass/y_iter

scoreboard players add $buffer_x scratch 1
scoreboard players add $x scratch 1
execute if score $x scratch <= $x_max scratch run function build:impl/editor/action/clone/second_pass/x_iter
