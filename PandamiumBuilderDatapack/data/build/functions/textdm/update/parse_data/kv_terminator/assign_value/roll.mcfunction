execute if data storage build:textdm io.data.roll run scoreboard players set <fatal_error> variable 1
execute if score <fatal_error> variable matches 1 run tellraw @a[tag=source,limit=1] [{"text":"ERR in assign_value: `roll` is already assigned."}]
execute if score <fatal_error> variable matches 1 run return 0

execute store result storage build:textdm io.data.roll float 0.001 run data get storage build:textdm parse_data.value 1000
scoreboard players set <successfully_assigned_value> variable 1
