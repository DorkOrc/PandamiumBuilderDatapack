execute if score <negative> variable matches 1 run scoreboard players operation <value_digits> variable *= #-1 constant
data modify storage build:temp value set value 0
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
