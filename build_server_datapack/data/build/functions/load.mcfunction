scoreboard objectives add global dummy
scoreboard objectives add scratch dummy
scoreboard objectives add constant dummy

scoreboard objectives add io dummy

# Lowest ID should be 2
scoreboard objectives add id dummy
execute unless score $next_id global matches 2.. run scoreboard players set $next_id global 2

# Player Info
scoreboard objectives add builder_rank dummy
scoreboard objectives add builder_perms dummy
scoreboard objectives add in_dimension dummy
scoreboard objectives add gamemode_last_tick dummy

# Options
scoreboard objectives add opt.night_vision_mode dummy
scoreboard objectives add opt.show_invisible_entities dummy

# Detect
scoreboard objectives add detect.leave_game custom:leave_game
scoreboard objectives add detect.sneak custom:sneak_time


# Triggers
scoreboard objectives add spawn trigger
scoreboard objectives add toggle_spectator_mode trigger
scoreboard objectives add world trigger
#scoreboard objectives add set_block trigger
#scoreboard objectives add set_block.target dummy
#scoreboard objectives add donator_area trigger
#scoreboard objectives add staff_area trigger
#scoreboard objectives add switch_world trigger
#scoreboard objectives add get_sign trigger
#scoreboard objectives add replace_sign trigger
#scoreboard objectives add entity_data trigger
#scoreboard objectives add time trigger
#scoreboard objectives add pose trigger
#scoreboard objectives add hat trigger
#scoreboard objectives add get_head trigger
#scoreboard objectives add fake_block trigger
#scoreboard objectives add restart trigger
#scoreboard objectives add lock_all trigger
#scoreboard objectives add unlock_nearest trigger
#scoreboard objectives add mini_blocks trigger
#scoreboard objectives add give_all_mob_heads trigger
#scoreboard objectives add item_font trigger
#scoreboard objectives add options trigger
#scoreboard objectives add world_info trigger

# Editor
scoreboard objectives add owner_id dummy
scoreboard objectives add editor.holding_wand_ticks dummy
scoreboard objectives add editor.right_click used:carrot_on_a_stick
scoreboard objectives add editor.left_click dummy
scoreboard objectives add editor.state dummy
scoreboard objectives add editor.position_1.x dummy
scoreboard objectives add editor.position_1.y dummy
scoreboard objectives add editor.position_1.z dummy
scoreboard objectives add editor.position_2.x dummy
scoreboard objectives add editor.position_2.y dummy
scoreboard objectives add editor.position_2.z dummy
scoreboard objectives add editor.position_3.x dummy
scoreboard objectives add editor.position_3.y dummy
scoreboard objectives add editor.position_3.z dummy
scoreboard objectives add editor.reach dummy
scoreboard objectives add editor.select_before dummy


# Misc
execute unless data storage build:global schedule[0] run data modify storage build:global schedule set value []

# Teams

team add builder
team modify builder color dark_aqua
team modify builder collisionRule never
team modify builder seeFriendlyInvisibles false

team add builder_admin
team modify builder_admin color dark_aqua
team modify builder_admin collisionRule never
team modify builder_admin seeFriendlyInvisibles false

team add colour.gray
team modify colour.gray color gray
team add colour.red
team modify colour.red color red
team add colour.green
team modify colour.green color green
team add colour.blue
team modify colour.blue color blue

#

gamerule keepInventory true
gamerule doTileDrops false
gamerule doDaylightCycle false
gamerule doWeatherCycle false
gamerule doFireTick false
gamerule announceAdvancements false
gamerule doEntityDrops false
gamerule doMobLoot false
gamerule doInsomnia false
gamerule doLimitedCrafting false
gamerule doMobSpawning false
gamerule doTraderSpawning false
gamerule doPatrolSpawning false
gamerule fallDamage false
gamerule fireDamage false
gamerule drowningDamage false
gamerule freezeDamage false
gamerule mobGriefing false
gamerule spectatorsGenerateChunks false
gamerule reducedDebugInfo false

worldborder center 0 0
worldborder set 1023

execute in the_nether run forceload add -1 -1 0 0
execute in overworld run forceload add -1 -1 0 0
execute in the_end run forceload add -1 -1 0 0

execute in build:release/overworld run forceload add -1 -1 0 0
execute in build:release/the_nether run forceload add -1 -1 0 0
execute in build:snapshot/overworld run forceload add -1 -1 0 0
execute in build:snapshot/the_nether run forceload add -1 -1 0 0
execute in build:event_world run forceload add -1 -1 0 0
execute in build:blueprint_world run forceload add -1 -1 0 0
execute in build:storage run forceload add -1 -1 95 95


scoreboard players set $-1 constant -1
scoreboard players set $2 constant 2
scoreboard players set $3 constant 3
scoreboard players set $4 constant 4
scoreboard players set $6 constant 6
scoreboard players set $16 constant 16
scoreboard players set $32 constant 32
scoreboard players set $100 constant 100

function build:tick_loop
function build:slow_loop
