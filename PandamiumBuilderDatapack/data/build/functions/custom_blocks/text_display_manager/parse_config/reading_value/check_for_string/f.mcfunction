data remove storage build:temp compare
data modify storage build:temp compare set string storage build:temp string 0 4
execute if data storage build:temp {compare:'alse'} run scoreboard players set <found> variable 1
execute if score <found> variable matches 1 run data modify storage build:temp value set value 'false'
execute if score <found> variable matches 1 run data modify storage build:temp string set string storage build:temp string 4
execute if score <found> variable matches 1 run return 0

data remove storage build:temp compare
data modify storage build:temp compare set string storage build:temp string 0 4
execute if data storage build:temp {compare:'ixed'} run scoreboard players set <found> variable 1
execute if score <found> variable matches 1 run data modify storage build:temp value set value 'fixed'
execute if score <found> variable matches 1 run data modify storage build:temp string set string storage build:temp string 4
execute if score <found> variable matches 1 run return 0
