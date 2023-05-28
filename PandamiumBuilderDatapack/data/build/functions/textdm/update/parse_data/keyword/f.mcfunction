data modify storage build:textdm parse_data.slice set string storage build:textdm parse_data.string 0 4
execute if data storage build:textdm parse_data{slice:'alse'} store success score <continue> variable run data modify storage build:textdm parse_data.keyword set value 'false'
execute if score <continue> variable matches 1 run data modify storage build:textdm parse_data.string set string storage build:textdm parse_data.string 4
execute if score <continue> variable matches 1 run return 4

data modify storage build:textdm parse_data.slice set string storage build:textdm parse_data.string 0 4
execute if data storage build:textdm parse_data{slice:'ixed'} store success score <continue> variable run data modify storage build:textdm parse_data.keyword set value 'fixed'
execute if score <continue> variable matches 1 run data modify storage build:textdm parse_data.string set string storage build:textdm parse_data.string 4
execute if score <continue> variable matches 1 run return 4
