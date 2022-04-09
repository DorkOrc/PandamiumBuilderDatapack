scoreboard players set @a in_dimension -1

# Blocked Dimensions
execute in overworld run scoreboard players set @a[x=0] in_dimension -100
execute in the_nether run scoreboard players set @a[x=0] in_dimension -99
execute in the_end run scoreboard players set @a[x=0] in_dimension -98
execute in pandamium:staff_world run scoreboard players set @a[x=0] in_dimension -97

# Valid Dimensions
execute in build:release/overworld run scoreboard players set @a[x=0] in_dimension 0
execute in build:release/the_nether run scoreboard players set @a[x=0] in_dimension 1

execute in build:snapshot/overworld run scoreboard players set @a[x=0] in_dimension 100
execute in build:snapshot/the_nether run scoreboard players set @a[x=0] in_dimension 101

execute in build:event_world run scoreboard players set @a[x=0] in_dimension 200
