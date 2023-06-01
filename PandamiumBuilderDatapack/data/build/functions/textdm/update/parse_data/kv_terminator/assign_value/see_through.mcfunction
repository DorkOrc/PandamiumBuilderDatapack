execute if data storage build:textdm io.data.see_through run scoreboard players set <fatal_error> variable 1
execute if score <fatal_error> variable matches 1 run tellraw @a[tag=source,limit=1] [{"text":"ERR in assign_value: `see_through` is already assigned."}]
execute if score <fatal_error> variable matches 1 run return 0

execute unless data storage build:textdm parse_data{value:'false'} unless data storage build:textdm parse_data{value:'true'} run scoreboard players set <fatal_error> variable 1
execute if score <fatal_error> variable matches 1 run tellraw @a[tag=source,limit=1] [{"text":"ERR in assign_value: Invalid keyword value. Expected `false`, or `true`; instead, got %s"}]
execute if score <fatal_error> variable matches 1 run return 0

data modify storage build:textdm io.data.see_through set from storage build:textdm parse_data.value
scoreboard players set <successfully_assigned_value> variable 1
