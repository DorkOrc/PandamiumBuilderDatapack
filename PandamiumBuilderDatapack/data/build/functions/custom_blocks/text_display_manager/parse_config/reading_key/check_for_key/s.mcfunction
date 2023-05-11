data remove storage build:temp compare
data modify storage build:temp compare set string storage build:temp string 0 4
execute if data storage build:temp {compare:'cale'} run scoreboard players set <found> variable 1
execute if score <found> variable matches 1 run data modify storage build:temp key set value 'scale'
execute if score <found> variable matches 1 run data modify storage build:temp string set string storage build:temp string 4
execute if score <found> variable matches 1 run return 0
