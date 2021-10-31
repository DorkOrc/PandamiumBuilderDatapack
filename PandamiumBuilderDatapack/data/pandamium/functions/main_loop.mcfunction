execute if score <server> global matches 1 run function pandamium:misc/map_specific/loop
execute if score <server> global matches 1 in build:event_world run function pandamium:misc/map_specific/loop

execute as @a[scores={parkour_checkpoint=0..}] run function pandamium:misc/map_specific/parkour/timer
execute at @e[type=marker,tag=parkour.checkpoint,x=-512,y=-64,z=-512,dx=1024,dy=384,dz=1024,scores={id=1..}] run particle falling_dust gold_block ~ ~0.5 ~ 0 0 0 0 1 normal @a[scores={parkour_checkpoint=0..}]
execute at @e[type=marker,tag=parkour.checkpoint,x=-512,y=-64,z=-512,dx=1024,dy=384,dz=1024,scores={id=0}] run particle falling_dust diamond_block ~ ~0.5 ~

execute as @a run function pandamium:check_triggers

schedule function pandamium:main_loop 5t
