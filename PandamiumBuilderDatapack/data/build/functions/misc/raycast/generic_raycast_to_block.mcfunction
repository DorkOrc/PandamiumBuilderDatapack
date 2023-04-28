execute if score <raycast_obstructable> variable matches 1 store success score <hit> variable unless block ~ ~ ~ #build:raycast/ignore
execute if score <raycast_obstructable> variable matches 1 if score <hit> variable matches 1 if block ~ ~ ~ #build:raycast/check_hitbox run function build:misc/raycast/block_hitboxes/check_all
# <hit> variable -> {0,1}

execute if score <hit> variable matches 1 run tp ~ ~ ~
execute if score <hit> variable matches 0 run scoreboard players remove <ttl> variable 1
execute if score <hit> variable matches 0 if score <ttl> variable matches 1.. positioned ^ ^ ^0.03125 run function build:misc/raycast/generic_raycast_to_block
