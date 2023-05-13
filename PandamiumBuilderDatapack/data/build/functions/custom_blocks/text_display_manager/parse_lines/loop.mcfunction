scoreboard players add <page> variable 1

data remove storage build:temp compare
data modify storage build:temp compare set string storage build:temp pages[0] -3

function build:custom_blocks/text_display_manager/parse_lines/concat_line
execute if score <error> variable matches 0 unless data storage build:temp {compare:'...'} run function build:custom_blocks/text_display_manager/parse_lines/add_line

data remove storage build:temp pages[0]
execute if score <error> variable matches 0 if data storage build:temp pages[0] run function build:custom_blocks/text_display_manager/parse_lines/loop
