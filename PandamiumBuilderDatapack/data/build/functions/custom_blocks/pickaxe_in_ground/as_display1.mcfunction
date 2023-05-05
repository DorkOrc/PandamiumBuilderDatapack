tag @s add custom_block.pickaxe_in_ground
tag @s add custom_block.display

item replace entity @s container.0 with iron_pickaxe
data merge entity @s {transformation:{left_rotation:{axis:[0f,0f,1f],angle:0.9948376736f}}}
execute rotated as @a[tag=source,limit=1] run tp @s ~ ~ ~ ~ 0

ride @s mount @e[type=item_display,tag=custom_block.base_new,limit=1,sort=nearest]
