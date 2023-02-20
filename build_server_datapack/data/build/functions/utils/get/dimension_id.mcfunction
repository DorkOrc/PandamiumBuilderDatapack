execute if dimension minecraft:overworld run scoreboard players set $utils.get.out io 0
execute if dimension minecraft:the_nether run scoreboard players set $utils.get.out io 1
execute if dimension minecraft:the_end run scoreboard players set $utils.get.out io 2

execute if dimension build:release/overworld run scoreboard players set $utils.get.out io 100
execute if dimension build:release/the_nether run scoreboard players set $utils.get.out io 101

execute if dimension build:snapshot/overworld run scoreboard players set $utils.get.out io 110
execute if dimension build:snapshot/the_nether run scoreboard players set $utils.get.out io 111

execute if dimension build:event_world run scoreboard players set $utils.get.out io 120
execute if dimension build:blueprint_world run scoreboard players set $utils.get.out io 121
