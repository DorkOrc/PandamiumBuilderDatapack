#> Pre
tag @s add custom_block.base_new

#> Main
tag @s add custom_block.rotatable_rail
tag @s add custom_block.base

execute unless block ~ ~ ~ command_block[facing=down] unless block ~ ~ ~ command_block[facing=up] summon block_display run function build:custom_blocks/rotatable_rail/as_display1
execute if block ~ ~ ~ command_block[facing=down] summon block_display if entity @a[tag=source,y_rotation=135..-134,limit=1] rotated -180 -90 run function build:custom_blocks/rotatable_rail/as_display1
execute if block ~ ~ ~ command_block[facing=down] summon block_display if entity @a[tag=source,y_rotation=-135..-44,limit=1] rotated -90 -90 run function build:custom_blocks/rotatable_rail/as_display1
execute if block ~ ~ ~ command_block[facing=down] summon block_display if entity @a[tag=source,y_rotation=-45..44,limit=1] rotated 0 -90 run function build:custom_blocks/rotatable_rail/as_display1
execute if block ~ ~ ~ command_block[facing=down] summon block_display if entity @a[tag=source,y_rotation=45..134,limit=1] rotated 90 -90 run function build:custom_blocks/rotatable_rail/as_display1
execute if block ~ ~ ~ command_block[facing=up] if entity @a[tag=source,y_rotation=135..-134,limit=1] run setblock ~ ~ ~ rail[shape=north_south]
execute if block ~ ~ ~ command_block[facing=up] if entity @a[tag=source,y_rotation=-135..-44,limit=1] run setblock ~ ~ ~ rail[shape=east_west]
execute if block ~ ~ ~ command_block[facing=up] if entity @a[tag=source,y_rotation=-45..44,limit=1] run setblock ~ ~ ~ rail[shape=north_south]
execute if block ~ ~ ~ command_block[facing=up] if entity @a[tag=source,y_rotation=45..134,limit=1] run setblock ~ ~ ~ rail[shape=east_west]

#> Post
tag @s remove custom_block.base_new
