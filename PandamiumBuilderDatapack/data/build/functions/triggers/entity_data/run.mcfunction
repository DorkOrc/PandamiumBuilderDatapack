tag @s add running_trigger
tag @e[limit=1,sort=nearest,distance=..7,type=!player,type=!marker,tag=!Corner,tag=!CloneDisplay,tag=!ClickDetector,tag=!map_specific.fake_block,tag=!custom_block.display,tag=!elevator,predicate=!build:is_riding_and_entity] add selected_entity

execute store success score <entity_exists> variable if entity @e[tag=selected_entity]

execute if score <entity_exists> variable matches 1 run data modify storage build:entity_data NBT set from entity @e[tag=selected_entity,limit=1]
execute if score <entity_exists> variable matches 1 if score @s entity_data matches ..-1 run function build:triggers/entity_data/edit
execute if score <entity_exists> variable matches 1 if score @s entity_data matches ..-1 run data modify storage build:entity_data NBT set from entity @e[tag=selected_entity,limit=1]

execute if score <entity_exists> variable matches 0 run tellraw @s [{"text":"[Edit Entity]","color":"dark_red"},{"text":" There are no entities nearby!","color":"red"}]
execute if score <entity_exists> variable matches 1 run function build:triggers/entity_data/menu

tag @e remove selected_entity
tag @s remove running_trigger
