title @s actionbar "cloning..."

data modify storage pandabuild:local functions."pandabuild:impl/halloween_to_storage_cloning".position set from entity @s Pos
execute store result score .x_offset1 var store result score .x_offset2 var store result score .x_offset3 var store result score .x_offset4 var run data get storage pandabuild:local functions."pandabuild:impl/halloween_to_storage_cloning".position[0]
execute store result score .z_offset1 var store result score .z_offset2 var store result score .z_offset3 var store result score .z_offset4 var run data get storage pandabuild:local functions."pandabuild:impl/halloween_to_storage_cloning".position[2]

# 1: ~-7 ~ ~-7
particle block_marker{block_state:barrier} ~-7 ~-7 ~-7 
particle block_marker{block_state:barrier} ~-7 ~7 ~-7 
execute in pandabuild:storage store success score .was_forceloaded var run forceload query ~-7 ~-7
execute in pandabuild:storage run forceload add ~-7 ~-7
execute if score .was_forceloaded var matches 0 run data modify storage pandabuild:world_data forceloaded_chunks append value {dimension:"pandabuild:storage"}
execute if score .was_forceloaded var matches 0 store result storage pandabuild:world_data forceloaded_chunks[-1].x int 1 run scoreboard players remove .x_offset1 var 7
execute if score .was_forceloaded var matches 0 store result storage pandabuild:world_data forceloaded_chunks[-1].z int 1 run scoreboard players remove .z_offset1 var 7
execute if score .was_forceloaded var matches 0 run tellraw @s ["Forceloaded chunk: ",{"storage":"pandabuild:world_data","nbt":"forceloaded_chunks[-1]"}]

execute in pandabuild:servers/snapshot/overworld store success score .was_forceloaded var run forceload query ~-7 ~-7
execute in pandabuild:servers/snapshot/overworld run forceload add ~-7 ~-7
execute if score .was_forceloaded var matches 0 run data modify storage pandabuild:world_data forceloaded_chunks append value {dimension:"pandabuild:servers/snapshot/overworld"}
execute if score .was_forceloaded var matches 0 store result storage pandabuild:world_data forceloaded_chunks[-1].x int 1 run scoreboard players remove .x_offset1 var 7
execute if score .was_forceloaded var matches 0 store result storage pandabuild:world_data forceloaded_chunks[-1].z int 1 run scoreboard players remove .z_offset1 var 7
execute if score .was_forceloaded var matches 0 run tellraw @s ["Forceloaded chunk: ",{"storage":"pandabuild:world_data","nbt":"forceloaded_chunks[-1]"}]

# 2: ~-7 ~ ~7
particle block_marker{block_state:barrier} ~-7 ~-7 ~7 
particle block_marker{block_state:barrier} ~-7 ~7 ~7 
execute in pandabuild:storage store success score .was_forceloaded var run forceload query ~-7 ~7
execute in pandabuild:storage run forceload add ~-7 ~7
execute if score .was_forceloaded var matches 0 run data modify storage pandabuild:world_data forceloaded_chunks append value {dimension:"pandabuild:storage"}
execute if score .was_forceloaded var matches 0 store result storage pandabuild:world_data forceloaded_chunks[-1].x int 1 run scoreboard players remove .x_offset2 var 7
execute if score .was_forceloaded var matches 0 store result storage pandabuild:world_data forceloaded_chunks[-1].z int 1 run scoreboard players add .z_offset2 var 7
execute if score .was_forceloaded var matches 0 run tellraw @s ["Forceloaded chunk: ",{"storage":"pandabuild:world_data","nbt":"forceloaded_chunks[-1]"}]

execute in pandabuild:servers/snapshot/overworld store success score .was_forceloaded var run forceload query ~-7 ~7
execute in pandabuild:servers/snapshot/overworld run forceload add ~-7 ~7
execute if score .was_forceloaded var matches 0 run data modify storage pandabuild:world_data forceloaded_chunks append value {dimension:"pandabuild:servers/snapshot/overworld"}
execute if score .was_forceloaded var matches 0 store result storage pandabuild:world_data forceloaded_chunks[-1].x int 1 run scoreboard players remove .x_offset1 var 7
execute if score .was_forceloaded var matches 0 store result storage pandabuild:world_data forceloaded_chunks[-1].z int 1 run scoreboard players add .z_offset1 var 7
execute if score .was_forceloaded var matches 0 run tellraw @s ["Forceloaded chunk: ",{"storage":"pandabuild:world_data","nbt":"forceloaded_chunks[-1]"}]

# 3: ~7 ~ ~-7
particle block_marker{block_state:barrier} ~7 ~-7 ~-7 
particle block_marker{block_state:barrier} ~7 ~7 ~-7 
execute in pandabuild:storage store success score .was_forceloaded var run forceload query ~7 ~-7
execute in pandabuild:storage run forceload add ~7 ~-7
execute if score .was_forceloaded var matches 0 run data modify storage pandabuild:world_data forceloaded_chunks append value {dimension:"pandabuild:storage"}
execute if score .was_forceloaded var matches 0 store result storage pandabuild:world_data forceloaded_chunks[-1].x int 1 run scoreboard players add .x_offset3 var 7
execute if score .was_forceloaded var matches 0 store result storage pandabuild:world_data forceloaded_chunks[-1].z int 1 run scoreboard players remove .z_offset3 var 7
execute if score .was_forceloaded var matches 0 run tellraw @s ["Forceloaded chunk: ",{"storage":"pandabuild:world_data","nbt":"forceloaded_chunks[-1]"}]

execute in pandabuild:servers/snapshot/overworld store success score .was_forceloaded var run forceload query ~7 ~-7
execute in pandabuild:servers/snapshot/overworld run forceload add ~7 ~-7
execute if score .was_forceloaded var matches 0 run data modify storage pandabuild:world_data forceloaded_chunks append value {dimension:"pandabuild:servers/snapshot/overworld"}
execute if score .was_forceloaded var matches 0 store result storage pandabuild:world_data forceloaded_chunks[-1].x int 1 run scoreboard players add .x_offset1 var 7
execute if score .was_forceloaded var matches 0 store result storage pandabuild:world_data forceloaded_chunks[-1].z int 1 run scoreboard players remove .z_offset1 var 7
execute if score .was_forceloaded var matches 0 run tellraw @s ["Forceloaded chunk: ",{"storage":"pandabuild:world_data","nbt":"forceloaded_chunks[-1]"}]

# 4: ~7 ~ ~7
particle block_marker{block_state:barrier} ~7 ~-7 ~7 
particle block_marker{block_state:barrier} ~7 ~7 ~7 
execute in pandabuild:storage store success score .was_forceloaded var run forceload query ~7 ~7
execute in pandabuild:storage run forceload add ~7 ~7
execute if score .was_forceloaded var matches 0 run data modify storage pandabuild:world_data forceloaded_chunks append value {dimension:"pandabuild:storage"}
execute if score .was_forceloaded var matches 0 store result storage pandabuild:world_data forceloaded_chunks[-1].x int 1 run scoreboard players add .x_offset4 var 7
execute if score .was_forceloaded var matches 0 store result storage pandabuild:world_data forceloaded_chunks[-1].z int 1 run scoreboard players add .z_offset4 var 7
execute if score .was_forceloaded var matches 0 run tellraw @s ["Forceloaded chunk: ",{"storage":"pandabuild:world_data","nbt":"forceloaded_chunks[-1]"}]

execute in pandabuild:servers/snapshot/overworld store success score .was_forceloaded var run forceload query ~7 ~7
execute in pandabuild:servers/snapshot/overworld run forceload add ~7 ~7
execute if score .was_forceloaded var matches 0 run data modify storage pandabuild:world_data forceloaded_chunks append value {dimension:"pandabuild:servers/snapshot/overworld"}
execute if score .was_forceloaded var matches 0 store result storage pandabuild:world_data forceloaded_chunks[-1].x int 1 run scoreboard players add .x_offset1 var 7
execute if score .was_forceloaded var matches 0 store result storage pandabuild:world_data forceloaded_chunks[-1].z int 1 run scoreboard players add .z_offset1 var 7
execute if score .was_forceloaded var matches 0 run tellraw @s ["Forceloaded chunk: ",{"storage":"pandabuild:world_data","nbt":"forceloaded_chunks[-1]"}]

# clone
clone ~-7 ~-7 ~-7 ~7 ~7 ~7 to pandabuild:storage ~-7 ~-7 ~-7

function pandabuild:impl/conditional_replace
