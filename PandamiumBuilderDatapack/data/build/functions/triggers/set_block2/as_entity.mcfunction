data modify entity @s BlockState set from storage build:temp item_to_block.block
scoreboard players operation @s id = @p[tag=running_trigger] id
