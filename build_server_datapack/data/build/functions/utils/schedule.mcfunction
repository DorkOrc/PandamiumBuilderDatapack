data modify storage build:scratch entry set from storage build:io entry

execute store result score $source scratch run data get storage build:scratch entry.source
execute store result score $wait scratch run data get storage build:scratch entry.wait

scoreboard players set $success scratch 0
execute if score $wait scratch matches 1.. if data storage build:scratch entry.action store success score $success scratch run data modify storage build:global schedule prepend from storage build:scratch entry
execute if score $success scratch matches 0 run tellraw @a[tag=admin] [{"text":"[build:utils/schedule]","color":"dark_red"},{"text":" Missing or invalid inputs: ","color":"red"},{"nbt":"entry","storage":"build:scratch","color":"yellow"}]
