execute store result entity @s Pos[0] double 1 run scoreboard players get $x scratch

scoreboard players set $buffer_y scratch 16
scoreboard players operation $y scratch = $p1y scratch
scoreboard players operation $y_max scratch = $p2y scratch
function build:impl/editor/action/clone/first_pass/y_iter

scoreboard players add $buffer_x scratch 16
scoreboard players add $x scratch 16
execute if score $x scratch <= $x_max scratch run function build:impl/editor/action/clone/first_pass/x_iter
