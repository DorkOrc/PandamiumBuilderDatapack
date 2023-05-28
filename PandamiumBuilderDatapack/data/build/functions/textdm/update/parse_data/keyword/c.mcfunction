data modify storage build:textdm parse_data.slice set string storage build:textdm parse_data.string 0 5
execute if data storage build:textdm parse_data{slice:'enter'} store success score <continue> variable run data modify storage build:textdm parse_data.keyword set value 'center'
execute if score <continue> variable matches 1 run data modify storage build:textdm parse_data.string set string storage build:textdm parse_data.string 5
execute if score <continue> variable matches 1 run return 5

data modify storage build:textdm parse_data.slice set string storage build:textdm parse_data.string 0 6
execute if data storage build:textdm parse_data{slice:'olumns'} store success score <continue> variable run data modify storage build:textdm parse_data.keyword set value 'columns'
execute if score <continue> variable matches 1 run data modify storage build:textdm parse_data.string set string storage build:textdm parse_data.string 6
execute if score <continue> variable matches 1 run return 6
