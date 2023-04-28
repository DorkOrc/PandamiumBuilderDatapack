data remove storage build:json value

execute if score <recognised> variable matches 0 run scoreboard players set <found_match> variable 0
execute if score <recognised> variable matches 0 run data modify storage build:json substring set string storage build:json string 0 14
execute if score <recognised> variable matches 0 if data storage build:json {substring:'minecraft:alt"'} store success score <found_match> variable run data modify storage build:json value set value 'minecraft:alt'
execute if score <recognised> variable matches 0 if score <found_match> variable matches 1 store success score <recognised> variable run data modify storage build:json string set string storage build:json string 14

execute if score <recognised> variable matches 0 run data modify storage build:json substring set string storage build:json string 0 18
execute if score <recognised> variable matches 0 run scoreboard players set <found_match> variable 1
execute if score <recognised> variable matches 0 unless data storage build:json {substring:'minecraft:default"'} unless data storage build:json {substring:'minecraft:uniform"'} run scoreboard players set <found_match> variable 0
execute if score <recognised> variable matches 0 if score <found_match> variable matches 1 run data modify storage build:json string set string storage build:json string 18
execute if score <recognised> variable matches 0 if score <found_match> variable matches 1 store success score <recognised> variable run data modify storage build:json value set string storage build:json substring 0 17

execute if score <recognised> variable matches 0 run scoreboard players set <found_match> variable 0
execute if score <recognised> variable matches 0 run data modify storage build:json substring set string storage build:json string 0 21
execute if score <recognised> variable matches 0 if data storage build:json {substring:'minecraft:illageralt"'} store success score <found_match> variable run data modify storage build:json value set value 'minecraft:illageralt'
execute if score <recognised> variable matches 0 if score <found_match> variable matches 1 store success score <recognised> variable run data modify storage build:json string set string storage build:json string 21

execute if score <recognised> variable matches 1 if data storage build:json {key:'font'} run data modify storage build:json root_attributes.font set from storage build:json value
