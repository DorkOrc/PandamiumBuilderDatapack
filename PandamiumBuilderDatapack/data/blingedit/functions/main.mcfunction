scoreboard players add Global tick 1
execute if score Global feedback matches 1.. run gamerule sendCommandFeedback true
execute as @e[type=item] at @s run function blingedit:execute154_ln1368
scoreboard players set @e[type=player] mai_scratch0 0
execute as @e[type=player] run function blingedit:for223_ln1404
function blingedit:collect_garbage
gamerule sendCommandFeedback true