data modify storage build:textdm parse_data.string set from storage build:textdm io.data
data remove storage build:textdm parse_data.char
data modify storage build:textdm io.data set value {}

data remove storage build:textdm parse_data.key
data remove storage build:textdm parse_data.value

scoreboard players set <fatal_error> variable 0
scoreboard players set <has_been_read> variable 0
scoreboard players set <position> variable 0
scoreboard players set <continue> variable 0
scoreboard players set <skip_to_next_kv_pair> variable 0
scoreboard players set <state> variable 0
scoreboard players set <data_type> variable 0

execute summon marker run function build:textdm/update/parse_data/as_marker
