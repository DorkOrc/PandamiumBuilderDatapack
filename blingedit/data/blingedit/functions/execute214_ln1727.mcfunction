scoreboard players add Global _unique 1
execute as @a[scores={mai_scratch0=1..},limit=1] unless score @s _id matches 0.. run scoreboard players operation @s _id = Global _unique
scoreboard players operation Global mai_scratch1 = @a[scores={mai_scratch0=1..},limit=1] _id
scoreboard players operation @s player = Global mai_scratch1
scoreboard players set @s type 1
team join moving
scoreboard players set @s edit_xmax 1
scoreboard players set @s edit_ymax 1
scoreboard players set @s edit_zmax 1