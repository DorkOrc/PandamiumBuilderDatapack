execute unless score @s parkour.fall_cooldown matches 1.. if score @s parkour_checkpoint matches 0.. run function pandamium:misc/map_specific/parkour/return_to_last_checkpoint
advancement revoke @s only pandamium:parkour/fall
