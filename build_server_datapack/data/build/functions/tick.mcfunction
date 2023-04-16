execute if data storage build:global schedule[0] run function build:impl/schedule/tick

execute as @a unless score @s id matches 2.. run function build:players/first_join
execute as @a[scores={detect.leave_game=1..}] run function build:players/on_join

scoreboard players add @a builder_perms 0
gamemode spectator @a[scores={builder_perms=..0}]

function build:map_specific/tick

function build:impl/triggers/tick
function build:impl/editor/tick

execute at @e[predicate=build:is_invisible] run particle dust 1 1 1 1 ~ ~ ~ 0 0 0 0 1 normal @a[scores={opt.show_invisible_entities=1..}]

schedule function build:tick_loop 1t

# Post
scoreboard players set @a[gamemode=survival] gamemode_last_tick 0
scoreboard players set @a[gamemode=creative] gamemode_last_tick 1
scoreboard players set @a[gamemode=adventure] gamemode_last_tick 2
scoreboard players set @a[gamemode=spectator] gamemode_last_tick 3

scoreboard players set @a detect.sneak 0
