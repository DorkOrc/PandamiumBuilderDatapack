execute store result entity @s Pos[0] double 1 run scoreboard players get $x scratch

execute store result entity @s Pos[1] double 1 run scoreboard players get $p1y scratch
execute store result entity @s Pos[2] double 1 run scoreboard players get $p1z scratch
execute positioned as @s run particle fishing ~0.0 ~0.1 ~
execute unless score $x scratch = $x_max scratch positioned as @s run particle fishing ~0.5 ~0.1 ~

execute store result entity @s Pos[2] double 1 run scoreboard players get $p2z scratch
execute positioned as @s run particle fishing ~0.0 ~0.1 ~
execute unless score $x scratch = $x_max scratch positioned as @s run particle fishing ~0.5 ~0.1 ~

execute store result entity @s Pos[1] double 1 run scoreboard players get $p2y scratch
execute store result entity @s Pos[2] double 1 run scoreboard players get $p1z scratch
execute positioned as @s run particle fishing ~0.0 ~0.1 ~
execute unless score $x scratch = $x_max scratch positioned as @s run particle fishing ~0.5 ~0.1 ~

execute store result entity @s Pos[2] double 1 run scoreboard players get $p2z scratch
execute positioned as @s run particle fishing ~0.0 ~0.1 ~
execute unless score $x scratch = $x_max scratch positioned as @s run particle fishing ~0.5 ~0.1 ~

scoreboard players add $x scratch 1
execute if score $x scratch <= $x_max scratch run function build:impl/editor/using/perimeter/x_iter
