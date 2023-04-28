execute if data storage build:json stack[-1].flags{is_list:1b} run function build:misc/json/parse/before_value/latest_list
execute unless data storage build:json stack[-1].flags{is_list:1b} if data storage build:json {char:'"'} run function build:misc/json/parse/before_value/latest_compound
