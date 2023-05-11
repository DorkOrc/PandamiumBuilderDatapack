data remove storage build:temp compare
data modify storage build:temp compare set string storage build:temp string 0 9
execute if data storage build:temp {compare:'orizontal'} run scoreboard players set <found> variable 1
execute if score <found> variable matches 1 run data modify storage build:temp value set value 'horizontal'
execute if score <found> variable matches 1 run data modify storage build:temp string set string storage build:temp string 9
execute if score <found> variable matches 1 run return 0
