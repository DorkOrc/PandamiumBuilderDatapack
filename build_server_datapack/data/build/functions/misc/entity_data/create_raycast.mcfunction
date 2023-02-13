kill @e[type=marker,tag=entity_data.raycast,limit=1]
tag @e[tag=selected_entity] remove selected_entity

summon marker ~ ~ ~ {Tags:["entity_data.raycast"]}
execute at @s anchored eyes run tp @e[type=marker,tag=entity_data.raycast,x=0,limit=1] ^ ^ ^ ~ ~

tag @e[type=armor_stand,nbt={Marker:1b}] add entity_data.marker_armor_stand
execute as @e[type=armor_stand,tag=entity_data.marker_armor_stand] run data merge entity @s {Marker:0b}

scoreboard players set <raycast_iters> variable 0
execute as @e[type=marker,tag=entity_data.raycast,x=0,limit=1] at @s run function build:misc/entity_data/raycast

execute as @e[type=armor_stand,tag=entity_data.marker_armor_stand] run data merge entity @s {Marker:1b}
tag @e[type=armor_stand,tag=entity_data.marker_armor_stand] remove entity_data.marker_armor_stand

execute at @e[tag=selected_entity] run particle firework ~ ~0.5 ~ 0 0.5 0 0.05 10
