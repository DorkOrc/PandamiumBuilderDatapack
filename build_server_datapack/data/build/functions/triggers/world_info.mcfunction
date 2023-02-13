# run AT @s

execute store result score <entity_count> variable if entity @e[type=!player,x=-512,y=-64,z=-512,dx=1024,dy=384,dz=1024]
execute store result score <icne_entity_count> variable if entity @e[type=!player,type=!#pandamium:mob_limit_excluded,x=-512,y=-64,z=-512,dx=1024,dy=384,dz=1024]
execute store result score <armor_stand_count> variable if entity @e[type=armor_stand,x=-512,y=-64,z=-512,dx=1024,dy=384,dz=1024]
execute store result score <item_frame_count> variable if entity @e[type=#item_frames,x=-512,y=-64,z=-512,dx=1024,dy=384,dz=1024]
execute store result score <fake_block_count> variable if entity @e[type=marker,tag=map_specific.fake_block,x=-512,y=-64,z=-512,dx=1024,dy=384,dz=1024]

tellraw @s [{"text":"======== ","color":"aqua"},{"text":"World Info","bold":true}," ========"]

tellraw @s [{"nbt":"Dimension","entity":"@s","bold":true,"color":"aqua"},{"text":":","bold":false}]

#

tellraw @s [{"text":" Entities: ","color":"green"},{"score":{"name":"<entity_count>","objective":"variable"},"bold":true,"color":"aqua"}]
execute if score @s in_dimension matches 100..199 run tellraw @s [{"text":" Entities which count towards the Entity Limit: ","color":"green"},{"score":{"name":"<icne_entity_count>","objective":"variable"},"bold":true,"color":"aqua"}]

tellraw @s [{"text":" Armour Stands: ","color":"green"},{"score":{"name":"<armor_stand_count>","objective":"variable"},"bold":true,"color":"aqua"}]
tellraw @s [{"text":" Item Frames: ","color":"green"},{"score":{"name":"<item_frame_count>","objective":"variable"},"bold":true,"color":"aqua"}]

execute if score @s in_dimension matches 100..199 run tellraw @s [{"text":" Fake Blocks: ","color":"green"},{"score":{"name":"<fake_block_count>","objective":"variable"},"bold":true,"color":"aqua"}]

#

tellraw @s {"text":"\nOnly loaded entities are tracked!","color":"gray"}

tellraw @s {"text":"============================","color":"aqua"}
