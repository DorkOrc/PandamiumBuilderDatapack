scoreboard players add @e _age 1
summon area_effect_cloud ~ ~ ~ {Duration:-1,Age:-2147483648,WaitTime:-2147483648}
scoreboard players add @e _age 1
execute as @e[scores={_age=1}] run function blingedit:execute099_ln813
setblock 0 1 0 stone
execute store success score Global loaded run setblock 0 1 0 sandstone
execute unless score Global loaded matches 1.. run tellraw @s ["Chunk 0,0 wasn't loaded. Try again (or use ",{"text":"/forceload add 0 0","color":"aqua"},")"]
execute if score Global loaded matches 1.. run function blingedit:execute121_ln824