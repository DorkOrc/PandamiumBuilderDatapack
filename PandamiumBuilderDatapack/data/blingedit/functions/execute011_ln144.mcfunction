tp @s @e[type=player,limit=1,scores={cursor_current=1..}]
tag @s add orc.temp
execute as @e[type=player,limit=1,scores={cursor_current=1..}] at @s anchored eyes run tp @e[tag=orc.temp,limit=1,sort=nearest] ^ ^ ^
tag @e remove orc.temp
scoreboard players set Global step 0
execute if score @e[type=player,limit=1,scores={cursor_current=1..}] cursor_inside matches 1.. if score Global step matches ..249 at @s if block ~ ~ ~ #blingedit:cursor_continue run function blingedit:while009_ln150
execute unless score @e[type=player,limit=1,scores={cursor_current=1..}] cursor_inside matches 1.. if score Global step matches ..249 at @s if block ^ ^ ^0.2 #blingedit:cursor_continue run function blingedit:while010_ln156
execute at @s align xyz run tp @s ~0.5 ~ ~0.5
execute store result score Global _cursor_0 run data get entity @s Pos[0] 1000
execute store result score Global _cursor_1 run data get entity @s Pos[1] 1000
execute store result score Global _cursor_2 run data get entity @s Pos[2] 1000
kill