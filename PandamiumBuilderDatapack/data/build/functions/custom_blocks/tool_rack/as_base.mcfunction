#> Pre
tag @s add custom_block.base_new

#> Main
tag @s add custom_block.tool_rack
tag @s add custom_block.base

execute summon block_display run function build:custom_blocks/tool_rack/as_display1
execute summon block_display run function build:custom_blocks/tool_rack/as_display2
execute summon item_display run function build:custom_blocks/tool_rack/as_display3

#> Post
tag @s remove custom_block.base_new
