scoreboard players operation <in_dimension> variable = @s in_dimension

scoreboard players set <tp_d> variable -1
execute if score <in_dimension> variable matches 0 run scoreboard players set <tp_d> variable 1
execute if score <in_dimension> variable matches 1 run scoreboard players set <tp_d> variable 0
execute if score <in_dimension> variable matches 100 run scoreboard players set <tp_d> variable 101
execute if score <in_dimension> variable matches 101 run scoreboard players set <tp_d> variable 100

execute unless score <tp_d> variable matches -1 run function build:misc/teleport/to_scores/spawn

scoreboard players set @s nether_portal_cooldown 80

advancement revoke @s only build:enter_nether_portal
