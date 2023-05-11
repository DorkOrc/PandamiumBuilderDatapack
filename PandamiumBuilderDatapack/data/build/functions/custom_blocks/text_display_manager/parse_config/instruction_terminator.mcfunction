execute if score <scale_back> variable matches -1 store result storage build:temp value int 1 run scoreboard players get <value_digits> variable
execute if score <scale_back> variable matches 0 store result storage build:temp value float 1 run scoreboard players get <value_digits> variable
execute if score <scale_back> variable matches 1 store result storage build:temp value float 0.1 run scoreboard players get <value_digits> variable
execute if score <scale_back> variable matches 2 store result storage build:temp value float 0.01 run scoreboard players get <value_digits> variable
execute if score <scale_back> variable matches 3 store result storage build:temp value float 0.001 run scoreboard players get <value_digits> variable
execute if score <scale_back> variable matches 4 store result storage build:temp value float 0.0001 run scoreboard players get <value_digits> variable
execute if score <scale_back> variable matches 5 store result storage build:temp value float 0.00001 run scoreboard players get <value_digits> variable
execute if score <scale_back> variable matches 6 store result storage build:temp value float 0.000001 run scoreboard players get <value_digits> variable
execute if score <scale_back> variable matches 7 store result storage build:temp value float 0.0000001 run scoreboard players get <value_digits> variable
execute if score <scale_back> variable matches 8 store result storage build:temp value float 0.00000001 run scoreboard players get <value_digits> variable
execute if score <scale_back> variable matches 9 store result storage build:temp value float 0.000000001 run scoreboard players get <value_digits> variable

execute if data storage build:temp {key:'bg'} run data modify storage build:temp config.bg set from storage build:temp value
execute if data storage build:temp {key:'scale'} run data modify storage build:temp config.scale set from storage build:temp value
execute if data storage build:temp {key:'x_translation'} run data modify storage build:temp config.x_translation set from storage build:temp value
execute if data storage build:temp {key:'y_translation'} run data modify storage build:temp config.y_translation set from storage build:temp value
execute if data storage build:temp {key:'z_translation'} run data modify storage build:temp config.z_translation set from storage build:temp value

#execute if score <continue> variable matches 0 run tellraw @a ["",{"nbt":"key","storage":"build:temp"}," <- ",{"nbt":"value","storage":"build:temp"}," (",{"score":{"name":"<value_digits>","objective":"variable"}},", ",{"score":{"name":"<scale_back>","objective":"variable"}},")"]
#execute if score <continue> variable matches 1 run tellraw @a ["; CONTINUED"]

scoreboard players set <continue> variable 0
scoreboard players set <index_in_value> variable -1
scoreboard players set <next_state> variable 0
data remove storage build:temp key
