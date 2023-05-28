# build:textdm/update/parse_data/iter
scoreboard players set <continue> variable 0

execute if score <state> variable matches 1 if data storage build:textdm parse_data{char:';'} run function build:textdm/update/parse_data/kv_terminator/main
execute if score <continue> variable matches 1 run return 0

execute if score <skip_to_next_kv_pair> variable matches 1 run return 0

execute if score <state> variable matches 0 if data storage build:textdm parse_data{char:'='} run function build:textdm/update/parse_data/key_terminator/main
execute if score <continue> variable matches 1 run return 0

data modify entity @s data.char set from storage build:textdm parse_data.char
execute if predicate build:textdm/whitespace run return 0

execute if score <has_been_read> variable matches 0 run function build:textdm/update/parse_data/read_first_character
execute if score <continue> variable matches 1 run return 0

execute if score <fatal_error> variable matches 1 run return 0
scoreboard players set <fatal_error> variable 1
execute if score <fatal_error> variable matches 1 run tellraw @a[tag=source,limit=1] "unformatted_fatal_error: unexpected character or unrecognised keyword."
