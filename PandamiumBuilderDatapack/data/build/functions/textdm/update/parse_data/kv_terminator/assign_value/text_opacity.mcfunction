execute if data storage build:textdm io.data.text_opacity run scoreboard players set <fatal_error> variable 1
execute if score <fatal_error> variable matches 1 run tellraw @a[tag=source,limit=1] [{"text":"ERR in assign_value: `text_opacity` is already assigned."}]
execute if score <fatal_error> variable matches 1 run return 0

execute store result score <value> variable run data get storage build:textdm parse_data.value
execute unless score <value> variable matches 26..255 run scoreboard players set <fatal_error> variable 1
execute if score <fatal_error> variable matches 1 run tellraw @a[tag=source,limit=1] [{"text":"ERR in assign_value: value out of range. Must be greater than or equal to 26 and less than or equal to 255"}]
execute if score <fatal_error> variable matches 1 run return 0

execute store result storage build:textdm io.data.text_opacity int 1 run data get storage build:textdm parse_data.value
scoreboard players set <successfully_assigned_value> variable 1
