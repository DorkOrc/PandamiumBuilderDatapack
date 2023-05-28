data modify storage build:textdm parse_data.slice set string storage build:textdm parse_data.string 0 8
execute if data storage build:textdm parse_data{slice:'lignment'} store success score <continue> variable run data modify storage build:textdm parse_data.keyword set value 'alignment'
execute if score <continue> variable matches 1 run data modify storage build:textdm parse_data.string set string storage build:textdm parse_data.string 8
execute if score <continue> variable matches 1 run return 8
