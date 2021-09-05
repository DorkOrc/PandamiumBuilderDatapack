scoreboard players add <raycast_iters> variable 1

execute store success score <in_entity> variable if entity @e[type=!player,type=!marker,dx=0,dy=0,dz=0,tag=!Corner,tag=!CloneDisplay,tag=!ClickDetector,tag=!map_specific.fake_block]
execute if score <in_entity> variable matches 1 run tag @e[type=!player,type=!marker,dx=0,dy=0,dz=0,tag=!Corner,tag=!CloneDisplay,tag=!ClickDetector,tag=!map_specific.fake_block,limit=1] add selected_entity

execute if score <in_entity> variable matches 0 if score <raycast_iters> variable matches ..192 run tp ^ ^ ^0.03125
execute if score <in_entity> variable matches 0 if score <raycast_iters> variable matches ..192 at @s run function build:misc/entity_data/raycast
