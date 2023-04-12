execute store result entity @s Pos[2] double 1 run scoreboard players get $z scratch

execute store result entity @s Pos[0] double 1 run scoreboard players get $p1x scratch
execute store result entity @s Pos[1] double 1 run scoreboard players get $p1y scratch
execute positioned as @s run particle fishing ~ ~0.1 ~0.0
execute unless score $z scratch = $z_max scratch positioned as @s run particle fishing ~ ~0.1 ~0.5

execute store result entity @s Pos[1] double 1 run scoreboard players get $p2y scratch
execute positioned as @s run particle fishing ~ ~0.1 ~0.0
execute unless score $z scratch = $z_max scratch positioned as @s run particle fishing ~ ~0.1 ~0.5

execute store result entity @s Pos[0] double 1 run scoreboard players get $p2x scratch
execute store result entity @s Pos[1] double 1 run scoreboard players get $p1y scratch
execute positioned as @s run particle fishing ~ ~0.1 ~0.0
execute unless score $z scratch = $z_max scratch positioned as @s run particle fishing ~ ~0.1 ~0.5

execute store result entity @s Pos[1] double 1 run scoreboard players get $p2y scratch
execute positioned as @s run particle fishing ~ ~0.1 ~0.0
execute unless score $z scratch = $z_max scratch positioned as @s run particle fishing ~ ~0.1 ~0.5

scoreboard players add $z scratch 1
execute if score $z scratch <= $z_max scratch run function build:impl/editor/using/perimeter/z_iter
