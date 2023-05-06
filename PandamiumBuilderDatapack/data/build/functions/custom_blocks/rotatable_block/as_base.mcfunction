#> Pre
tag @s add custom_block.base_new

#> Main
tag @s add custom_block.rotatable_block
tag @s add custom_block.base

tp @s ~ ~ ~ ~ ~

execute if entity @s[y_rotation=135..-134] run tp @s ~ ~ ~ -180 ~
execute if entity @s[y_rotation=-135..-44] run tp @s ~ ~ ~ -90 ~
execute if entity @s[y_rotation=-45..44] run tp @s ~ ~ ~ 0 ~
execute if entity @s[y_rotation=45..134] run tp @s ~ ~ ~ 90 ~

execute if entity @s[x_rotation=44..90] rotated as @s run tp @s ~ ~ ~ ~ 90
execute if entity @s[x_rotation=-45..45] rotated as @s run tp @s ~ ~ ~ ~ 0
execute if entity @s[x_rotation=-90..-46] rotated as @s run tp @s ~ ~ ~ ~ -90

execute rotated as @s summon block_display run function build:custom_blocks/rotatable_block/as_display1

#> Post
tag @s remove custom_block.base_new
