execute if data storage build:textdm parse_data{char:'0'} run return 0
execute if data storage build:textdm parse_data{char:'1'} run return 1
execute if data storage build:textdm parse_data{char:'2'} run return 2
execute if data storage build:textdm parse_data{char:'3'} run return 3
execute if data storage build:textdm parse_data{char:'4'} run return 4
execute if data storage build:textdm parse_data{char:'5'} run return 5
execute if data storage build:textdm parse_data{char:'6'} run return 6
execute if data storage build:textdm parse_data{char:'7'} run return 7
execute if data storage build:textdm parse_data{char:'8'} run return 8
execute if data storage build:textdm parse_data{char:'9'} run return 9
execute if score <is_hexadecimal> variable matches 0 if data storage build:textdm parse_data{char:'.'} run return -1
execute if score <is_hexadecimal> variable matches 0 run return -100
execute if data storage build:textdm parse_data{char:'a'} run return 10
execute if data storage build:textdm parse_data{char:'b'} run return 11
execute if data storage build:textdm parse_data{char:'c'} run return 12
execute if data storage build:textdm parse_data{char:'d'} run return 13
execute if data storage build:textdm parse_data{char:'e'} run return 14
execute if data storage build:textdm parse_data{char:'f'} run return 15
execute if data storage build:textdm parse_data{char:'A'} run return 10
execute if data storage build:textdm parse_data{char:'B'} run return 11
execute if data storage build:textdm parse_data{char:'C'} run return 12
execute if data storage build:textdm parse_data{char:'D'} run return 13
execute if data storage build:textdm parse_data{char:'E'} run return 14
execute if data storage build:textdm parse_data{char:'F'} run return 15
return -100
