execute at @e[tag=invisible] run particle dust 1 0 0 1 ~ ~ ~ 0 0 0 0 1 normal @a[scores={invis_indicators=1}]

effect give @a[scores={night_vis_option=1}] night_vision 1000000 0 true
effect clear @a[scores={night_vis_option=2,is_spectator=1},gamemode=!spectator] night_vision
effect give @a[scores={night_vis_option=2},gamemode=spectator] night_vision 1000000 0 true
execute as @a store success score @s is_spectator if entity @s[gamemode=spectator]

item replace entity @a[scores={permanent_socks=1},nbt=!{Inventory:[{Slot:100b}]}] armor.feet with leather_boots{display:{color:3837017,Name:'{"text":"Nugget\'s Socks"}'}}
item replace entity @a[scores={permanent_elytra=1},nbt=!{Inventory:[{Slot:100b}]}] armor.feet with eytra

schedule function build:main_loop 5t
