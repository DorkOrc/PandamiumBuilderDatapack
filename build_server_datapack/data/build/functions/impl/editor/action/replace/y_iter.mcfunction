execute store result entity @s Pos[1] double 1 run scoreboard players get $y scratch

scoreboard players operation $z scratch = $p1z scratch
scoreboard players operation $z_max scratch = $p2z scratch
function build:impl/editor/action/replace/z_iter

scoreboard players add $y scratch 1
execute if score $y scratch <= $y_max scratch run function build:impl/editor/action/replace/y_iter
