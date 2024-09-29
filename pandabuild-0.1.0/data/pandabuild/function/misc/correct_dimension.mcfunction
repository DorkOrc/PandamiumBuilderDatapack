tellraw @s[predicate=pandabuild:in_dimension_group/vanilla_generated] {"extra":["That dimension is not available! Moved you to an appropriate dimension."],"storage":"pandabuild:dictionary","nbt":"chat/error","interpret":true}
execute at @s if dimension minecraft:overworld in pandabuild:servers/snapshot/overworld run return run tp @s ~ ~ ~
execute at @s if dimension minecraft:the_nether in pandabuild:servers/snapshot/the_nether run return run tp @s ~ ~ ~
execute at @s if dimension minecraft:the_end in pandabuild:servers/snapshot/overworld run return run tp @s ~ ~ ~

scoreboard players display numberformat @s tablist_value fixed {"text":"???","color":"gray"}
execute at @s if dimension pandabuild:servers/snapshot/overworld run scoreboard players display numberformat @s tablist_value fixed {"text":"snapshot.original.overworld","color":"gray"}
execute at @s if dimension pandabuild:servers/snapshot/the_nether run scoreboard players display numberformat @s tablist_value fixed {"text":"snapshot.original.the_nether","color":"gray"}
execute at @s if dimension pandabuild:servers/snapshot/variant_1/overworld run scoreboard players display numberformat @s tablist_value fixed {"text":"snapshot.variant_1.overworld","color":"gray"}
execute at @s if dimension pandabuild:servers/snapshot/variant_1/the_nether run scoreboard players display numberformat @s tablist_value fixed {"text":"snapshot.variant_1.the_nether","color":"gray"}
execute at @s if dimension pandabuild:servers/release/overworld run scoreboard players display numberformat @s tablist_value fixed {"text":"release.original.overworld","color":"gray"}
execute at @s if dimension pandabuild:servers/release/the_nether run scoreboard players display numberformat @s tablist_value fixed {"text":"release.original.the_nether","color":"gray"}
