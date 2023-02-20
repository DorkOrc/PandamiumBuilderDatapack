scoreboard objectives add global dummy
scoreboard objectives add scratch dummy
scoreboard objectives add io dummy
scoreboard objectives add constant dummy

# Lowest ID should be 2
scoreboard objectives add id dummy
execute unless score $next_id global matches 2.. run scoreboard players set $next_id global 2

scoreboard objectives add builder_perms dummy
scoreboard objectives add in_dimension dummy
scoreboard objectives add gamemode_last_tick dummy

scoreboard objectives add opt.night_vision_mode dummy
scoreboard objectives add opt.show_invisible_entities dummy

# detect
scoreboard objectives add detect.leave custom:leave_game


# Triggers
#scoreboard objectives add set_block trigger
#scoreboard objectives add set_block.target dummy

#scoreboard objectives add spawn trigger
#scoreboard objectives add donator_area trigger
#scoreboard objectives add staff_area trigger
#scoreboard objectives add switch_world trigger

#scoreboard objectives add get_sign trigger
#scoreboard objectives add replace_sign trigger
#scoreboard objectives add entity_data trigger
#scoreboard objectives add time trigger
#scoreboard objectives add toggle_gamemode trigger
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

#

# Teams
team add color.gray
team modify color.gray color gray
team add color.red
team modify color.red color red

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


scoreboard players set $-1 constant -1
scoreboard players set $16 constant 16
scoreboard players set $32 constant 32
scoreboard players set $100 constant 100

function build:tick_loop
function build:map_specific/tick_loop

function build:main_loop
function build:map_specific/main_loop

function build:slow_loop
