scoreboard players set <special_case> variable 0

execute if data storage build:set_block {first_page:"air"} run data merge storage build:set_block {first_page:"minecraft:air"}
execute if data storage build:set_block {first_page:"minecraft:air"} run scoreboard players set <special_case> variable 1
execute if data storage build:set_block {first_page:"minecraft:air"} run setblock ~ ~ ~ air

execute if data storage build:set_block {first_page:"cave_air"} run data merge storage build:set_block {first_page:"minecraft:cave_air"}
execute if data storage build:set_block {first_page:"minecraft:cave_air"} run scoreboard players set <special_case> variable 1
execute if data storage build:set_block {first_page:"minecraft:cave_air"} run setblock ~ ~ ~ cave_air

execute if data storage build:set_block {first_page:"void_air"} run data merge storage build:set_block {first_page:"minecraft:void_air"}
execute if data storage build:set_block {first_page:"minecraft:void_air"} run scoreboard players set <special_case> variable 1
execute if data storage build:set_block {first_page:"minecraft:void_air"} run setblock ~ ~ ~ void_air

execute if data storage build:set_block {first_page:"vine"} run data merge storage build:set_block {first_page:"minecraft:vine"}
execute if data storage build:set_block {first_page:"minecraft:vine"} unless data storage build:set_block pages[1] run scoreboard players set <special_case> variable 1
execute if data storage build:set_block {first_page:"minecraft:vine"} unless data storage build:set_block pages[1] run setblock ~ ~ ~ vine

execute if data storage build:set_block {first_page:"glow_lichen"} run data merge storage build:set_block {first_page:"minecraft:glow_lichen"}
execute if data storage build:set_block {first_page:"minecraft:glow_lichen"} unless data storage build:set_block pages[1] run scoreboard players set <special_case> variable 1
execute if data storage build:set_block {first_page:"minecraft:glow_lichen"} unless data storage build:set_block pages[1] run setblock ~ ~ ~ glow_lichen

execute if score <special_case> variable matches 1 run scoreboard players set <can_run> variable 0
execute if score <special_case> variable matches 1 run tellraw @s [{"text":"[Build]","color":"dark_green"},{"text":" Placed ","color":"green"},{"storage":"build:set_block","nbt":"first_page","color":"aqua"}]
