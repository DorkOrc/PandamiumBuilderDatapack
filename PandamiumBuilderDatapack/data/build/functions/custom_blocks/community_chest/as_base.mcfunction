#> Pre
tag @s add custom_block.base_new

#> Main
tag @s add custom_block.community_chest
tag @s add custom_block.base
tag @s add custom_block.tick
tag @s add custom_block.preserve

execute summon chest_minecart run function build:custom_blocks/community_chest/as_display1

#> Post
tag @s remove custom_block.base_new
