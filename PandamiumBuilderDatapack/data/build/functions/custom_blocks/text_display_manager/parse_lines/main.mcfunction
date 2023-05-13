data modify storage build:temp old_text set from entity @s text

data modify storage build:temp pages set from block ~ ~ ~ Book.tag.pages
data remove storage build:temp pages[0]

data modify storage build:temp join set value []
data modify storage build:temp lines set value []

scoreboard players set <page> variable 1
scoreboard players set <line> variable 1

scoreboard players set <error> variable 0
data modify storage build:temp error set value 'An error occurred while reading the lines.'
execute if data storage build:temp pages[0] run function build:custom_blocks/text_display_manager/parse_lines/loop

execute if score <error> variable matches 1 run tellraw @a[tag=source,limit=1] [{"text":"text_display_manager: ","color":"red"},{"nbt":"error","storage":"build:temp","interpret":true}]
execute if score <error> variable matches 1 run data modify entity @s text set from storage build:temp old_text
