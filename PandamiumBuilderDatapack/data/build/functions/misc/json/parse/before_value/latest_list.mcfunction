execute if data storage build:json {char:'"'} run function build:misc/json/parse/before_value/latest_list/read_plain_text
execute if data storage build:json {char:'{'} run function build:misc/json/parse/before_value/latest_list/append_compound
execute if data storage build:json {char:'['} run function build:misc/json/parse/before_value/latest_list/append_list
