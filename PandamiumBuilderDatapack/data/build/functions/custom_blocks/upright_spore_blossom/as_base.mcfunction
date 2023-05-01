#> Pre
tag @s add custom_block.base_new

#> Main
tag @s add custom_block.upright_spore_blossom
tag @s add custom_block.base

execute summon block_display run function build:custom_blocks/upright_spore_blossom/as_block_display

#> Post
tag @s remove custom_block.base_new
