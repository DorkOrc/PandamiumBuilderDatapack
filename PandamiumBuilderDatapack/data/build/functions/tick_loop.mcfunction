gamemode spectator @a[team=!builder]

execute as @a[team=builder] run function build:check_builder_triggers
execute as @a run function build:check_triggers

execute as @a[gamemode=spectator,team=!builder] at @s anchored eyes run particle dust 1 0 0 1 ^ ^ ^ 0 0 0 0 1 force @a[distance=0.01..16]
execute as @a[gamemode=spectator,team=builder] at @s anchored eyes run particle dust 0 1 1 1 ^ ^ ^ 0 0 0 0 1 force @a[distance=0.01..16]

schedule function build:tick_loop 1t
