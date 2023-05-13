scoreboard players add <line> variable 1

data modify entity @s text set value '{"nbt":"join[]","storage":"build:temp","interpret":true,"separator":""}'
data modify storage build:temp lines append from entity @s text
data modify storage build:temp join set value []
