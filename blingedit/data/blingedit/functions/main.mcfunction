scoreboard players add Global tick 1
execute if score Global feedback matches 1.. run gamerule sendCommandFeedback true
execute as @e[type=item,nbt={Item:{id:"minecraft:warped_fungus_on_a_stick",tag:{blingedit:{wand:1b}}}}] at @s run function blingedit:execute153_ln1370
scoreboard players set @a mai_scratch0 0
execute as @a run function blingedit:for223_ln1404
function blingedit:collect_garbage