scoreboard players operation <in_dimension> variable = @s in_dimension

execute if score <in_dimension> variable matches 0 at @s in build:release/the_nether run tp ~ ~ ~
execute if score <in_dimension> variable matches 1 at @s in build:release/overworld run tp ~ ~ ~

execute if score <in_dimension> variable matches 100 at @s in build:snapshot/the_nether run tp ~ ~ ~
execute if score <in_dimension> variable matches 101 at @s in build:snapshot/overworld run tp ~ ~ ~

scoreboard players set @s nether_portal_cooldown 80

advancement revoke @s only build:enter_nether_portal
