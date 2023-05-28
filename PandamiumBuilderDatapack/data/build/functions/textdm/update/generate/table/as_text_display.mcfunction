tag @s add custom_block.display
tag @s add custom_block.text_display_manager

tp @s @e[type=item_display,tag=base,limit=1]
ride @s mount @e[type=item_display,tag=base,limit=1]

data modify entity @s {} merge from storage build:textdm data_to_merge
data modify entity @s alignment set from storage build:textdm this_line.data.alignment
data modify entity @s text set value '{"nbt":"this_line.columns[0][]","storage":"build:textdm","interpret":true,"separator":"\\n"}'

execute store result entity @s transformation.translation[1] float 0.000001 run scoreboard players get <y_translation> variable

execute store result entity @s transformation.translation[0] float 0.000001 run scoreboard players operation <x_translation> variable += <modifier> variable

data remove storage build:textdm this_line.columns[0]
