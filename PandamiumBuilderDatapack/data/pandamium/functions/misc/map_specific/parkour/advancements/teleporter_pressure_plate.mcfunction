data remove storage pandamium:temp NBT
data modify storage pandamium:temp NBT set from entity @e[type=marker,tag=parkour.teleporter,distance=..1,limit=1]

execute if data storage pandamium:temp NBT.data.RequiredCheckpoint store result score <required_checkpoint> variable run data get storage pandamium:temp NBT.data.RequiredCheckpoint

execute store result score <tp_x> variable run data get storage pandamium:temp NBT.data.Destination.X
execute store result score <tp_y> variable run data get storage pandamium:temp NBT.data.Destination.Y
execute store result score <tp_z> variable run data get storage pandamium:temp NBT.data.Destination.Z
scoreboard players set <tp_d> variable 0

execute unless data storage pandamium:temp NBT.data.RequiredCheckpoint if score @s parkour_checkpoint matches 0.. if data storage pandamium:temp NBT.data.Destination run function build:misc/teleport/to_scores/main
execute if data storage pandamium:temp NBT.data.RequiredCheckpoint if score @s parkour_checkpoint >= <required_checkpoint> variable if data storage pandamium:temp NBT.data.Destination run function build:misc/teleport/to_scores/main

execute if data storage pandamium:temp NBT unless data storage pandamium:temp NBT.data.Destination run tellraw @s {"text":"no destination stored","color":"red"}

advancement revoke @s only pandamium:parkour/teleporter_pressure_plate