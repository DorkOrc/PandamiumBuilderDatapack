# critical scoreboard objectives
scoreboard objectives add global dummy
scoreboard objectives add var dummy
scoreboard objectives add constant dummy

# other scoreboard objectives
scoreboard objectives add dead dummy
scoreboard objectives add previously_dead dummy
scoreboard objectives add previously_offline custom:leave_game

scoreboard objectives add tablist_value dummy
scoreboard objectives setdisplay list tablist_value

# dictionary
function pandabuild:startup/setup_dictionary

# gamerules
gamerule minecraft:command_block_output false
gamerule minecraft:elytra_movement_check false
gamerule minecraft:raids false
gamerule minecraft:advance_time false
gamerule minecraft:entity_drops false
gamerule minecraft:fire_spread_radius_around_player 0
gamerule minecraft:spawn_phantoms false
gamerule minecraft:mob_drops false
gamerule minecraft:spawn_mobs false
gamerule minecraft:spawn_patrols false
gamerule minecraft:block_drops false
gamerule minecraft:spawn_wandering_traders false
gamerule minecraft:spawn_wardens false
gamerule minecraft:advance_weather false
gamerule minecraft:drowning_damage false
gamerule minecraft:fall_damage false
gamerule minecraft:fire_damage false
gamerule minecraft:freeze_damage false
gamerule minecraft:log_admin_commands true
gamerule minecraft:mob_griefing false
gamerule minecraft:players_nether_portal_creative_delay 0
gamerule minecraft:players_nether_portal_default_delay 0
gamerule minecraft:players_sleeping_percentage 101
gamerule minecraft:random_tick_speed 100

# world border
execute in minecraft:overworld run function pandabuild:startup/set_world_border_disabled
execute in minecraft:the_nether run function pandabuild:startup/set_world_border_disabled
execute in minecraft:the_end run function pandabuild:startup/set_world_border_disabled
execute in pandabuild:servers/release/overworld run function pandabuild:startup/set_world_border
execute in pandabuild:servers/release/the_nether run function pandabuild:startup/set_world_border
execute in pandabuild:servers/snapshot/overworld run function pandabuild:startup/set_world_border
execute in pandabuild:servers/snapshot/the_nether run function pandabuild:startup/set_world_border
execute in pandabuild:servers/snapshot/sandbox run function pandabuild:startup/set_world_border
execute in pandabuild:servers/snapshot/variant_1/overworld run function pandabuild:startup/set_world_border
execute in pandabuild:servers/snapshot/variant_1/the_nether run function pandabuild:startup/set_world_border
execute in pandabuild:servers/snapshot/variant_2/overworld run function pandabuild:startup/set_world_border
execute in pandabuild:servers/snapshot/variant_2/the_nether run function pandabuild:startup/set_world_border
execute in pandabuild:storage run function pandabuild:startup/set_world_border_disabled

# triggers
scoreboard objectives add spawn trigger
scoreboard objectives add generator trigger
scoreboard objectives add spawn.snapshot.original.overworld trigger
scoreboard objectives add spawn.snapshot.original.the_nether trigger
scoreboard objectives add spawn.snapshot.sandbox trigger
scoreboard objectives add spawn.snapshot.christmas.overworld trigger
scoreboard objectives add spawn.snapshot.christmas.the_nether trigger
scoreboard objectives add spawn.snapshot.halloween.overworld trigger
scoreboard objectives add spawn.snapshot.halloween.the_nether trigger

# forceload storage chunk
execute in pandabuild:storage run forceload add 0 0
