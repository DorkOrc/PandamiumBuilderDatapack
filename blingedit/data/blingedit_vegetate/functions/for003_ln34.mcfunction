scoreboard players operation Global run_scratch3 = Global x
scoreboard players operation Global run_scratch4 = Global y
scoreboard players operation Global run_scratch5 = Global z
scoreboard players set Global run_scratch6 1000
scoreboard players operation Global run_scratch3 *= Global run_scratch6
scoreboard players operation Global run_scratch4 *= Global run_scratch6
scoreboard players operation Global run_scratch5 *= Global run_scratch6
execute store result entity @s Pos[0] double 0.001 run scoreboard players get Global run_scratch3
execute store result entity @s Pos[1] double 0.001 run scoreboard players get Global run_scratch4
execute store result entity @s Pos[2] double 0.001 run scoreboard players get Global run_scratch5
execute at @s if block ~ ~-1 ~ minecraft:grass_block if block ~ ~ ~ minecraft:air if block ~ ~1 ~ minecraft:air run function blingedit_vegetate:execute008_ln37
scoreboard players add Global z 1
execute if score Global z <= Global run_scratch2 run function blingedit_vegetate:for003_ln34