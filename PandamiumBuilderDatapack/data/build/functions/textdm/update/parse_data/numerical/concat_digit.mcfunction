execute if score <scale> variable matches 0.. run scoreboard players add <scale> variable 1
execute if score <is_hexadecimal> variable matches 0 run scoreboard players operation <digits> variable *= #10 constant
execute if score <is_hexadecimal> variable matches 1 run scoreboard players operation <digits> variable *= #16 constant
scoreboard players operation <digits> variable += <char_value> variable
