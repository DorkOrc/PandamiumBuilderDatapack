execute unless data storage build:json stack[-1].flags{hover_event:1b} run data modify storage build:json stack[-2].extra append from storage build:json stack[-1].text[]
data modify storage build:json stack[-2].extra append from storage build:json stack[-1].extra[]
data remove storage build:json stack[-1]
scoreboard players set <next_state> variable 1
scoreboard players set <recognised> variable 1
