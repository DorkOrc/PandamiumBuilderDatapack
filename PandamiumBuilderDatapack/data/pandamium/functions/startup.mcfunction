# Release: 0
# Snapshot: 1

scoreboard objectives add id dummy
scoreboard objectives add variable dummy
scoreboard objectives add global dummy
execute store success score <server> global if score <server> global matches 1

function pandamium:misc/map_specific/slow_loop


scoreboard objectives add parkour trigger
scoreboard objectives add parkour_end trigger

scoreboard objectives add parkour_ticks dummy
scoreboard objectives add parkour_checkpoint dummy
scoreboard objectives add parkour_best_time dummy
scoreboard objectives add parkour_leaderboard dummy {"text":"Parkour Times","color":"blue","bold":true}
scoreboard objectives add parkour_leaderboard.blacklist dummy

scoreboard objectives add detect.used.ender_pearl used:ender_pearl
scoreboard objectives add detect.aviate custom:aviate_one_cm

#

scoreboard players set <ticks_per_hour> variable 72000
scoreboard players set <ticks_per_minute> variable 1200
scoreboard players set <ticks_per_second> variable 20
scoreboard players set <-1> variable -1
scoreboard players set <16> variable 16
scoreboard players set <32> variable 32
scoreboard players set <64> variable 64
scoreboard players set <60> variable 60

#

function pandamium:main_loop
