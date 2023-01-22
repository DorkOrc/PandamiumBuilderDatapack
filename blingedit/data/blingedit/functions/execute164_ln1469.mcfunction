scoreboard players set @s pick1 0
scoreboard players set @s pick2 0
scoreboard players set @s moving 0
scoreboard players set @s state 0
execute as @e[type=minecraft:magma_cube,tag=Corner] if score @s player = @a[scores={mai_scratch0=1..},limit=1] _id run scoreboard players set @s player 0