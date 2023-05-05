#> Pre
tag @s add custom_block.base_new

#> Main
tag @s add custom_block.stained_glass_particle
tag @s add custom_block.base

execute summon item_display run function build:custom_blocks/stained_glass_particle/as_display1

#> Post
tag @s remove custom_block.base_new
