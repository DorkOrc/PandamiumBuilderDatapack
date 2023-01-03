scoreboard players operation Global mai_scratch1 = Global zmin
scoreboard players operation Global mai_scratch1 += Global zmax
scoreboard players operation Global mai_scratch1 /= $2 blingedit.constant
scoreboard players operation @s z = Global mai_scratch1
execute store result entity @s Pos[2] double 0.001 run scoreboard players get @s z