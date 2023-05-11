data remove storage build:temp compare
data modify storage build:temp compare set string storage build:temp string 0 1
execute if data storage build:temp {compare:'g'} run scoreboard players set <found> variable 1
execute if score <found> variable matches 1 run data modify storage build:temp key set value 'bg'
execute if score <found> variable matches 1 run data modify storage build:temp string set string storage build:temp string 1
execute if score <found> variable matches 1 run return 0

data remove storage build:temp compare
data modify storage build:temp compare set string storage build:temp string 0 8
execute if data storage build:temp {compare:'illboard'} run scoreboard players set <found> variable 1
execute if score <found> variable matches 1 run data modify storage build:temp key set value 'billboard'
execute if score <found> variable matches 1 run data modify storage build:temp string set string storage build:temp string 8
execute if score <found> variable matches 1 run return 0
