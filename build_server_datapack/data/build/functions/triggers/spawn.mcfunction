scoreboard players set <tp_d> variable -1

execute if score @s spawn matches 1 if score @s in_dimension matches 0..99 run scoreboard players set <tp_d> variable 0
execute if score @s spawn matches 1 if score @s in_dimension matches 100..199 run scoreboard players set <tp_d> variable 100

execute if score @s spawn matches 2 if score @s in_dimension matches 0..99 run scoreboard players set <tp_d> variable 1
execute if score @s spawn matches 2 if score @s in_dimension matches 100..199 run scoreboard players set <tp_d> variable 101

execute if score @s in_dimension matches 201 run scoreboard players set <tp_d> variable 201

function build:misc/teleport/to_scores/spawn
