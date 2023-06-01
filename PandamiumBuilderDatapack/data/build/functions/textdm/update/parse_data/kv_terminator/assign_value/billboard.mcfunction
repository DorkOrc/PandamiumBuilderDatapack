execute if data storage build:textdm io.data.billboard run scoreboard players set <fatal_error> variable 1
execute if score <fatal_error> variable matches 1 run tellraw @a[tag=source,limit=1] [{"text":"ERR in assign_value: `billboard` is already assigned."}]
execute if score <fatal_error> variable matches 1 run return 0

execute unless data storage build:textdm parse_data{value:'center'} unless data storage build:textdm parse_data{value:'fixed'} unless data storage build:textdm parse_data{value:'horizontal'} unless data storage build:textdm parse_data{value:'vertical'} run scoreboard players set <fatal_error> variable 1
execute if score <fatal_error> variable matches 1 run tellraw @a[tag=source,limit=1] [{"text":"ERR in assign_value: Invalid keyword value. Expected `center`, `fixed`, `horizontal`, or `vertical`; instead, got %s"}]
execute if score <fatal_error> variable matches 1 run return 0

data modify storage build:textdm io.data.billboard set from storage build:textdm parse_data.value
scoreboard players set <successfully_assigned_value> variable 1
