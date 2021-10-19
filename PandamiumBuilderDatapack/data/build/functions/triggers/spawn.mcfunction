# Release
execute if score <server> global matches 0 if score @s spawn matches 1 unless score @s in_dimension matches 3 in overworld run tp @s 0 65 0 0 0
execute if score <server> global matches 0 if score @s spawn matches 1 if score @s in_dimension matches 3 in build:event_world run tp @s 0 65 0 0 0
execute if score <server> global matches 0 if score @s spawn matches 2 in the_nether run tp @s 1.0 79 2.0 0 0

# Snapshot
execute if score <server> global matches 1 if score @s spawn matches 1 unless score @s in_dimension matches 3 in overworld run tp @s -7 138 3 145 0
execute if score <server> global matches 1 if score @s spawn matches 1 if score @s in_dimension matches 3 in build:event_world run tp @s -7 138 3 145 0
execute if score <server> global matches 1 if score @s spawn matches 2 in the_nether run tp @s 0 67 -2 180 0
