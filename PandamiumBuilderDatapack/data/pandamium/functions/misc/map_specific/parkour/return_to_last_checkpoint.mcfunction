tag @s add running_function
execute as @e[type=marker,tag=parkour.checkpoint,x=-512,y=-64,z=-512,dx=1024,dy=384,dz=1024] if score @s id = @p[tag=running_function] parkour_checkpoint run tp @p[tag=running_function] @s
tag @s remove running_function

scoreboard players set @s parkour.fall_cooldown 4
