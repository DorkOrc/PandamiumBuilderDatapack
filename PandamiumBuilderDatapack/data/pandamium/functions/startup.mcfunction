# Release:	0
# Snapshot:	1

scoreboard objectives add variable dummy
execute store success score <server> variable if score <server> variable matches 1

execute if score <server> variable matches 0 run schedule clear pandamium:misc/map_specific/slow_loop
execute if score <server> variable matches 1 run function pandamium:misc/map_specific/slow_loop

function pandamium:main_loop
