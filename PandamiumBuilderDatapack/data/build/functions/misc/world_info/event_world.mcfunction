tellraw @s [{"text":"The Event Overworld:","bold":true,"color":"aqua"}]
tellraw @s [{"text":" Entities: ","color":"green"},{"score":{"name":"<event_overworld_entity_count>","objective":"variable"},"bold":true,"color":"aqua"}]
execute if score <server> global matches 1 run tellraw @s [{"text":" Entities (ICNE): ","color":"green","hoverEvent":{"action":"show_text","value":{"text":"Entities which are not excluded from the entity-limit (snapshot server only)","color":"green"}}},{"score":{"name":"<event_overworld_icne_entity_count>","objective":"variable"},"bold":true,"color":"aqua"}]
tellraw @s [{"text":" Armour Stands: ","color":"green"},{"score":{"name":"<event_overworld_armor_stand_count>","objective":"variable"},"bold":true,"color":"aqua"}]
tellraw @s [{"text":" Item Frames: ","color":"green"},{"score":{"name":"<event_overworld_item_frame_count>","objective":"variable"},"bold":true,"color":"aqua"}]
execute unless score <server> global matches 1 run tellraw @s [{"text":" Entities (ICNE): ","color":"#B7B7B7","hoverEvent":{"action":"show_text","value":{"text":"Entities which are not excluded from the entity-limit (snapshot server only)","color":"#B7B7B7"}}},{"score":{"name":"<event_overworld_icne_entity_count>","objective":"variable"},"bold":true,"color":"#C9C9C9"}]
execute unless score <server> global matches 1 run tellraw @s [{"text":" Fake Blocks: ","color":"#B7B7B7"},{"text":"0","bold":true,"color":"#C9C9C9"}]
execute if score <server> global matches 1 run tellraw @s [{"text":" Fake Blocks: ","color":"green"},{"score":{"name":"<event_overworld_fake_block_count>","objective":"variable"},"bold":true,"color":"aqua"}]
