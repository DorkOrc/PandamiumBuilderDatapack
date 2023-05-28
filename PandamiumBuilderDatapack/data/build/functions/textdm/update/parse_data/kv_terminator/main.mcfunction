scoreboard players set <continue> variable 1
scoreboard players set <state> variable 0
scoreboard players set <has_been_read> variable 0

execute unless data storage build:textdm parse_data.key run scoreboard players set <fatal_error> variable 1
execute if score <fatal_error> variable matches 1 run tellraw @a[tag=source,limit=1] "unformatted_fatal_error: no key in kv_pair"
execute if score <fatal_error> variable matches 1 run return 0

execute unless data storage build:textdm parse_data.value run scoreboard players set <fatal_error> variable 1
execute if score <fatal_error> variable matches 1 run tellraw @a[tag=source,limit=1] "unformatted_fatal_error: no value in kv_pair"
execute if score <fatal_error> variable matches 1 run return 0

function build:textdm/update/parse_data/kv_terminator/assign_value

data remove storage build:textdm parse_data.key
data remove storage build:textdm parse_data.value
