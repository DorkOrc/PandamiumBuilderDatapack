scoreboard players operation Global _id = @s click
execute as @e if score @s _id = Global _id run scoreboard players set @s kill 0
execute as @e[type=minecraft:magma_cube,tag=Corner] if score @s player = @a[scores={col_scratch0=1..},limit=1] _id run scoreboard players set @s kill 0
scoreboard players operation Global _id = @s from_display
execute as @e if score @s _id = Global _id run scoreboard players set @s kill 0
scoreboard players operation Global _id = @s to_display
execute as @e if score @s _id = Global _id run scoreboard players set @s kill 0