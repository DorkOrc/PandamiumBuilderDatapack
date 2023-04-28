execute if score <recognised> variable matches 0 run scoreboard players set <found_match> variable 0
execute if score <recognised> variable matches 0 run data modify storage build:json substring set string storage build:json string 0 9
execute if score <recognised> variable matches 0 if data storage build:json {substring:'contents"'} store success score <found_match> variable run data modify storage build:json key set value 'contents'
execute if score <recognised> variable matches 0 if score <found_match> variable matches 1 store success score <recognised> variable run data modify storage build:json string set string storage build:json string 9

execute if score <recognised> variable matches 0 run data modify storage build:json substring set string storage build:json string 0 11
execute if score <recognised> variable matches 0 run scoreboard players set <found_match> variable 1
execute if score <recognised> variable matches 0 unless data storage build:json {substring:'hoverEvent"'} unless data storage build:json {substring:'underlined"'} unless data storage build:json {substring:'obfuscated"'} run scoreboard players set <found_match> variable 0
execute if score <recognised> variable matches 0 if score <found_match> variable matches 1 run data modify storage build:json string set string storage build:json string 11
execute if score <recognised> variable matches 0 if score <found_match> variable matches 1 store success score <recognised> variable run data modify storage build:json key set string storage build:json substring 0 10

execute if score <recognised> variable matches 0 if data storage build:json stack[-1].flags.is_root run function build:misc/json/parse/before_value/latest_compound_root_only
