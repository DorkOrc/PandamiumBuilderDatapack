team join moving
scoreboard players add Global _unique 1
execute unless score @s _id matches 0.. run scoreboard players operation @s _id = Global _unique
scoreboard players operation Global mai_scratch1 = @s _id
scoreboard players operation @a[scores={mai_scratch0=1..},limit=1] moving = Global mai_scratch1
scoreboard players set @a[scores={mai_scratch0=1..},limit=1] state 4
execute as @a[scores={mai_scratch0=1..},limit=1] run function blingedit:create_click