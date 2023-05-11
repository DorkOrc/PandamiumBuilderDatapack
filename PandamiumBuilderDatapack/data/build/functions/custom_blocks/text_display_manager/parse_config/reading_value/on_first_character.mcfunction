execute if data storage build:temp {char:'-'} run scoreboard players set <negative> variable 1
execute if data storage build:temp {char:'-'} run return 1

execute if data storage build:temp {char:'#'} run scoreboard players set <hexadecimal> variable 1
execute if data storage build:temp {char:'#'} run return 1

scoreboard players set <found> variable 0
execute if data storage build:temp {char:'c'} run function build:custom_blocks/text_display_manager/parse_config/reading_value/check_for_string/c
execute if data storage build:temp {char:'f'} run function build:custom_blocks/text_display_manager/parse_config/reading_value/check_for_string/f
execute if data storage build:temp {char:'h'} run function build:custom_blocks/text_display_manager/parse_config/reading_value/check_for_string/h
execute if data storage build:temp {char:'t'} run function build:custom_blocks/text_display_manager/parse_config/reading_value/check_for_string/t
execute if data storage build:temp {char:'v'} run function build:custom_blocks/text_display_manager/parse_config/reading_value/check_for_string/v
execute if score <found> variable matches 1 run scoreboard players set <is_string> variable 1
execute if score <found> variable matches 1 run return 1

return 0
