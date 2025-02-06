setblock ~ ~ ~ minecraft:dirt_path strict

execute unless block ~ ~1 ~ minecraft:wheat unless block ~ ~1 ~ minecraft:tall_dry_grass unless block ~ ~1 ~ minecraft:short_dry_grass run return fail

execute if predicate {condition:"random_chance",chance:0.02} run return run setblock ~ ~1 ~ minecraft:tall_dry_grass strict
execute if predicate {condition:"random_chance",chance:0.02040816327} run return run setblock ~ ~1 ~ minecraft:short_dry_grass strict
setblock ~ ~1 ~ minecraft:wheat[age=7] strict
