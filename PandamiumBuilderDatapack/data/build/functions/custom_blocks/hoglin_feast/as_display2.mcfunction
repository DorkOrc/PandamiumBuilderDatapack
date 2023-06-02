tag @s add custom_block.hoglin_feast
tag @s add custom_block.display

data merge entity @s {CustomName:'{"text":"Dinnerbone"}',Silent:1b,NoAI:1b,IsImmuneToZombification:1b,CannotBeHunted:1b,Age:0,DeathTime:20s,Invulnerable:1b,Health:0.5f}

execute if entity @a[tag=source,limit=1,y_rotation=-45..44] run tp @s ~ ~ ~ 0 0
execute if entity @a[tag=source,limit=1,y_rotation=45..134] run tp @s ~ ~ ~ 90 0
execute if entity @a[tag=source,limit=1,y_rotation=135..-134] run tp @s ~ ~ ~ 180 0
execute if entity @a[tag=source,limit=1,y_rotation=-135..-45] run tp @s ~ ~ ~ -90 0

ride @s mount @e[type=item_display,tag=custom_block.base_new,limit=1,sort=nearest]
