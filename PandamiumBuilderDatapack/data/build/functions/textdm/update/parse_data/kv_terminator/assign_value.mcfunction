scoreboard players set <successfully_assigned_value> variable 0

execute if data storage build:textdm parse_data{key:'bg'} run function build:textdm/update/parse_data/kv_terminator/assign_value/bg
execute if data storage build:textdm parse_data{key:'scale'} run function build:textdm/update/parse_data/kv_terminator/assign_value/scale
execute if data storage build:textdm parse_data{key:'x_translation'} run function build:textdm/update/parse_data/kv_terminator/assign_value/x_translation
execute if data storage build:textdm parse_data{key:'y_translation'} run function build:textdm/update/parse_data/kv_terminator/assign_value/y_translation
execute if data storage build:textdm parse_data{key:'z_translation'} run function build:textdm/update/parse_data/kv_terminator/assign_value/z_translation
execute if data storage build:textdm parse_data{key:'billboard'} run function build:textdm/update/parse_data/kv_terminator/assign_value/billboard
execute if data storage build:textdm parse_data{key:'alignment'} run function build:textdm/update/parse_data/kv_terminator/assign_value/alignment
execute if data storage build:textdm parse_data{key:'see_through'} run function build:textdm/update/parse_data/kv_terminator/assign_value/see_through
execute if data storage build:textdm parse_data{key:'yaw'} run function build:textdm/update/parse_data/kv_terminator/assign_value/yaw
execute if data storage build:textdm parse_data{key:'pitch'} run function build:textdm/update/parse_data/kv_terminator/assign_value/pitch
execute if data storage build:textdm parse_data{key:'roll'} run function build:textdm/update/parse_data/kv_terminator/assign_value/roll
execute if data storage build:textdm parse_data{key:'rows'} run function build:textdm/update/parse_data/kv_terminator/assign_value/rows
execute if data storage build:textdm parse_data{key:'columns'} run function build:textdm/update/parse_data/kv_terminator/assign_value/columns
execute if data storage build:textdm parse_data{key:'spacing'} run function build:textdm/update/parse_data/kv_terminator/assign_value/spacing
execute if data storage build:textdm parse_data{key:'text_opacity'} run function build:textdm/update/parse_data/kv_terminator/assign_value/text_opacity
execute if score <fatal_error> variable matches 1 run return 0

execute if score <successfully_assigned_value> variable matches 0 run scoreboard players set <fatal_error> variable 1
execute if score <fatal_error> variable matches 1 run tellraw @a[tag=source,limit=1] "ERR in assign_value: no value assigned"
execute if score <fatal_error> variable matches 1 run return 0
