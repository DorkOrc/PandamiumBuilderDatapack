data modify storage build:textdm parse_data.char set string storage build:textdm parse_data.string 0 1
data modify storage build:textdm parse_data.string set string storage build:textdm parse_data.string 1

function build:textdm/update/parse_data/iter

execute if score <fatal_error> variable matches 0 unless data storage build:textdm parse_data{string:''} run function build:textdm/update/parse_data/loop
