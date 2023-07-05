#> Pre
tag @s add custom_block.base_new

#> Main
tag @s add custom_block.elevator_button
tag @s add custom_block.base

execute if entity @a[tag=source,limit=1,y_rotation=-45..44] rotated 180 0 run tp @s ^ ^-0.125 ^-0.45 ~ ~
execute if entity @a[tag=source,limit=1,y_rotation=45..134] rotated -90 0 run tp @s ^ ^-0.125 ^-0.45 ~ ~
execute if entity @a[tag=source,limit=1,y_rotation=135..-134] rotated 0 0 run tp @s ^ ^-0.125 ^-0.45 ~ ~
execute if entity @a[tag=source,limit=1,y_rotation=-135..-45] rotated 90 0 run tp @s ^ ^-0.125 ^-0.45 ~ ~

execute summon interaction run function build:custom_blocks/elevator_button/as_display1
execute summon item_display run function build:custom_blocks/elevator_button/as_display2

#> Post
tag @s remove custom_block.base_new
