tp @e[type=#build:snapshot_entities,x=0] 0 -1000 0
clear @a[x=0] #build:snapshot_items

execute as @e[type=boat,nbt={Type:"mangrove"},x=0] run kill
execute as @e[type=painting,x=0] unless entity @s[nbt=!{variant:"minecraft:earth"},nbt=!{variant:"minecraft:wind"},nbt=!{variant:"minecraft:fire"},nbt=!{variant:"minecraft:water"}] run kill
