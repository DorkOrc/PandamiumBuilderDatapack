team join moving
scoreboard players add Global _unique 1
execute unless score @s _id matches 0.. run scoreboard players operation @s _id = Global _unique
scoreboard players operation Global mai_scratch1 = @s _id
execute as @a[scores={mai_scratch0=1..},limit=1] run function blingedit:execute196_ln1606_branch1
