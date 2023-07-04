tag @s add custom_block.community_chest
tag @s add custom_block.display

data modify entity @s CustomName set value '{"text":"Community Chest"}'

execute rotated as @a[tag=source,limit=1] run tp @s ~ ~ ~ ~90 0

ride @s mount @e[type=item_display,tag=custom_block.base_new,limit=1,sort=nearest]
