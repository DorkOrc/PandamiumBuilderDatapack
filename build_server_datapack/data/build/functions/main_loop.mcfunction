execute as @a[scores={opt.show_invisible_entities=1..}] at @s at @e[distance=..32,predicate=build:is_invisible] run particle dust 1 0 0 1 ~ ~ ~ 0 0 0 0 1 normal @s

effect give @a[scores={opt.night_vision_mode=1}] night_vision 1000000 0 true
effect clear @a[scores={opt.night_vision_mode=2,is_spectator=1},gamemode=!spectator] night_vision
effect give @a[scores={opt.night_vision_mode=2},gamemode=spectator] night_vision 1000000 0 true

execute in build:release/overworld run function build:misc/manage_release_worlds/main
execute in build:release/the_nether run function build:misc/manage_release_worlds/main

execute in build:release/overworld run function build:misc/release_map_specific_loop

schedule function build:main_loop 5t
