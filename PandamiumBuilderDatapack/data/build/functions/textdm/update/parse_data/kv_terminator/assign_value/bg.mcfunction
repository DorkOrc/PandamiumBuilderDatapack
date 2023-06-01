execute if data storage build:textdm io.data.bg run scoreboard players set <fatal_error> variable 1
execute if score <fatal_error> variable matches 1 run tellraw @a[tag=source,limit=1] [{"text":"ERR in assign_value: `bg` is already assigned."}]
execute if score <fatal_error> variable matches 1 run return 0

execute store result storage build:textdm io.data.bg int 1 run data get storage build:textdm parse_data.value
scoreboard players set <successfully_assigned_value> variable 1
