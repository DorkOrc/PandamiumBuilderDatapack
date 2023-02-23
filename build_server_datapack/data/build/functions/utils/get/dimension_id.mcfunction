execute if dimension minecraft:overworld run scoreboard players set $utils.get.dimension_id function.out 0
execute if dimension minecraft:the_nether run scoreboard players set $utils.get.dimension_id function.out 1
execute if dimension minecraft:the_end run scoreboard players set $utils.get.dimension_id function.out 2

execute if dimension build:release/overworld run scoreboard players set $utils.get.dimension_id function.out 100
execute if dimension build:release/the_nether run scoreboard players set $utils.get.dimension_id function.out 101

execute if dimension build:snapshot/overworld run scoreboard players set $utils.get.dimension_id function.out 110
execute if dimension build:snapshot/the_nether run scoreboard players set $utils.get.dimension_id function.out 111

execute if dimension build:event_world run scoreboard players set $utils.get.dimension_id function.out 120
execute if dimension build:blueprint_world run scoreboard players set $utils.get.dimension_id function.out 121
