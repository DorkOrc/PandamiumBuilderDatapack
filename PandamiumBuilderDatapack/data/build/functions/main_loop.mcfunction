execute at @e[tag=invisible] run particle dust 1 0 0 1 ~ ~ ~ 0 0 0 0 1 normal @a[scores={invis_indicators=1}]

effect give @a[scores={night_vis_option=1}] night_vision 1000000 0 true
effect clear @a[scores={night_vis_option=2,is_spectator=1},gamemode=!spectator] night_vision
effect give @a[scores={night_vis_option=2},gamemode=spectator] night_vision 1000000 0 true
execute as @a store success score @s is_spectator if entity @s[gamemode=spectator]

item replace entity @a[scores={permanent_socks=1},nbt=!{Inventory:[{Slot:100b}]}] armor.feet with leather_boots{display:{color:3837017,Name:'{"text":"Nugget\'s Socks"}'}}
item replace entity @a[scores={permanent_elytra=1},nbt=!{Inventory:[{Slot:102b}]}] armor.chest with elytra

scoreboard players remove @a[scores={nether_portal_cooldown=1..}] nether_portal_cooldown 5

execute in build:release/overworld run function build:misc/manage_release_worlds/main
execute in build:release/the_nether run function build:misc/manage_release_worlds/main

execute in build:release/overworld run function build:misc/release_map_specific_loop

execute as @e[type=marker,tag=place_red_mushroom] at @s run function build:misc/place_red_mushroom
execute as @e[type=marker,tag=place_brown_mushroom] at @s run function build:misc/place_brown_mushroom

schedule function build:main_loop 5t
