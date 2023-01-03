execute store result entity @s Pos[0] double 1.0 run scoreboard players get Global x
execute store result entity @s Pos[1] double 1.0 run scoreboard players get Global box_ymin
execute store result entity @s Pos[2] double 1.0 run scoreboard players get Global z
scoreboard players operation @s height = Global highest
scoreboard players set @s control_point 1