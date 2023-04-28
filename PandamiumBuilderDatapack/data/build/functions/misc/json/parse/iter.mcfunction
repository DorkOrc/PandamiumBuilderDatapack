data modify storage build:json char set string storage build:json string 0 1
data modify storage build:json string set string storage build:json string 1
scoreboard players set <recognised> variable 0

execute if data storage build:json {char:' '} run scoreboard players set <recognised> variable 1

execute if score <recognised> variable matches 0 if score <state> variable matches 0 if data storage build:json {char:','} store success score <recognised> variable run scoreboard players set <next_state> variable 1
execute if score <recognised> variable matches 0 if score <state> variable matches 1 run function build:misc/json/parse/before_value

execute if score <recognised> variable matches 0 if score <state> variable matches 0..1 if data storage build:json {char:'}'} run function build:misc/json/parse/before_terminus
execute if score <recognised> variable matches 0 if score <state> variable matches 0..1 if data storage build:json {char:']'} run function build:misc/json/parse/before_terminus

execute if score <recognised> variable matches 0 if score <state> variable matches 2 if data storage build:json {char:':'} store success score <recognised> variable run scoreboard players set <next_state> variable 3
execute if score <recognised> variable matches 0 if score <state> variable matches 3 run function build:misc/json/parse/after_key

#tellraw DorkOrc [{"nbt":"char","storage":"build:json"}," ",{"score":{"name":"<state>","objective":"variable"}}," -> ",{"score":{"name":"<next_state>","objective":"variable"}}," ",{"nbt":"stack","storage":"build:json"}]

execute if score <next_state> variable = <next_state> variable run scoreboard players operation <state> variable = <next_state> variable
scoreboard players reset <next_state> variable
execute unless data storage build:json {string:''} run function build:misc/json/parse/iter
