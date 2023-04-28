scoreboard players set <bool> variable -1

execute if score <recognised> variable matches 0 run data modify storage build:json substring set string storage build:json string 0 3
execute if score <recognised> variable matches 0 if data storage build:json {char:'t'} if data storage build:json {substring:'rue'} run scoreboard players set <bool> variable 1
execute if score <recognised> variable matches 0 if score <bool> variable matches 1 store success score <recognised> variable run data modify storage build:json string set string storage build:json string 3

execute if score <recognised> variable matches 0 run data modify storage build:json substring set string storage build:json string 0 4
execute if score <recognised> variable matches 0 if data storage build:json {char:'f'} if data storage build:json {substring:'alse'} run scoreboard players set <bool> variable 0
execute if score <recognised> variable matches 0 if score <bool> variable matches 0 store success score <recognised> variable run data modify storage build:json string set string storage build:json string 4

execute if score <bool> variable matches 0..1 if data storage build:json key if data storage build:json stack[-1].flags{is_root:1b} run function build:misc/json/parse/after_key/store_root_bool_attribute

scoreboard players set <next_state> variable 0
