execute if block ~ ~ ~ #build:chests[facing=north] align xyz positioned ~0.0625 ~ ~0.0625 if entity @s[dx=0] align xyz positioned ~ ~-0.125 ~-0.0625 if entity @s[dx=0] run scoreboard players set <hit> variable 1
execute if block ~ ~ ~ #build:chests[facing=east] align xyz positioned ~0.0625 ~ ~0.0625 if entity @s[dx=0] align xyz positioned ~-0.0625 ~-0.125 ~ if entity @s[dx=0] run scoreboard players set <hit> variable 1
execute if block ~ ~ ~ #build:chests[facing=south] align xyz positioned ~ ~ ~0.0625 if entity @s[dx=0] align xyz positioned ~-0.0625 ~-0.125 ~-0.0625 if entity @s[dx=0] run scoreboard players set <hit> variable 1
execute if block ~ ~ ~ #build:chests[facing=west] align xyz positioned ~0.0625 ~ ~ if entity @s[dx=0] align xyz positioned ~-0.0625 ~-0.125 ~-0.0625 if entity @s[dx=0] run scoreboard players set <hit> variable 1
