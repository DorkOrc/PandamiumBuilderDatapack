data modify storage build:json stack append value {text:[],extra:[]}
execute if data storage build:json {key:'hoverEvent'} run data modify storage build:json stack[-1].flags.hover_event set value 1b
scoreboard players set <next_state> variable 1
scoreboard players set <recognised> variable 1
