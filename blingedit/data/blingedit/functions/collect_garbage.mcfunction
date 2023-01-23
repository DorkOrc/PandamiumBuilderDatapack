bossbar set progress players
execute store result bossbar progress value run scoreboard players set Global percent 0
scoreboard players set @a blingedit.use.warped_fungus_on_a_stick 0
execute as @e[type=minecraft:magma_cube,tag=Corner] run function blingedit:execute225_ln1794
execute as @e[type=minecraft:armor_stand,tag=CloneDisplay] run function blingedit:execute226_ln1801
scoreboard players set @e[type=minecraft:magma_cube,tag=Corner] kill 1
scoreboard players set @e[type=minecraft:armor_stand,tag=CloneDisplay] kill 1
execute as @a run function blingedit:execute227_ln1812
execute as @e[scores={kill=1..}] run function blingedit:do_discrete_kill

tag @a remove blingedit.cursor_current
