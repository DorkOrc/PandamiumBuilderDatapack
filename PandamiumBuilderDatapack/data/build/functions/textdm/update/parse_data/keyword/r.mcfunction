data modify storage build:textdm parse_data.slice set string storage build:textdm parse_data.string 0 3
execute if data storage build:textdm parse_data{slice:'oll'} store success score <continue> variable run data modify storage build:textdm parse_data.keyword set value 'roll'
execute if score <continue> variable matches 1 run data modify storage build:textdm parse_data.string set string storage build:textdm parse_data.string 3
execute if score <continue> variable matches 1 run return 3

data modify storage build:textdm parse_data.slice set string storage build:textdm parse_data.string 0 4
execute if data storage build:textdm parse_data{slice:'ight'} store success score <continue> variable run data modify storage build:textdm parse_data.keyword set value 'right'
execute if score <continue> variable matches 1 run data modify storage build:textdm parse_data.string set string storage build:textdm parse_data.string 4
execute if score <continue> variable matches 1 run return 4

data modify storage build:textdm parse_data.slice set string storage build:textdm parse_data.string 0 3
execute if data storage build:textdm parse_data{slice:'ows'} store success score <continue> variable run data modify storage build:textdm parse_data.keyword set value 'rows'
execute if score <continue> variable matches 1 run data modify storage build:textdm parse_data.string set string storage build:textdm parse_data.string 3
execute if score <continue> variable matches 1 run return 3
