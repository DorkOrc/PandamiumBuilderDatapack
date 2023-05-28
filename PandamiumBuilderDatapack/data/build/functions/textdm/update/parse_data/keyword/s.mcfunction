data modify storage build:textdm parse_data.slice set string storage build:textdm parse_data.string 0 4
execute if data storage build:textdm parse_data{slice:'cale'} store success score <continue> variable run data modify storage build:textdm parse_data.keyword set value 'scale'
execute if score <continue> variable matches 1 run data modify storage build:textdm parse_data.string set string storage build:textdm parse_data.string 4
execute if score <continue> variable matches 1 run return 4

data modify storage build:textdm parse_data.slice set string storage build:textdm parse_data.string 0 10
execute if data storage build:textdm parse_data{slice:'ee_through'} store success score <continue> variable run data modify storage build:textdm parse_data.keyword set value 'see_through'
execute if score <continue> variable matches 1 run data modify storage build:textdm parse_data.string set string storage build:textdm parse_data.string 10
execute if score <continue> variable matches 1 run return 10

data modify storage build:textdm parse_data.slice set string storage build:textdm parse_data.string 0 6
execute if data storage build:textdm parse_data{slice:'pacing'} store success score <continue> variable run data modify storage build:textdm parse_data.keyword set value 'spacing'
execute if score <continue> variable matches 1 run data modify storage build:textdm parse_data.string set string storage build:textdm parse_data.string 6
execute if score <continue> variable matches 1 run return 6
