execute store result score <overworld_entity_count> variable in overworld if entity @e[type=!player,x=0]
execute store result score <overworld_icne_entity_count> variable in overworld if entity @e[type=!player,x=0,type=!#pandamium:mob_limit_excluded]
execute store result score <overworld_armor_stand_count> variable in overworld if entity @e[type=armor_stand,x=0]
execute store result score <overworld_item_frame_count> variable in overworld if entity @e[type=#item_frames,x=0]
execute store result score <overworld_fake_block_count> variable in overworld if entity @e[type=marker,x=0,tag=map_specific.fake_block]

execute store result score <nether_entity_count> variable in the_nether if entity @e[type=!player,x=0]
execute store result score <nether_icne_entity_count> variable in the_nether if entity @e[type=!player,x=0,type=!#pandamium:mob_limit_excluded]
execute store result score <nether_armor_stand_count> variable in the_nether if entity @e[type=armor_stand,x=0]
execute store result score <nether_item_frame_count> variable in the_nether if entity @e[type=#item_frames,x=0]
execute store result score <nether_fake_block_count> variable in the_nether if entity @e[type=marker,x=0,tag=map_specific.fake_block]

execute store result score <event_overworld_entity_count> variable in build:event_world if entity @e[type=!player,x=0]
execute store result score <event_overworld_icne_entity_count> variable in build:event_world if entity @e[type=!player,x=0,type=!#pandamium:mob_limit_excluded]
execute store result score <event_overworld_armor_stand_count> variable in build:event_world if entity @e[type=armor_stand,x=0]
execute store result score <event_overworld_item_frame_count> variable in build:event_world if entity @e[type=#item_frames,x=0]
execute store result score <event_overworld_fake_block_count> variable in build:event_world if entity @e[type=marker,x=0,tag=map_specific.fake_block]

tellraw @s [{"text":"======== ","color":"aqua"},{"text":"World Info","bold":true}," ========"]

# The Overworld
execute unless score @s in_dimension matches 3 run function build:misc/world_info/overworld
execute if score @s in_dimension matches 3 run function build:misc/world_info/event_world

tellraw @s ""
function build:misc/world_info/the_nether


#

tellraw @s {"text":"\nOnly loaded entities are tracked!","color":"gray"}

execute if score <server> global matches 0 run tellraw @s [{"text":"\nDatapack Server Config: ","color":"green"},{"text":"Release Server","color":"aqua"}]
execute if score <server> global matches 1 run tellraw @s [{"text":"\nDatapack Server Config: ","color":"green"},{"text":"Snapshot Server","color":"aqua"}]

tellraw @s {"text":"============================","color":"aqua"}
