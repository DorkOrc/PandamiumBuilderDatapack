data modify storage build:scratch schedule.entry set from storage build:io schedule.in

data modify storage build:scratch schedule.entry.action set from storage build:io schedule.in.action
data modify storage build:scratch schedule.entry.data set from storage build:io schedule.in.data
execute store result storage build:scratch schedule.entry.source int 1 store result score $utils.schedule.source scratch run data get storage build:io schedule.in.source

execute store result storage build:scratch schedule.entry.wait int 1 store result score $utils.schedule.wait scratch run data get storage build:io schedule.in.wait
execute unless score $utils.schedule.wait scratch matches 0.. run scoreboard players set $utils.schedule.wait scratch 0

scoreboard players set $utils.schedule.success scratch 0
execute unless score $wait scratch matches 0.. unless score $utils.schedule.source scratch matches 2.. unless data storage build:io schedule.in.action store success score $utils.schedule.success scratch run data modify storage build:global schedule prepend from build:scratch queue.entry
execute if score $utils.schedule.success scratch matches 0 run tellraw @a[tag=admin] [{"text":"[build:schedule/main]","color":"dark_red"},{"text":" Missing or invalid inputs: ","color":"red"},{"nbt":"schedule.entry","storage":"build:scratch","color":"yellow"}]
