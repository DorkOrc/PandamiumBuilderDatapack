execute if score <scale_back> variable matches 0.. run scoreboard players add <scale_back> variable 1

execute if score <index_in_value> variable matches 0 if data storage build:temp {char:'-'} run scoreboard players set <negative> variable 1
execute if score <index_in_value> variable matches 0 if data storage build:temp {char:'-'} run return 0

execute if data storage build:temp {char:' '} run scoreboard players remove <index_in_value> variable 1
execute if data storage build:temp {char:' '} run return 0

scoreboard players set <character_value> variable -1
execute if data storage build:temp {char:'0'} run scoreboard players set <character_value> variable 0
execute if data storage build:temp {char:'1'} run scoreboard players set <character_value> variable 1
execute if data storage build:temp {char:'2'} run scoreboard players set <character_value> variable 2
execute if data storage build:temp {char:'3'} run scoreboard players set <character_value> variable 3
execute if data storage build:temp {char:'4'} run scoreboard players set <character_value> variable 4
execute if data storage build:temp {char:'5'} run scoreboard players set <character_value> variable 5
execute if data storage build:temp {char:'6'} run scoreboard players set <character_value> variable 6
execute if data storage build:temp {char:'7'} run scoreboard players set <character_value> variable 7
execute if data storage build:temp {char:'8'} run scoreboard players set <character_value> variable 8
execute if data storage build:temp {char:'9'} run scoreboard players set <character_value> variable 9
execute if data storage build:temp {char:'.'} if score <scale_back> variable matches -1 run scoreboard players set <character_value> variable 10

execute if score <character_value> variable matches 0..9 run function build:custom_blocks/text_display_manager/parse_config/reading_value/new_digit
execute if score <character_value> variable matches 10 run scoreboard players set <scale_back> variable 0

execute unless score <character_value> variable matches -1 run return 0

scoreboard players set <continue> variable 1
