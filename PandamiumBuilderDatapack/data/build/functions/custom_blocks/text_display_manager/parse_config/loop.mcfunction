data modify storage build:temp char set string storage build:temp string 0 1
data modify storage build:temp string set string storage build:temp string 1

scoreboard players operation <next_state> variable = <state> variable
function build:custom_blocks/text_display_manager/parse_config/iter
execute unless score <state> variable = <next_state> variable run function build:custom_blocks/text_display_manager/parse_config/change_state/main
scoreboard players operation <state> variable = <next_state> variable

execute if score <error> variable matches 0 unless data storage build:temp {string:''} run function build:custom_blocks/text_display_manager/parse_config/loop
