data modify storage build:textdm parse_data.slice set string storage build:textdm parse_data.string 0 12
execute if data storage build:textdm parse_data{slice:'_translation'} store success score <continue> variable run data modify storage build:textdm parse_data.keyword set value 'x_translation'
execute if score <continue> variable matches 1 run data modify storage build:textdm parse_data.string set string storage build:textdm parse_data.string 12
execute if score <continue> variable matches 1 run return 12
