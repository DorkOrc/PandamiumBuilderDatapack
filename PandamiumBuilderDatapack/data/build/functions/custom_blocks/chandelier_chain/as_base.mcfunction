#> Pre
tag @s add custom_block.base_new

#> Main
tag @s add custom_block.chandelier_chain
tag @s add custom_block.base

execute summon block_display run function build:custom_blocks/chandelier_chain/as_display1
execute summon block_display run function build:custom_blocks/chandelier_chain/as_display2
execute summon block_display run function build:custom_blocks/chandelier_chain/as_display3

#> Post
tag @s remove custom_block.base_new
