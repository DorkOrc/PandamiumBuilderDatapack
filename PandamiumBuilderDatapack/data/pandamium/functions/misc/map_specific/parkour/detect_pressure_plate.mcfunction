scoreboard players reset <checkpoint_id> variable
scoreboard players operation <checkpoint_id> variable = @e[type=marker,tag=parkour.checkpoint,distance=..1,limit=1] id

execute if score <checkpoint_id> variable matches 0.. unless score @s parkour_checkpoint >= <checkpoint_id> variable if score @s parkour_checkpoint matches 0.. run function pandamium:misc/map_specific/parkour/new_checkpoint
execute if score <checkpoint_id> variable matches 0 unless score @s parkour_checkpoint >= <checkpoint_id> variable unless score @s parkour_checkpoint matches 0.. run function pandamium:misc/map_specific/parkour/start_parkour
execute if score <checkpoint_id> variable matches 0 unless score @s parkour_checkpoint >= <checkpoint_id> variable unless score @s parkour_checkpoint matches 0.. run tellraw @s "this is not the start of the parkour!"

advancement revoke @s only pandamium:parkour/pressure_plate
