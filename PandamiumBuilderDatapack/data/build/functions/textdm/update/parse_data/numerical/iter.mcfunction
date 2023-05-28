execute store result score <char_value> variable run function build:textdm/update/parse_data/numerical/get_char_value

execute if score <char_value> variable matches 0..15 run function build:textdm/update/parse_data/numerical/concat_digit

execute if score <char_value> variable matches -1 if score <scale> variable matches 0.. run scoreboard players set <fatal_error> variable 0
execute if score <char_value> variable matches -1 if score <scale> variable matches -1 run scoreboard players set <scale> variable 0

execute if score <fatal_error> variable matches 1 run tellraw @a[tag=source,limit=1] "ERR: unexpected decimal point character (more than one)"

execute if score <char_value> variable matches -100 run scoreboard players set <continue> variable 1
