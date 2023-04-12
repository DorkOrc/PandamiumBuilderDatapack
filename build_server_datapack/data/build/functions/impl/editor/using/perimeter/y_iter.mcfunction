execute store result entity @s Pos[1] double 1 run scoreboard players get $y scratch

execute store result entity @s Pos[0] double 1 run scoreboard players get $p1x scratch
execute store result entity @s Pos[2] double 1 run scoreboard players get $p1z scratch
execute positioned as @s run particle fishing ~ ~0.1 ~
execute unless score $y scratch = $y_max scratch positioned as @s run particle fishing ~ ~0.6 ~

execute store result entity @s Pos[2] double 1 run scoreboard players get $p2z scratch
execute positioned as @s run particle fishing ~ ~0.1 ~
execute unless score $y scratch = $y_max scratch positioned as @s run particle fishing ~ ~0.6 ~

execute store result entity @s Pos[0] double 1 run scoreboard players get $p2x scratch
execute store result entity @s Pos[2] double 1 run scoreboard players get $p1z scratch
execute positioned as @s run particle fishing ~ ~0.1 ~
execute unless score $y scratch = $y_max scratch positioned as @s run particle fishing ~ ~0.6 ~

execute store result entity @s Pos[2] double 1 run scoreboard players get $p2z scratch
execute positioned as @s run particle fishing ~ ~0.1 ~
execute unless score $y scratch = $y_max scratch positioned as @s run particle fishing ~ ~0.6 ~

scoreboard players add $y scratch 1
execute if score $y scratch <= $y_max scratch run function build:impl/editor/using/perimeter/y_iter
