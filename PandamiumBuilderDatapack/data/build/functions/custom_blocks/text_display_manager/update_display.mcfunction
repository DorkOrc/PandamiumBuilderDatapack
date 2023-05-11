function build:custom_blocks/text_display_manager/parse_config/main

# Numericals
data modify entity @s background set from storage build:temp config.bg
execute store result entity @s transformation.scale[] float 0.01 run data get storage build:temp config.scale 100
execute store result entity @s transformation.translation[0] float 0.01 run data get storage build:temp config.x_translation 100
execute store result entity @s transformation.translation[1] float 0.01 run data get storage build:temp config.y_translation 100
execute store result entity @s transformation.translation[2] float 0.01 run data get storage build:temp config.z_translation 100
execute store result entity @s Rotation[0] float 0.01 run data get storage build:temp config.yaw 100
execute store result entity @s Rotation[1] float 0.01 run data get storage build:temp config.pitch 100

# Strings
execute if data storage build:temp config{billboard:"fixed"} run data modify entity @s billboard set value "fixed"
execute if data storage build:temp config{billboard:"center"} run data modify entity @s billboard set value "center"
execute if data storage build:temp config{billboard:"horizontal"} run data modify entity @s billboard set value "horizontal"
execute if data storage build:temp config{billboard:"vertical"} run data modify entity @s billboard set value "vertical"

execute if data storage build:temp config{see_through:"false"} run data modify entity @s see_through set value 0b
execute if data storage build:temp config{see_through:"true"} run data modify entity @s see_through set value 1b

# Roll
data modify storage build:temp left_rotation set value {axis:[0f,0f,1f],angle:0f}
execute store result storage build:temp left_rotation.angle float -0.0001745329252 run data get storage build:temp config.roll 100
data modify entity @s transformation.left_rotation set from storage build:temp left_rotation

# Text
data modify storage build:temp lines set from block ~ ~ ~ Book.tag.pages
data remove storage build:temp lines[0]
data modify entity @s text set value '{"nbt":"lines[]","storage":"build:temp","interpret":true,"separator":"\\n"}'
