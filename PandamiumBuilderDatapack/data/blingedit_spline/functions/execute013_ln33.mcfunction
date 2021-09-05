tellraw @s "Filling spline..."
scoreboard players set Global percent 0
bossbar set progress players @s
scoreboard players add @e _age 1
summon area_effect_cloud ~ ~ ~ {Duration:-1,Age:-2147483648,WaitTime:-2147483648}
scoreboard players add @e _age 1
execute as @e[scores={_age=1}] run function blingedit_spline:execute012_ln37
tellraw @s "Spline complete."