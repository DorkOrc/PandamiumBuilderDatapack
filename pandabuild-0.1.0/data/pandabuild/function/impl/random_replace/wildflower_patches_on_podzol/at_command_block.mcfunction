setblock ~ ~ ~ podzol strict
execute if block ~ ~1 ~ leaf_litter run setblock ~ ~1 ~ air strict
execute if block ~ ~1 ~ wildflowers run setblock ~ ~1 ~ air strict

execute if predicate {condition:"random_chance",chance:0.05} run return run function pandabuild:impl/random_replace/wildflower_patches_on_podzol/large_patch

execute if predicate {condition:"random_chance",chance:0.02} run return run function pandabuild:impl/random_replace/wildflower_patches_on_podzol/small_patch

execute if predicate {condition:"random_chance",chance:0.05} run return run execute if block ~ ~1 ~ air run setblock ~ ~1 ~ minecraft:wildflowers[facing=east,flower_amount=1] strict
execute if predicate {condition:"random_chance",chance:0.05263157895} run return run execute if block ~ ~1 ~ air run setblock ~ ~1 ~ minecraft:wildflowers[facing=south,flower_amount=1] strict
execute if predicate {condition:"random_chance",chance:0.05555555556} run return run execute if block ~ ~1 ~ air run setblock ~ ~1 ~ minecraft:wildflowers[facing=west,flower_amount=1] strict
execute if predicate {condition:"random_chance",chance:0.05882352941} run return run execute if block ~ ~1 ~ air run setblock ~ ~1 ~ minecraft:wildflowers[facing=north,flower_amount=1] strict

execute if predicate {condition:"random_chance",chance:0.05} run return run execute if block ~ ~1 ~ air run setblock ~ ~1 ~ minecraft:leaf_litter[facing=east,segment_amount=1] strict
execute if predicate {condition:"random_chance",chance:0.05263157895} run return run execute if block ~ ~1 ~ air run setblock ~ ~1 ~ minecraft:leaf_litter[facing=south,segment_amount=1] strict
execute if predicate {condition:"random_chance",chance:0.05555555556} run return run execute if block ~ ~1 ~ air run setblock ~ ~1 ~ minecraft:leaf_litter[facing=west,segment_amount=1] strict
execute if predicate {condition:"random_chance",chance:0.05882352941} run return run execute if block ~ ~1 ~ air run setblock ~ ~1 ~ minecraft:leaf_litter[facing=north,segment_amount=1] strict
