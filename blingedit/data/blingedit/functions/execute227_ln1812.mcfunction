scoreboard players operation Global _id = @s click
execute as @e if score @s _id = Global _id run scoreboard players set @s kill 0

scoreboard players operation Global col_scratch0 = @s _id
execute as @e[type=minecraft:magma_cube,tag=Corner] if score @s player = Global col_scratch0 run scoreboard players set @s kill 0

scoreboard players operation Global _id = @s from_display
execute as @e if score @s _id = Global _id run scoreboard players set @s kill 0
scoreboard players operation Global _id = @s to_display
execute as @e if score @s _id = Global _id run scoreboard players set @s kill 0
