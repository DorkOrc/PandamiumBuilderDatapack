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

tellraw @s [{"text":"======== ","color":"aqua"},{"text":"World Info","bold":true}," ========"]

tellraw @s [{"text":"Overworld:","bold":true,"color":"aqua"}]
tellraw @s [{"text":" Entities: ","color":"green"},{"score":{"name":"<overworld_entity_count>","objective":"variable"},"bold":true,"color":"aqua"}]
execute if score <server> persistent matches 1 run tellraw @s [{"text":" Entities (ICNE): ","color":"green","hoverEvent":{"action":"show_text","value":{"text":"Entities which are not excluded from the entity-limit (snapshot server only)","color":"green"}}},{"score":{"name":"<overworld_icne_entity_count>","objective":"variable"},"bold":true,"color":"aqua"}]
tellraw @s [{"text":" Armour Stands: ","color":"green"},{"score":{"name":"<overworld_armor_stand_count>","objective":"variable"},"bold":true,"color":"aqua"}]
tellraw @s [{"text":" Item Frames: ","color":"green"},{"score":{"name":"<overworld_item_frame_count>","objective":"variable"},"bold":true,"color":"aqua"}]
execute unless score <server> persistent matches 1 run tellraw @s [{"text":" Entities (ICNE): ","color":"#B7B7B7","hoverEvent":{"action":"show_text","value":{"text":"Entities which are not excluded from the entity-limit (snapshot server only)","color":"#B7B7B7"}}},{"score":{"name":"<overworld_icne_entity_count>","objective":"variable"},"bold":true,"color":"#C9C9C9"}]
execute unless score <server> persistent matches 1 run tellraw @s [{"text":" Fake Blocks: ","color":"#B7B7B7"},{"text":"0","bold":true,"color":"#C9C9C9"}]
execute if score <server> persistent matches 1 run tellraw @s [{"text":" Fake Blocks: ","color":"green"},{"score":{"name":"<overworld_fake_block_count>","objective":"variable"},"bold":true,"color":"aqua"}]

tellraw @s [{"text":"\nNether:","bold":true,"color":"aqua"}]
tellraw @s [{"text":" Entities: ","color":"green"},{"score":{"name":"<nether_entity_count>","objective":"variable"},"bold":true,"color":"aqua"}]
execute if score <server> persistent matches 1 run tellraw @s [{"text":" Entities (ICNE): ","color":"green","hoverEvent":{"action":"show_text","value":{"text":"Entities which are not excluded from the entity-limit (snapshot server only)","color":"green"}}},{"score":{"name":"<nether_icne_entity_count>","objective":"variable"},"bold":true,"color":"aqua"}]
tellraw @s [{"text":" Armour Stands: ","color":"green"},{"score":{"name":"<nether_armor_stand_count>","objective":"variable"},"bold":true,"color":"aqua"}]
tellraw @s [{"text":" Item Frames: ","color":"green"},{"score":{"name":"<nether_item_frame_count>","objective":"variable"},"bold":true,"color":"aqua"}]
execute unless score <server> persistent matches 1 run tellraw @s [{"text":" Entities (ICNE): ","color":"#B7B7B7","hoverEvent":{"action":"show_text","value":{"text":"Entities which are not excluded from the entity-limit (snapshot server only)","color":"#B7B7B7"}}},{"score":{"name":"<nether_icne_entity_count>","objective":"variable"},"bold":true,"color":"#C9C9C9"}]
execute unless score <server> persistent matches 1 run tellraw @s [{"text":" Fake Blocks: ","color":"#B7B7B7"},{"text":"0","bold":true,"color":"#C9C9C9"}]
execute if score <server> persistent matches 1 run tellraw @s [{"text":" Fake Blocks: ","color":"green"},{"score":{"name":"<nether_fake_block_count>","objective":"variable"},"bold":true,"color":"aqua"}]

tellraw @s {"text":"\nOnly loaded entities are tracked!","color":"gray"}

execute if score <server> persistent matches 0 run tellraw @s [{"text":"\nDatapack Server Config: ","color":"green"},{"text":"Release Server","color":"aqua"}]
execute if score <server> persistent matches 1 run tellraw @s [{"text":"\nDatapack Server Config: ","color":"green"},{"text":"Snapshot Server","color":"aqua"}]

tellraw @s {"text":"============================","color":"aqua"}
