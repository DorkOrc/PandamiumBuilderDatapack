#> Pre
tag @s add custom_block.base_new

#> Main
tag @s add custom_block.hoglin_feast
tag @s add custom_block.base
tag @s add custom_block.tick
tag @s add custom_block.preserve

execute summon item_display run function build:custom_blocks/hoglin_feast/as_display1
execute summon hoglin run function build:custom_blocks/hoglin_feast/as_display2

#> Post
tag @s remove custom_block.base_new
