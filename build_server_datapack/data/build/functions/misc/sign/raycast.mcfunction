scoreboard players add <raycast_iters> variable 1

scoreboard players set <in_sign> variable 0
execute if block ~ ~ ~ #signs run function build:misc/sign/check_in_sign

execute if score <in_sign> variable matches 0 run tp ^ ^ ^0.03125
execute if score <in_sign> variable matches 0 if score <raycast_iters> variable matches ..192 at @s run function build:misc/sign/raycast
