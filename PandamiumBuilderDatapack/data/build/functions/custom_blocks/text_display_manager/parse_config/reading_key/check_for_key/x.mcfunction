data remove storage build:temp compare
data modify storage build:temp compare set string storage build:temp string 0 12
execute if data storage build:temp {compare:'_translation'} run scoreboard players set <found> variable 1
execute if score <found> variable matches 1 run data modify storage build:temp key set value 'x_translation'
execute if score <found> variable matches 1 run data modify storage build:temp string set string storage build:temp string 12
execute if score <found> variable matches 1 run return 0
