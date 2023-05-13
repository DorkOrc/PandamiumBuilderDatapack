data modify storage build:temp text set from storage build:temp pages[0]
execute if data storage build:temp {compare:'...'} run data modify storage build:temp text set string storage build:temp pages[0] 0 -3

data modify entity @s text set value '{"nbt":"text","storage":"build:temp","interpret":true}'

execute if data entity @s {text:'{"text":""}'} unless data storage build:temp {text:'{"text":""}'} unless data storage build:temp {text:'""'} run scoreboard players set <error> variable 1
execute if score <error> variable matches 1 run data modify storage build:temp error set value '[{"text":"Syntax error in JSON on page "},{"score":{"name":"<page>","objective":"variable"}}]'

execute if score <error> variable matches 0 run data modify storage build:temp join append from storage build:temp text
