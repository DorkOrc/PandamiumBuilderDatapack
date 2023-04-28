data modify storage build:json stack append value {text:[],extra:[]}
execute unless data storage build:json stack[2] run data modify storage build:json stack[-1].flags.is_root set value 1b
execute store success score <recognised> variable run scoreboard players set <next_state> variable 1
