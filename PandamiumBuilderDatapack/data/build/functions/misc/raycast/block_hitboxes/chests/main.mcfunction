execute if block ~ ~ ~ #build:chests[type=right] run function build:misc/raycast/block_hitboxes/chests/right
execute if score <raycast_hit_target> variable matches 0 if block ~ ~ ~ #build:chests[type=left] run function build:misc/raycast/block_hitboxes/chests/left
execute if score <raycast_hit_target> variable matches 0 align xyz positioned ~0.0625 ~ ~0.0625 if entity @s[dx=0] align xyz positioned ~-0.0625 ~-0.125 ~-0.0625 if entity @s[dx=0] run scoreboard players set <hit> variable 1
