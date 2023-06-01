# kill old display entities
execute on passengers run function build:textdm/update/generate/clean_up_old_passengers

# get nbt
data modify storage build:textdm data_to_merge set from storage build:textdm config
data modify storage build:textdm data_to_merge merge value {Rotation:[0f,0f],transformation:{right_rotation:{axis:[0f,1f,0f],angle:0f},scale:[1f,1f,1f],left_rotation:{axis:[0f,0f,1f],angle:0f},translation:[0f,0f,0f]}}
data modify storage build:textdm data_to_merge.background set from storage build:textdm config.bg
data modify storage build:textdm data_to_merge.transformation.scale[] set from storage build:textdm config.scale
data modify storage build:textdm data_to_merge.transformation.translation[0] set from storage build:textdm config.x_translation
data modify storage build:textdm data_to_merge.transformation.translation[1] set from storage build:textdm config.y_translation
data modify storage build:textdm data_to_merge.transformation.translation[2] set from storage build:textdm config.z_translation
execute store result storage build:textdm data_to_merge.transformation.right_rotation.angle float 0.01745329252 run data get storage build:textdm config.yaw
data modify storage build:textdm data_to_merge.Rotation[0] set from entity @s Rotation[0]
data modify storage build:textdm data_to_merge.Rotation[1] set from storage build:textdm config.pitch
execute store result storage build:textdm data_to_merge.transformation.left_rotation.angle float 0.01745329252 run data get storage build:textdm config.roll
data modify storage build:textdm data_to_merge.line_width set value 2000

scoreboard players set <line_scale> variable 275
scoreboard players set <line_offset> variable 0

tag @s add base
function build:textdm/update/generate/iter
tag @s remove base
