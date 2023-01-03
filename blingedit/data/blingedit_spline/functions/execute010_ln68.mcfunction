execute store result score @s x run data get entity @s Pos[0] 1
scoreboard players operation Global dx = @s x
scoreboard players operation Global dx -= Global x
execute store result score @s z run data get entity @s Pos[2] 1
scoreboard players operation Global dz = @s z
scoreboard players operation Global dz -= Global z
scoreboard players operation Global dist = Global dx
scoreboard players operation Global run_scratch2 = Global dist
scoreboard players operation Global run_scratch2 *= Global dist
scoreboard players operation Global dist = Global run_scratch2
scoreboard players operation Global run_scratch2 = Global dz
scoreboard players operation Global run_scratch2 *= Global dz
scoreboard players operation Global dist += Global run_scratch2
scoreboard players set Global weight 10000
scoreboard players operation Global run_scratch2 = Global dist
scoreboard players operation Global run_scratch2 *= c10 Constant
scoreboard players add Global run_scratch2 1
scoreboard players operation Global weight /= Global run_scratch2
scoreboard players operation Global run_scratch2 = Global weight
scoreboard players operation Global run_scratch3 = @s height
scoreboard players operation Global run_scratch3 *= c10 Constant
scoreboard players add Global run_scratch3 5
scoreboard players operation Global run_scratch2 *= Global run_scratch3
scoreboard players operation Global weighted_y += Global run_scratch2
scoreboard players operation Global total_weight += Global weight
execute if score Global first matches 1.. run function blingedit_spline:execute008_ln77
execute if score Global dist < Global nearest_dist run function blingedit_spline:execute009_ln83