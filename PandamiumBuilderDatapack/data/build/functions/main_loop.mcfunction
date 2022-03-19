execute at @e[tag=invisible] run particle dust 1 0 0 1 ~ ~ ~ 0 0 0 0 1 normal @a[scores={invis_indicators=1}]

effect give @a[scores={night_vis_option=1}] night_vision 1000000 0 true
effect clear @a[scores={night_vis_option=2,is_spectator=1},gamemode=!spectator] night_vision
effect give @a[scores={night_vis_option=2},gamemode=spectator] night_vision 1000000 0 true
execute as @a store success score @s is_spectator if entity @s[gamemode=spectator]

item replace entity @a[scores={permanent_socks=1},nbt=!{Inventory:[{Slot:100b}]}] armor.feet with leather_boots{display:{color:3837017,Name:'{"text":"Nugget\'s Socks"}'}}
item replace entity @a[scores={permanent_elytra=1},nbt=!{Inventory:[{Slot:102b}]}] armor.chest with elytra

scoreboard players remove @a[scores={nether_portal_cooldown=1..}] nether_portal_cooldown 5

execute in build:release/overworld run tp @e[type=#build:snapshot_entities,x=0] 0 -1000 0
execute in build:release/the_nether run tp @e[type=#build:snapshot_entities,x=0] 0 -1000 0
execute as @e[type=boat] if data entity @s {Type:"mangrove"} run kill
execute in build:release/overworld run clear @a[x=0] #build:snapshot_items
execute in build:release/the_nether run clear @a[x=0] #build:snapshot_items

schedule function build:main_loop 5t
