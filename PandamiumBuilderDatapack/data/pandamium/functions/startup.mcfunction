# Release:	0
# Snapshot:	1

scoreboard objectives add variable dummy
execute store success score <server> variable if score <server> variable matches 1

execute if score <server> variable matches 1 run schedule function pandamium:misc/map_specific/slow_loop 1t
execute if score <server> variable matches 0 run schedule clear pandamium:misc/map_specific/slow_loop

function pandamium:main_loop
