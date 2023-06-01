execute if data storage build:textdm io.data.spacing run scoreboard players set <fatal_error> variable 1
execute if score <fatal_error> variable matches 1 run tellraw @a[tag=source,limit=1] [{"text":"ERR in assign_value: `spacing` is already assigned."}]
execute if score <fatal_error> variable matches 1 run return 0

execute store result score <value> variable run data get storage build:textdm parse_data.value 1000
execute if score <value> variable matches ..-1 run scoreboard players set <fatal_error> variable 1
execute if score <fatal_error> variable matches 1 run tellraw @a[tag=source,limit=1] [{"text":"ERR in assign_value: value out of range. Must be greater than or equal to 0.0"}]
execute if score <fatal_error> variable matches 1 run return 0

execute store result storage build:textdm io.data.spacing float 0.001 run data get storage build:textdm parse_data.value 1000
scoreboard players set <successfully_assigned_value> variable 1
