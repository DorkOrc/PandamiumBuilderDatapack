# Release
execute if score <server> persistent matches 0 in overworld run tp @s -58.520 131.00000 36.500 -179.1 -4.7

# Snapshot
#execute if score <server> persistent matches 1 in overworld run tp @s -148 -32 0
execute if score <server> persistent matches 1 run tellraw @s [{"text":"[Donator Area]","color":"dark_red"},{"text":" There is currently no Donator Area!","color":"red"}]
