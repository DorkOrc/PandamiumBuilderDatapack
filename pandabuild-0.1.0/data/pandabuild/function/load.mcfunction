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
gamerule commandBlockOutput true
gamerule disableElytraMovementCheck true
gamerule disableRaids true
gamerule doDaylightCycle false
gamerule doEntityDrops false
gamerule doFireTick false
gamerule doInsomnia false
gamerule doMobLoot false
gamerule doMobSpawning false
gamerule doPatrolSpawning false
gamerule doTileDrops false
gamerule doTraderSpawning false
gamerule doWardenSpawning false
gamerule doWeatherCycle false
gamerule drowningDamage false
gamerule fallDamage false
gamerule fireDamage false
gamerule freezeDamage false
gamerule logAdminCommands true
gamerule mobGriefing false
gamerule playersNetherPortalCreativeDelay -1
gamerule playersNetherPortalDefaultDelay -1
gamerule playersSleepingPercentage 101
gamerule randomTickSpeed 100

# world border
worldborder center 0. 0.
worldborder set 1024
worldborder warning distance 0

# triggers
scoreboard objectives add spawn trigger
scoreboard objectives add spawn.snapshot.original.overworld trigger
scoreboard objectives add spawn.snapshot.original.the_nether trigger
scoreboard objectives add spawn.snapshot.variant_1.overworld trigger
scoreboard objectives add spawn.snapshot.variant_1.the_nether trigger
