scoreboard players set <special_case> variable 0

execute if data storage build:set_block {SelectedItem:{id:"small_dripleaf"}} run data merge storage build:set_block {SelectedItem:{id:"minecraft:small_dripleaf"}}
execute if data storage build:set_block {SelectedItem:{id:"minecraft:small_dripleaf"}} run scoreboard players set <special_case> variable 1
execute if data storage build:set_block {SelectedItem:{id:"minecraft:small_dripleaf"}} run fill ~ ~1 ~ ~ ~1 ~ small_dripleaf[half=upper,waterlogged=false] replace #build:air
execute if data storage build:set_block {SelectedItem:{id:"minecraft:small_dripleaf"}} unless block ~ ~ ~ water run setblock ~ ~ ~ small_dripleaf[half=lower,waterlogged=false]
execute if data storage build:set_block {SelectedItem:{id:"minecraft:small_dripleaf"}} run fill ~ ~1 ~ ~ ~1 ~ small_dripleaf[half=upper,waterlogged=true] replace water
execute if data storage build:set_block {SelectedItem:{id:"minecraft:small_dripleaf"}} if block ~ ~ ~ water run setblock ~ ~ ~ small_dripleaf[half=lower,waterlogged=true]

execute if data storage build:set_block {SelectedItem:{id:"sunflower"}} run data merge storage build:set_block {SelectedItem:{id:"minecraft:sunflower"}}
execute if data storage build:set_block {SelectedItem:{id:"minecraft:sunflower"}} run scoreboard players set <special_case> variable 1
execute if data storage build:set_block {SelectedItem:{id:"minecraft:sunflower"}} run fill ~ ~1 ~ ~ ~1 ~ sunflower[half=upper] replace #build:air
execute if data storage build:set_block {SelectedItem:{id:"minecraft:sunflower"}} run setblock ~ ~ ~ sunflower[half=lower]

execute if data storage build:set_block {SelectedItem:{id:"lilac"}} run data merge storage build:set_block {SelectedItem:{id:"minecraft:lilac"}}
execute if data storage build:set_block {SelectedItem:{id:"minecraft:lilac"}} run scoreboard players set <special_case> variable 1
execute if data storage build:set_block {SelectedItem:{id:"minecraft:lilac"}} run fill ~ ~1 ~ ~ ~1 ~ lilac[half=upper] replace #build:air
execute if data storage build:set_block {SelectedItem:{id:"minecraft:lilac"}} run setblock ~ ~ ~ lilac[half=lower]

execute if data storage build:set_block {SelectedItem:{id:"rose_bush"}} run data merge storage build:set_block {SelectedItem:{id:"minecraft:rose_bush"}}
execute if data storage build:set_block {SelectedItem:{id:"minecraft:rose_bush"}} run scoreboard players set <special_case> variable 1
execute if data storage build:set_block {SelectedItem:{id:"minecraft:rose_bush"}} run fill ~ ~1 ~ ~ ~1 ~ rose_bush[half=upper] replace #build:air
execute if data storage build:set_block {SelectedItem:{id:"minecraft:rose_bush"}} run setblock ~ ~ ~ rose_bush[half=lower]

execute if data storage build:set_block {SelectedItem:{id:"peony"}} run data merge storage build:set_block {SelectedItem:{id:"minecraft:peony"}}
execute if data storage build:set_block {SelectedItem:{id:"minecraft:peony"}} run scoreboard players set <special_case> variable 1
execute if data storage build:set_block {SelectedItem:{id:"minecraft:peony"}} run fill ~ ~1 ~ ~ ~1 ~ peony[half=upper] replace #build:air
execute if data storage build:set_block {SelectedItem:{id:"minecraft:peony"}} run setblock ~ ~ ~ peony[half=lower]

execute if data storage build:set_block {SelectedItem:{id:"tall_grass"}} run data merge storage build:set_block {SelectedItem:{id:"minecraft:tall_grass"}}
execute if data storage build:set_block {SelectedItem:{id:"minecraft:tall_grass"}} run scoreboard players set <special_case> variable 1
execute if data storage build:set_block {SelectedItem:{id:"minecraft:tall_grass"}} run fill ~ ~1 ~ ~ ~1 ~ tall_grass[half=upper] replace #build:air
execute if data storage build:set_block {SelectedItem:{id:"minecraft:tall_grass"}} run setblock ~ ~ ~ tall_grass[half=lower]

execute if data storage build:set_block {SelectedItem:{id:"large_fern"}} run data merge storage build:set_block {SelectedItem:{id:"minecraft:large_fern"}}
execute if data storage build:set_block {SelectedItem:{id:"minecraft:large_fern"}} run scoreboard players set <special_case> variable 1
execute if data storage build:set_block {SelectedItem:{id:"minecraft:large_fern"}} run fill ~ ~1 ~ ~ ~1 ~ large_fern[half=upper] replace #build:air
execute if data storage build:set_block {SelectedItem:{id:"minecraft:large_fern"}} run setblock ~ ~ ~ large_fern[half=lower]

execute if score <special_case> variable matches 1 run scoreboard players set <can_run> variable 0
execute if score <special_case> variable matches 1 run tellraw @s [{"text":"[Build]","color":"dark_green"},{"text":" Placed ","color":"green"},{"storage":"build:set_block","nbt":"SelectedItem.id","color":"aqua"}]
