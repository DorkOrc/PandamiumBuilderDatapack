execute store result entity @s Pos[0] double 1 run scoreboard players get $x scratch

scoreboard players operation $y scratch = $p1y scratch
scoreboard players operation $y_max scratch = $p2y scratch
function build:impl/editor/action/fill/y_iter

scoreboard players add $x scratch 1
execute if score $x scratch <= $x_max scratch run function build:impl/editor/action/fill/x_iter
