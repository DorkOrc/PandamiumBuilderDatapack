execute if data storage build:json {char:'"'} run function build:misc/json/parse/after_key/read_string
execute if score <recognised> variable matches 0 if data storage build:json {char:'{'} run function build:misc/json/parse/after_key/open_compound
execute if score <recognised> variable matches 0 if data storage build:json {char:'['} run function build:misc/json/parse/after_key/open_list
execute if score <recognised> variable matches 0 if data storage build:json {char:'t'} run function build:misc/json/parse/after_key/read_bool
execute if score <recognised> variable matches 0 if data storage build:json {char:'f'} run function build:misc/json/parse/after_key/read_bool
