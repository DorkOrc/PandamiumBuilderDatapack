data remove storage build:temp compare
data modify storage build:temp compare set string storage build:temp string 0 3
execute if data storage build:temp {compare:'eft'} run scoreboard players set <found> variable 1
execute if score <found> variable matches 1 run data modify storage build:temp value set value 'left'
execute if score <found> variable matches 1 run data modify storage build:temp string set string storage build:temp string 3
execute if score <found> variable matches 1 run return 0
