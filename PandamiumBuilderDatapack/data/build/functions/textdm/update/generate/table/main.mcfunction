#tellraw @a {"storage":"build:textdm","nbt":"this_line.data"}

# y-translation is set to 0.275*scale*line_offset+y_translation == (1/M^2).(275 * M.scale * line_offset + (M^2).y_translation)
execute store result score <y_translation> variable run data get storage build:textdm data_to_merge.transformation.scale[1] 1000
scoreboard players operation <y_translation> variable *= <line_scale> variable
scoreboard players operation <y_translation> variable *= <line_offset> variable
execute store result score <y_translation_old> variable run data get storage build:textdm data_to_merge.transformation.translation[1] 1000000
execute store result entity @s transformation.translation[1] float 0.000001 run scoreboard players operation <y_translation> variable += <y_translation_old> variable

# x-translation is set to spacing*columns*0.5*scale+x_translation == (1/M).(M.spacing * columns * M.scale // 2 + (M^2).x_translation)
execute store result score <x_translation> variable store result score <scaled_scale> variable run data get storage build:textdm data_to_merge.transformation.scale[1] 1000
execute store result score <scaled_spacing> variable run data get storage build:textdm this_line.data.spacing 1000
execute store result score <last_column_index> variable run data get storage build:textdm this_line.data.columns
scoreboard players remove <last_column_index> variable 1
scoreboard players operation <x_translation> variable *= <scaled_spacing> variable
scoreboard players operation <x_translation> variable *= <last_column_index> variable
scoreboard players operation <x_translation> variable /= #2 constant
scoreboard players operation <x_translation> variable *= #-1 constant
execute store result score <x_translation_old> variable run data get storage build:textdm data_to_merge.transformation.translation[0] 1000000
scoreboard players operation <x_translation> variable += <x_translation_old> variable

scoreboard players operation <modifier> variable = <scaled_spacing> variable
scoreboard players operation <modifier> variable *= <scaled_scale> variable
scoreboard players operation <x_translation> variable -= <modifier> variable

scoreboard players set <i> variable 0
function build:textdm/update/generate/table/loop

execute store result score <rows> variable run data get storage build:textdm this_line.data.rows
scoreboard players operation <line_offset> variable += <rows> variable
