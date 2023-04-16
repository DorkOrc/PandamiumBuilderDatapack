kill

scoreboard players set $buffer_x scratch 0
scoreboard players operation $x scratch = $p1x scratch
scoreboard players operation $x_max scratch = $p2x scratch
function build:impl/editor/action/clone/first_pass/x_iter

scoreboard players set $buffer_x scratch 0
scoreboard players operation $x scratch = $p3x scratch
scoreboard players operation $x_max scratch = $p4x scratch
function build:impl/editor/action/clone/second_pass/x_iter
