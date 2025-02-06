execute if block ~ ~1 ~ air run setblock ~ ~1 ~ minecraft:wildflowers[facing=west,flower_amount=4] strict

execute unless block ~ ~ ~-1 air if block ~ ~1 ~-1 air run setblock ~ ~1 ~-1 minecraft:wildflowers[facing=west,flower_amount=3] strict
execute if predicate {condition:"random_chance",chance:0.75} unless block ~1 ~ ~-1 air if block ~1 ~1 ~-1 air run setblock ~1 ~1 ~-1 minecraft:wildflowers[facing=west,flower_amount=1] strict
execute unless block ~1 ~ ~ air if block ~1 ~1 ~ air run setblock ~1 ~1 ~ minecraft:wildflowers[facing=west,flower_amount=4] strict
execute if predicate {condition:"random_chance",chance:0.75} unless block ~1 ~ ~1 air if block ~1 ~1 ~1 air run setblock ~1 ~1 ~1 minecraft:wildflowers[facing=north,flower_amount=1] strict
execute unless block ~ ~ ~1 air if block ~ ~1 ~1 air run setblock ~ ~1 ~1 minecraft:wildflowers[facing=east,flower_amount=2] strict
execute unless block ~-1 ~ ~ air if block ~-1 ~1 ~ air run setblock ~-1 ~1 ~ minecraft:wildflowers[facing=south,flower_amount=2] strict
