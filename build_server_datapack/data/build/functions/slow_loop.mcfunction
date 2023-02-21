function build:map_specific/slow_loop

effect give @a[scores={opt.night_vision_mode=1}] night_vision 1000000 0 true
effect clear @a[scores={opt.night_vision_mode=2,is_spectator=1},gamemode=!spectator] night_vision
effect give @a[scores={opt.night_vision_mode=2},gamemode=spectator] night_vision 1000000 0 true

execute in build:release/overworld run function build:misc/manage_release_worlds/main
execute in build:release/the_nether run function build:misc/manage_release_worlds/main

tag @e[type=!player,tag=!spawn_protected] add spawn_protected

schedule function build:slow_loop 1s

