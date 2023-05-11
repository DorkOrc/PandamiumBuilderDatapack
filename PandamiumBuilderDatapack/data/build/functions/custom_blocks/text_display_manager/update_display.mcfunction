function build:custom_blocks/text_display_manager/parse_config/main
data modify entity @s background set from storage build:temp config.bg
data modify entity @s transformation.scale[] set from storage build:temp config.scale
data modify entity @s transformation.translation[0] set from storage build:temp config.x_translation
data modify entity @s transformation.translation[1] set from storage build:temp config.y_translation
data modify entity @s transformation.translation[2] set from storage build:temp config.z_translation

data modify storage build:temp lines set from block ~ ~ ~ Book.tag.pages
data remove storage build:temp lines[0]
data modify entity @s text set value '{"nbt":"lines[]","storage":"build:temp","interpret":true,"separator":"\\n"}'