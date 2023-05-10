#> Pre
tag @s add custom_block.base_new

#> Main
tag @s add custom_block.huge_portal
tag @s add custom_block.base

execute summon block_display run function build:custom_blocks/huge_portal/as_display1

#> Post
tag @s remove custom_block.base_new
