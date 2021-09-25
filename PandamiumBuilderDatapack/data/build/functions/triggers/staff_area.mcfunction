# Release
execute if score <server> global matches 0 in overworld run tp @s 0.430 52.00000 8.290 -178.2 -1.8

# Snapshot
#
execute if score <server> global matches 1 run tellraw @s [{"text":"[Staff Area]","color":"dark_red"},{"text":" There is currently no Staff Area!","color":"red"}]
