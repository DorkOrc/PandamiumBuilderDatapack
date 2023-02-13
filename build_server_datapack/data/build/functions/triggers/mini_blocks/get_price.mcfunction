scoreboard players operation <reference_value> variable = @s mini_blocks
execute if score <section> variable matches -20..-11 run scoreboard players add <reference_value> variable 1000

scoreboard players set <valid_option> variable 1

scoreboard players reset <cost> variable
scoreboard players set <buying_mini_block> variable 0

execute if score <reference_value> variable matches -8 run scoreboard players set <buying_mini_block> variable 1
execute if score <section> variable matches -3..-2 run scoreboard players set <buying_mini_block> variable 1
execute if score <section> variable matches -200..-101 run scoreboard players set <buying_mini_block> variable 1
execute if score <section> variable matches ..-201 run scoreboard players set <buying_mini_block> variable 1

scoreboard players set <cost> variable 0

execute unless score <cost> variable = <cost> variable run scoreboard players set <valid_option> variable 0
