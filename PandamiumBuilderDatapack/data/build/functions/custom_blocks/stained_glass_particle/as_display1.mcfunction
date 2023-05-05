tag @s add custom_block.stained_glass_particle
tag @s add custom_block.display

item replace entity @s container.0 from entity @a[tag=source,limit=1] weapon.offhand
data merge entity @s {transformation:{scale:[0.25f,0.25f,0.25f]}}
execute store result entity @s Rotation[0] float 1 run data get entity @s UUID[0]
execute store result entity @s Rotation[1] float 1 run data get entity @s UUID[1]

ride @s mount @e[type=item_display,tag=custom_block.base_new,limit=1,sort=nearest]
