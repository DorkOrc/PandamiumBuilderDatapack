scoreboard players set <teleport.has_teleported> variable 1

data modify storage build:teleport Pos set value [0.,0.,0.]

execute store result storage build:teleport Pos[0] double 1 run scoreboard players get <tp_x> variable
execute store result storage build:teleport Pos[1] double 1 run scoreboard players get <tp_y> variable
execute store result storage build:teleport Pos[2] double 1 run scoreboard players get <tp_z> variable

data modify entity @s Pos set from storage build:teleport Pos
data remove storage build:teleport Pos

execute positioned as @s positioned ~0.5 ~ ~0.5 as @a[tag=teleport.to_scores.selected_player] rotated as @s run function build:misc/teleport/main
