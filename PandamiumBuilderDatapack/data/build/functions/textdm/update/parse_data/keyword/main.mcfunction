scoreboard players set <has_been_read> variable 1
data remove storage build:textdm parse_data.keyword

execute if data storage build:textdm parse_data{char:'a'} run function build:textdm/update/parse_data/keyword/a
execute if data storage build:textdm parse_data{char:'b'} run function build:textdm/update/parse_data/keyword/b
execute if data storage build:textdm parse_data{char:'c'} run function build:textdm/update/parse_data/keyword/c
execute if data storage build:textdm parse_data{char:'f'} run function build:textdm/update/parse_data/keyword/f
execute if data storage build:textdm parse_data{char:'h'} run function build:textdm/update/parse_data/keyword/h
execute if data storage build:textdm parse_data{char:'l'} run function build:textdm/update/parse_data/keyword/l
execute if data storage build:textdm parse_data{char:'p'} run function build:textdm/update/parse_data/keyword/p
execute if data storage build:textdm parse_data{char:'r'} run function build:textdm/update/parse_data/keyword/r
execute if data storage build:textdm parse_data{char:'s'} run function build:textdm/update/parse_data/keyword/s
execute if data storage build:textdm parse_data{char:'t'} run function build:textdm/update/parse_data/keyword/t
execute if data storage build:textdm parse_data{char:'v'} run function build:textdm/update/parse_data/keyword/v
execute if data storage build:textdm parse_data{char:'x'} run function build:textdm/update/parse_data/keyword/x
execute if data storage build:textdm parse_data{char:'y'} run function build:textdm/update/parse_data/keyword/y
execute if data storage build:textdm parse_data{char:'z'} run function build:textdm/update/parse_data/keyword/z
execute if score <continue> variable matches 1 run return 0

scoreboard players set <fatal_error> variable 1
tellraw @a[tag=source,limit=1] ["[] error occurred in build:textdm/update/parse_data/keyword: unrecognised keyword; ",{"nbt":"parse_data.char","storage":"build:textdm","color":"red"},{"nbt":"parse_data.string","storage":"build:textdm","color":"yellow"}]
