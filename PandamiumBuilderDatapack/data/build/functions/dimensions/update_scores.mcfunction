# Section -1: Blocked dimensions
# -100 = overworld
# -101 = the_nether
# -102 = the_end
# -103 = pandamium:staff_world

# Section 0: Release server
# 0 = build:release/overworld
# 1 = build:release/the_nether

# Section 1: Snapshot server
# 100 = build:snapshot/overworld
# 101 = build:snapshot/the_nether

# Section 3: Event world
# 200 = build:event_world

scoreboard players set @a in_dimension -1

# Blocked Dimensions
execute in overworld run scoreboard players set @a[x=0] in_dimension -100
execute in the_nether run scoreboard players set @a[x=0] in_dimension -101
execute in the_end run scoreboard players set @a[x=0] in_dimension -102
execute in pandamium:staff_world run scoreboard players set @a[x=0] in_dimension -103

# Valid Dimensions
execute in build:release/overworld run scoreboard players set @a[x=0] in_dimension 0
execute in build:release/the_nether run scoreboard players set @a[x=0] in_dimension 1

execute in build:snapshot/overworld run scoreboard players set @a[x=0] in_dimension 100
execute in build:snapshot/the_nether run scoreboard players set @a[x=0] in_dimension 101

execute in build:event_world run scoreboard players set @a[x=0] in_dimension 200
