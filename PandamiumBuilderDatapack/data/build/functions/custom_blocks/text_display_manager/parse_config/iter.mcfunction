execute if data storage build:temp {char:';'} run function build:custom_blocks/text_display_manager/parse_config/instruction_terminator
execute if data storage build:temp {char:';'} run return 0

execute if score <continue> variable matches 1 run return 0

execute if data storage build:temp {char:'§'} run data modify storage build:temp string set string storage build:temp string 1
execute if data storage build:temp {char:'§'} run return 0

scoreboard players add <index_in_value> variable 1
#tellraw @a [{"nbt":"char","storage":"build:temp"}," ",{"score":{"name":"<state>","objective":"variable"}}," ",{"score":{"name":"<index_in_value>","objective":"variable"}}]
execute if score <state> variable matches 0 run function build:custom_blocks/text_display_manager/parse_config/reading_key/main
execute if score <state> variable matches 1 run function build:custom_blocks/text_display_manager/parse_config/reading_value/main
