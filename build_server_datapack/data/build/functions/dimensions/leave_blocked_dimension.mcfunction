data modify storage build:temp PreviousDimension set from entity @s Dimension
execute at @s in build:release/overworld run tp ~ ~ ~
tellraw @s [{"text":"[Info] ","color":"dark_red"},{"nbt":"PreviousDimension","storage":"build:temp","color":"yellow"},[{"text":" is currently blocked! Teleported you to ","color":"red"},{"text":"build:release/overworld","color":"yellow"},"."]]

scoreboard players set @s in_dimension 0
