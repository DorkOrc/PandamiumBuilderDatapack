execute as @s run function blingedit:get_cursor_position
scoreboard players add @e _age 1
summon area_effect_cloud
scoreboard players add @e _age 1
execute store result entity @e[limit=1,scores={_age=1}] Pos[0] double 0.001 run scoreboard players get Global _cursor_0
execute store result entity @e[limit=1,scores={_age=1}] Pos[1] double 0.001 run scoreboard players get Global _cursor_1
execute store result entity @e[limit=1,scores={_age=1}] Pos[2] double 0.001 run scoreboard players get Global _cursor_2
execute at @e[scores={_age=1}] run function blingedit:execute201_ln1621
execute if score Global click matches 1.. run function blingedit:execute203_ln1631