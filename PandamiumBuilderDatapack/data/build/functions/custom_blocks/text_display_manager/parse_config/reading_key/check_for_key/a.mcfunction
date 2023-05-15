data remove storage build:temp compare
data modify storage build:temp compare set string storage build:temp string 0 8
execute if data storage build:temp {compare:'lignment'} run scoreboard players set <found> variable 1
execute if score <found> variable matches 1 run data modify storage build:temp key set value 'alignment'
execute if score <found> variable matches 1 run data modify storage build:temp string set string storage build:temp string 8
execute if score <found> variable matches 1 run return 0
