#tellraw @a {"text":"KEY","color":"yellow"}

execute if score <index_in_value> variable matches 0 if data storage build:temp {char:'#'} run scoreboard players set <continue> variable 1
execute if score <continue> variable matches 1 run return 0

execute if data storage build:temp {char:' '} run scoreboard players remove <index_in_value> variable 1
execute if data storage build:temp {char:' '} run return 0

execute if data storage build:temp key if data storage build:temp {char:'='} run scoreboard players set <next_state> variable 1
execute if score <next_state> variable matches 1 run return 0

scoreboard players set <found> variable 0
execute if data storage build:temp {char:'b'} run function build:custom_blocks/text_display_manager/parse_config/reading_key/check_for_key/b
execute if data storage build:temp {char:'p'} run function build:custom_blocks/text_display_manager/parse_config/reading_key/check_for_key/p
execute if data storage build:temp {char:'r'} run function build:custom_blocks/text_display_manager/parse_config/reading_key/check_for_key/r
execute if data storage build:temp {char:'s'} run function build:custom_blocks/text_display_manager/parse_config/reading_key/check_for_key/s
execute if data storage build:temp {char:'x'} run function build:custom_blocks/text_display_manager/parse_config/reading_key/check_for_key/x
execute if data storage build:temp {char:'y'} run function build:custom_blocks/text_display_manager/parse_config/reading_key/check_for_key/y
execute if data storage build:temp {char:'z'} run function build:custom_blocks/text_display_manager/parse_config/reading_key/check_for_key/z

execute if data storage build:temp key run return 0

data modify storage build:temp compare set from storage build:dictionary newline
execute store success score <different> variable run data modify storage build:temp compare set from storage build:temp char
execute if score <different> variable matches 0 run scoreboard players remove <index_in_value> variable 1
execute if score <different> variable matches 1 run scoreboard players set <error> variable 1
