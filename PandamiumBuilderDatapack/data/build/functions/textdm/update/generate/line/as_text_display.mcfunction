tag @s add custom_block.display
tag @s add custom_block.text_display_manager

tp @s @e[type=item_display,tag=base,limit=1]
ride @s mount @e[type=item_display,tag=base,limit=1]

data modify entity @s {} merge from storage build:textdm data_to_merge
data modify entity @s text set value '{"nbt":"this_line.join[]","storage":"build:textdm","interpret":true,"separator":""}'

# y-translation is set to 0.275*scale*line_offset+y_translation == (1/M^2).(275 * M.scale * line_offset + (M^2).y_translation)
execute store result score <y_translation> variable run data get storage build:textdm data_to_merge.transformation.scale[1] 1000
scoreboard players operation <y_translation> variable *= <line_scale> variable
scoreboard players operation <y_translation> variable *= <line_offset> variable
execute store result score <y_translation_old> variable run data get storage build:textdm data_to_merge.transformation.translation[1] 1000000
execute store result entity @s transformation.translation[1] float 0.000001 run scoreboard players operation <y_translation> variable += <y_translation_old> variable

scoreboard players add <line_offset> variable 1
