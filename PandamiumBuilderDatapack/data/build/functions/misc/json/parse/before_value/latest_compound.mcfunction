data remove storage build:json key

execute if score <recognised> variable matches 0 run data modify storage build:json substring set string storage build:json string 0 5
execute if score <recognised> variable matches 0 run scoreboard players set <found_match> variable 1
execute if score <recognised> variable matches 0 unless data storage build:json {substring:'text"'} unless data storage build:json {substring:'bold"'} unless data storage build:json {substring:'font"'} run scoreboard players set <found_match> variable 0
execute if score <recognised> variable matches 0 if score <found_match> variable matches 1 run data modify storage build:json string set string storage build:json string 5
execute if score <recognised> variable matches 0 if score <found_match> variable matches 1 store success score <recognised> variable run data modify storage build:json key set string storage build:json substring 0 4

execute if score <recognised> variable matches 0 run data modify storage build:json substring set string storage build:json string 0 6
execute if score <recognised> variable matches 0 run scoreboard players set <found_match> variable 1
execute if score <recognised> variable matches 0 unless data storage build:json {substring:'extra"'} unless data storage build:json {substring:'color"'} run scoreboard players set <found_match> variable 0
execute if score <recognised> variable matches 0 if score <found_match> variable matches 1 run data modify storage build:json string set string storage build:json string 6
execute if score <recognised> variable matches 0 if score <found_match> variable matches 1 store success score <recognised> variable run data modify storage build:json key set string storage build:json substring 0 5

execute if score <recognised> variable matches 0 run function build:misc/json/parse/before_value/latest_compound_uncommon
execute if score <recognised> variable matches 0 run function build:misc/json/parse/string/ignore

#tellraw DorkOrc [{"nbt":"key","storage":"build:json"}," - ",{"nbt":"stack[-1].flags.is_root","storage":"build:json"}]

execute if score <found_original_text> variable matches 1 if data storage build:json {key:'extra'} if data storage build:json stack[-1].flags{is_root:1b} run data modify storage build:json string set value ''
execute if score <found_original_text> variable matches 1 if data storage build:json {key:'extra'} if data storage build:json stack[-1].flags{is_root:1b} run data remove storage build:json stack[]

scoreboard players set <next_state> variable 2
scoreboard players set <recognised> variable 1
