# run AT @s

tag @s add running_trigger

data modify storage build:temp NBT set from entity @s

execute unless data storage build:temp NBT.SelectedItem.tag.pandamium.stored_mob run tellraw @s [{"text":"[Save Mob]","color":"dark_red"},[{"text":" You must be holding a ","color":"red"},{"text":"Stored Mob Item","color":"gold"}," to run this trigger!"]]
execute if data storage build:temp NBT.SelectedItem.tag.pandamium.stored_mob run function build:misc/save_mob/spawn_pet_from_item

tag @s remove running_trigger
