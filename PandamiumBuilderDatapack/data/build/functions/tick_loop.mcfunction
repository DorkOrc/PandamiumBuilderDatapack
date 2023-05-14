execute as @a unless score @s detect.leave matches 0 run function build:on_join

gamemode spectator @a[scores={builder_perms=0}]

execute as @a[scores={builder_perms=1..}] run function build:check_builder_triggers
execute as @a run function build:check_triggers

execute as @a[gamemode=spectator,scores={builder_perms=0}] at @s anchored eyes run particle dust 1 0 0 1 ^ ^ ^ 0 0 0 0 1 force @a[distance=.01..16]
execute as @a[gamemode=spectator,scores={builder_perms=1..}] at @s anchored eyes run particle dust 0 1 1 1 ^ ^ ^ 0 0 0 0 1 force @a[distance=.01..16]

function build:map_specific/elevator/tick
function build:custom_blocks/tick

schedule function build:tick_loop 1t
