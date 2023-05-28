scoreboard players set <has_been_read> variable 1
scoreboard players set <digits> variable 0
scoreboard players set <scale> variable -1

execute store success score <negative> variable if data storage build:textdm parse_data{char:'-'}
execute store success score <is_hexadecimal> variable if data storage build:textdm parse_data{char:'#'}

execute if score <negative> variable matches 0 if score <is_hexadecimal> variable matches 0 run function build:textdm/update/parse_data/numerical/iter
function build:textdm/update/parse_data/numerical/loop
execute if score <fatal_error> variable matches 1 run return 0

execute if score <negative> variable matches 1 run scoreboard players operation <digits> variable *= #-1 constant

execute if score <scale> variable matches -1..3 run scoreboard players set <continue> variable 1
execute if score <scale> variable matches -1 store result storage build:textdm parse_data.value int 1.0 run scoreboard players get <digits> variable
execute if score <scale> variable matches 0 store result storage build:textdm parse_data.value float 1.0 run scoreboard players get <digits> variable
execute if score <scale> variable matches 1 store result storage build:textdm parse_data.value float 0.1 run scoreboard players get <digits> variable
execute if score <scale> variable matches 2 store result storage build:textdm parse_data.value float 0.01 run scoreboard players get <digits> variable
execute if score <scale> variable matches 3 store result storage build:textdm parse_data.value float 0.001 run scoreboard players get <digits> variable
execute if score <scale> variable matches 4.. run scoreboard players set <fatal_error> variable 1
execute if score <fatal_error> variable matches 1 run tellraw @a[tag=source,limit=1] "ERR: accuracy error. Maximum decimals is 3"
execute if score <fatal_error> variable matches 1 run return 0
