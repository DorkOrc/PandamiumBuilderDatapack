scoreboard players operation Global type = Global Param0
scoreboard players add Global _unique 1
execute unless score @s _id matches 0.. run scoreboard players operation @s _id = Global _unique
scoreboard players operation Global player = @s _id
execute at @s anchored eyes positioned ^ ^ ^ run function blingedit:execute143_ln1187