execute as @a unless score @s id matches 2.. run function build:players/first_join
execute as @a[scores={detect.leave=1..}] run function build:players/on_join

gamemode spectator @a[scores={builder_perms=0}]

scoreboard players set @a[gamemode=survival] gamemode_last_tick 0
scoreboard players set @a[gamemode=creative] gamemode_last_tick 1
scoreboard players set @a[gamemode=adventure] gamemode_last_tick 2
scoreboard players set @a[gamemode=spectator] gamemode_last_tick 3

schedule function build:tick_loop 1t
