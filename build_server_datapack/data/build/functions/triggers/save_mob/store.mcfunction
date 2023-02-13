# run AT @s

tag @s add running_trigger

function build:misc/count_filled_inventory_slots
execute store success score <entity_exists> variable if entity @e[distance=..10,type=#build:save_mob/mobs]

data modify storage build:temp NBT set from entity @s

execute as @e[limit=1,sort=nearest,distance=..10,type=#build:save_mob/mobs] run tag @s[type=#build:save_mob/storeables] add selected_entity
execute store success score <entity_can_run> variable if entity @e[tag=selected_entity]

execute if score <entity_exists> variable matches 0 run tellraw @s [{"text":"[Save Mob]","color":"dark_red"},{"text":" There are no mobs nearby!","color":"red"}]
execute if score <entity_exists> variable matches 1 if score <entity_can_run> variable matches 0 run tellraw @s [{"text":"[Save Mob]","color":"dark_red"},{"text":" The closest nearby mob cannot be stored!","color":"red"}]
execute if score <entity_exists> variable matches 1 if score <entity_can_run> variable matches 1 if score <filled_inventory_slots> variable matches 36.. run tellraw @s [{"text":"[Save Mob]","color":"dark_red"},{"text":" Your inventory is full!","color":"red"}]

execute if score <entity_exists> variable matches 1 if score <entity_can_run> variable matches 1 unless score <filled_inventory_slots> variable matches 36.. run tellraw @s [{"text":"[Save Mob]","color":"dark_green"},[{"text":" Turned ","color":"green"},[{"text":"","color":"aqua"},{"selector":"@e[type=#build:save_mob/storeables,limit=1,sort=nearest,distance=..10]"}]," into a ",{"text":"Stored Mob Item","color":"aqua"},"!"]]
execute unless score <filled_inventory_slots> variable matches 36.. as @e[tag=selected_entity,limit=1] in pandamium:staff_world run function build:misc/save_mob/create_item

tag @e remove selected_entity
tag @s remove running_trigger