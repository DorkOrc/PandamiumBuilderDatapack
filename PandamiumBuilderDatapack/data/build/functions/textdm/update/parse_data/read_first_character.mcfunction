scoreboard players set <has_been_read> variable 1

scoreboard players set <numerical_type> variable 1
execute unless data storage build:textdm parse_data{char:'#'} unless data storage build:textdm parse_data{char:'-'} unless data storage build:textdm parse_data{char:'0'} unless data storage build:textdm parse_data{char:'1'} unless data storage build:textdm parse_data{char:'2'} unless data storage build:textdm parse_data{char:'3'} unless data storage build:textdm parse_data{char:'4'} unless data storage build:textdm parse_data{char:'5'} unless data storage build:textdm parse_data{char:'6'} unless data storage build:textdm parse_data{char:'7'} unless data storage build:textdm parse_data{char:'8'} unless data storage build:textdm parse_data{char:'9'} unless data storage build:textdm parse_data{char:'.'} run scoreboard players set <numerical_type> variable 0
execute if score <numerical_type> variable matches 1 run function build:textdm/update/parse_data/numerical/main
execute if score <numerical_type> variable matches 0 run function build:textdm/update/parse_data/keyword/main
execute if score <numerical_type> variable matches 0 if score <state> variable matches 0 run data modify storage build:textdm parse_data.key set from storage build:textdm parse_data.keyword
execute if score <numerical_type> variable matches 0 if score <state> variable matches 1 run data modify storage build:textdm parse_data.value set from storage build:textdm parse_data.keyword
