#> Pre
tag @s add custom_block.base_new

#> Main
tag @s add custom_block.text_display_manager
tag @s add custom_block.base

execute summon text_display run function build:custom_blocks/text_display_manager/as_display1

#> Post
tag @s remove custom_block.base_new
