execute if score @s parkour_checkpoint matches 0.. run function pandamium:misc/map_specific/parkour/end_parkour

scoreboard players reset @s parkour_checkpoint
scoreboard players reset @s parkour_ticks

scoreboard players reset @s parkour.aviate
scoreboard players reset @s parkour.used_ender_pearl
advancement revoke @s only pandamium:parkour/cheated
