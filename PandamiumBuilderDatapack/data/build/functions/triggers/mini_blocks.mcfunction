tag @s add running_trigger

# Get <section> and <value_in_section>
scoreboard players operation <section> variable = @s mini_blocks
scoreboard players operation <section> variable /= <100> variable

scoreboard players operation <value_in_section> variable = @s mini_blocks
execute unless score @s mini_blocks matches ..-1 run scoreboard players operation <value_in_section> variable %= <100> variable

execute if score @s mini_blocks matches ..-1 run scoreboard players operation <value_in_section> variable %= <100> variable
execute if score @s mini_blocks matches ..-1 run scoreboard players operation <value_in_section> variable *= <-1> variable
execute if score @s mini_blocks matches ..-1 run scoreboard players add <value_in_section> variable 100

# Print Menu
execute if score @s mini_blocks matches 1.. run function build:triggers/mini_blocks/print_menu/main

# Get price and validate option (returns <cost>, <valid_option>, <buying_mini_block> and <reference_value>)
execute if score @s mini_blocks matches ..-1 run function build:triggers/mini_blocks/get_price
execute if score @s mini_blocks matches ..-1 if score <valid_option> variable matches 0 run tellraw @s [{"text":"[Vote Shop]","color":"dark_red"},{"text":" That is not a valid option!","color":"red"}]

# Asks to confirm purchase (if no confirmation is required, the section is adjusted to forcably purchase the item)
execute if score <valid_option> variable matches 1 if score <section> variable matches -20..-11 run function build:triggers/mini_blocks/ask_to_confirm_purchase

# Purchase
execute if score <valid_option> variable matches 1 if score <section> variable matches -10..-1 run function build:triggers/mini_blocks/check_requirements
execute if score <valid_option> variable matches 1 if score <section> variable matches -200..-101 run function build:triggers/mini_blocks/check_requirements
execute if score <valid_option> variable matches 1 if score <section> variable matches ..-201 run function build:triggers/mini_blocks/check_requirements

kill @e[type=marker,tag=raycast.bedrock]
tag @s remove running_trigger
